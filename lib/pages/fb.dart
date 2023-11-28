import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:logger/logger.dart';

class FeedbackForm extends StatefulWidget {
  const FeedbackForm({Key? key}) : super(key: key);

  @override
  FeedbackFormState createState() => FeedbackFormState();
}

class FeedbackFormState extends State<FeedbackForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final CollectionReference feedbackCollection =
      FirebaseFirestore.instance.collection('feedback');

  String selectedCategory = '';
  double selectedSmileyRating = 0;
  String selectedWasteManagementPoint = '';
  String selectedWastePointCategory = '';

  final Logger logger = Logger();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feedback'),
        backgroundColor: const Color(0xFF510400),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Select Feedback Category',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildCategoryTile('Regarding App'),
                  buildCategoryTile('Regarding Service'),
                  buildCategoryTile('Regarding Waste Point'),
                ],
              ),
              const SizedBox(height: 20),
              if (selectedCategory == 'Regarding App')
                buildAppFeedbackForm()
              else if (selectedCategory == 'Regarding Service')
                buildServiceFeedbackForm()
              else if (selectedCategory == 'Regarding Waste Point')
                buildWastePointFeedbackForm(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCategoryTile(String categoryName) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCategory = categoryName;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: selectedCategory == categoryName
              ? const Color(0xFF510400)
              : Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          categoryName,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget buildAppFeedbackForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Rate the App',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        RatingBar.builder(
          initialRating: selectedSmileyRating,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, _) => const Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {
            setState(() {
              selectedSmileyRating = rating;
            });
          },
        ),
        TextFormField(
          decoration: const InputDecoration(labelText: 'Comments'),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your comments';
            }
            return null;
          },
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () async {
            if (_formKey.currentState?.validate() ?? false) {
              _formKey.currentState?.save();
              await submitFeedback();
            }
          },
          child: const Text('Submit'),
        ),
      ],
    );
  }

  Widget buildServiceFeedbackForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Rate the Service',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(5, (index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedSmileyRating = index + 1.0;
                });
              },
              child: Icon(
                Icons.sentiment_satisfied,
                size: 50,
                color: selectedSmileyRating >= index + 1.0
                    ? Colors.amber
                    : Colors.grey,
              ),
            );
          }),
        ),
        TextFormField(
          decoration: const InputDecoration(labelText: 'Comments'),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your comments';
            }
            return null;
          },
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () async {
            if (_formKey.currentState?.validate() ?? false) {
              _formKey.currentState?.save();
              await submitFeedback();
            }
          },
          child: const Text('Submit'),
        ),
      ],
    );
  }

  Widget buildWastePointFeedbackForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Select Waste Management Point',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        TypeAheadFormField<String>(
          textFieldConfiguration: const TextFieldConfiguration(
            decoration: InputDecoration(labelText: 'Search Waste Points'),
          ),
          suggestionsCallback: (pattern) async {
            // Implement your logic to fetch and filter waste management points
            return ["Waste Point 1", "Waste Point 2", "Waste Point 3"];
          },
          itemBuilder: (context, suggestion) {
            return ListTile(
              title: Text(suggestion),
            );
          },
          onSuggestionSelected: (suggestion) {
            setState(() {
              selectedWasteManagementPoint = suggestion;
            });
          },
        ),
        if (selectedWasteManagementPoint.isNotEmpty)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const Text(
                'Select Feedback Category',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildWastePointCategoryTile('Suggestions'),
                  buildWastePointCategoryTile('Compliment'),
                  buildWastePointCategoryTile('Something is not quite right'),
                ],
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Comments'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your comments';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState?.validate() ?? false) {
                    _formKey.currentState?.save();
                    await submitFeedback();
                  }
                },
                child: const Text('Submit'),
              ),
            ],
          ),
      ],
    );
  }

  Widget buildWastePointCategoryTile(String categoryName) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedWastePointCategory = categoryName;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: selectedWastePointCategory == categoryName
              ? const Color(0xFF510400)
              : Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          categoryName,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Future<void> submitFeedback() async {
    if (selectedWasteManagementPoint.isNotEmpty &&
        selectedWastePointCategory.isNotEmpty) {
      try {
        await feedbackCollection.add({
          'category': selectedCategory,
          'smileyRating': selectedSmileyRating,
          'wasteManagementPoint': selectedWasteManagementPoint,
          'wastePointCategory': selectedWastePointCategory,
          'timestamp': FieldValue.serverTimestamp(),
        });

        logger.d('Feedback submitted');
        WidgetsBinding.instance.addPostFrameCallback((_) {
          showFeedbackConfirmationDialog(context);
        });
      } catch (e) {
        logger.e('Error submitting feedback: $e');
      }
    } else {
      logger
          .w('Waste management point or waste point category is not selected');
    }
  }

  void showFeedbackConfirmationDialog(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showDialog(
        context: context,
        builder: (BuildContext dialogContext) {
          return AlertDialog(
            title: const Text('Feedback Submitted'),
            content: const Text('Thank you for your feedback!'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(dialogContext).pop(); // Use dialogContext here
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    });
  }
}
