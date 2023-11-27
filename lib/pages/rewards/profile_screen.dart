import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "HOME",
          style: TextStyle(
              fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Color(0xff980f0f),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(18.0),
          child: Column(
            children: [
              const ListTile(
                leading: CircleAvatar(
                  radius: 40.0,
                  backgroundImage: NetworkImage(
                    'https://img.freepik.com/free-photo/pretty-smiling-joyfully-female-with-fair-hair-dressed-casually-looking-with-satisfaction_176420-15187.jpg?size=626&ext=jpg&ga=GA1.1.1306130765.1695367793&semt=sph',
                    // Replace the URL with the actual URL of your sample profile image
                  ),
                ),
                title: Text(
                  'Welcome Back Thilini', // Replace with the user's name
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Recycler', // Replace with the user's name
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Icon(Icons.pin_drop),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Colombo, Sri Lanka', // Replace with the user's name
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 30,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      '5', // Replace with the user's name
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      ' Points', // Replace with the user's name
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(
                          width: 200,
                          height: 200,
                          child: CircularProgressIndicator(
                            value: 0.60, // 45% progress
                            valueColor: const AlwaysStoppedAnimation<Color>(
                                Color(0xff980f0f)),
                            backgroundColor: Colors.grey.withOpacity(0.5),
                            strokeWidth: 20.0,
                          ),
                        ),
                        // Icon in the middle
                        const Icon(
                          Icons.delete_outline_rounded,
                          size: 60.0,
                          color: Colors.green,
                        ),
                      ],
                    ),
                    const SizedBox(height: 45.0),
                    const Text(
                      '5 points till next level', // Display progress percentage
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
