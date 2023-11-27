import 'package:flutter/material.dart';
//import 'package:my_first_app/pages/home_page.dart';
import 'bin_list.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
//import 'binStatus.dart';
//import 'globals.dart' as globals;

//import 'package:flutter/material.dart';
//import 'package:your_app/main.dart'; // Import your page files.

//void main() {
//  runApp(MaterialApp(
//   home: HomePage(),
//  ));
//}

/* void main() {
  runApp(MyApp());
} */

const List<String> list = <String>[
  'Select Bin Location',
  'Kelaniya',
  'Kiribathgoda',
  'Kadawatha',
  'Paliyagoda'
];

//String globalVariable = "Hello, I'm global!";
//int personAge = 25;

class binStatus extends StatefulWidget {
  @override
  State createState() => _MyStatefulWidgeState();
}

class _MyStatefulWidgeState extends State<binStatus> {
  @override
  Widget build(BuildContext context) {
    //define variables
    double myDoubleBin1;
    double myDoubleBin2;
    double myDoubleBin3;
    double myDoubleBin4;

    myDoubleBin1 = 80;
    myDoubleBin2 = 50;
    myDoubleBin3 = 25;
    myDoubleBin4 = 60;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
              backgroundColor: Color.fromARGB(255, 99, 8, 2),
              centerTitle: true,
              title: Text(
                "Bin Details",
                style: TextStyle(fontFamily: 'Nunito+Sans', fontSize: 18),
              ),
              leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
              actions: <Widget>[
                IconButton(icon: Icon(Icons.search), onPressed: () {}),
                IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
              ]),

          bottomNavigationBar: Container(
            color: Colors.white,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
              child: GNav(
                  backgroundColor: Color.fromARGB(255, 128, 0, 0),
                  activeColor: Colors.white,
                  tabBackgroundColor: Color.fromARGB(255, 202, 117, 117),
                  gap: 8,
                  padding: EdgeInsets.all(5.0),
                  tabs: [
                    GButton(
                      icon: Icons.home,
                      text: "Home",
                      textColor: Color.fromARGB(255, 128, 0, 0),
                      iconColor: Colors.white,
                    ),
                    GButton(
                      icon: Icons.message,
                      text: "Message",
                      textColor: Color.fromARGB(255, 128, 0, 0),
                      iconColor: Colors.white,
                    ),
                    GButton(
                      icon: Icons.search,
                      text: "Search",
                      textColor: Color.fromARGB(255, 128, 0, 0),
                      iconColor: Colors.white,
                    ),
                    GButton(
                      icon: Icons.settings,
                      text: "Settings",
                      textColor: Color.fromARGB(255, 128, 0, 0),
                      iconColor: Colors.white,
                    ),
                    GButton(
                      icon: Icons.notifications,
                      text: "Notify",
                      textColor: Color.fromARGB(255, 128, 0, 0),
                      iconColor: Colors.white,
                    ),
                  ]),
            ),
          ),

          backgroundColor: Color.fromARGB(255, 99, 8, 2),
          body: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 10,
                // width: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 99, 8, 2),
                    borderRadius: BorderRadius.circular(5)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    //
                    //
                    // width: 250,
                    //width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 190, 190),
                        borderRadius: BorderRadius.circular(5)
                        // Alignment(Center),
                        ),

                    // =============================
                    //DROP DOWN Button
                    // child: Text('Dropdown Button - LOCATION')
                    //   child: Padding(
                    //    padding: EdgeInsets.only(left: 50, right: 50),
                    child: DropdownMenuExample(),
                    //  ),

                    //==============================

                    // child: DropdownButton<String>(
                    //child:text("Location")),
                  ),
                  Container(
                      height: 40,
                      width: 125,
                      // width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(5)),
                      child: ElevatedButton(
                          onPressed: () {
                            // Navigate to the second page
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => binlist()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(50, 20),
                              backgroundColor:
                                  Color.fromARGB(255, 196, 122, 11)),
                          child: Text("View Bin List"))),
                ],
              ),
              Container(
                  height: 25,
                  //width: 400,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 99, 8, 2),
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    'Selected Bin Filling Status',
                    style: TextStyle(
                        fontFamily: 'Nunito+Sans',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 248, 247, 247)),
                  ),
                  alignment: Alignment.center),

              Row(
                children: [
                  Container(
                      //child: Text("Check Status"),
                      // child: Text(
                      //  '${percentage.toStringAsFixed(0)}%',),
                      ),
                ],
              ),

              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  //=== BIN 1=======

                  PercentageFillContainer(
                    percentage: myDoubleBin1,

                    // percentage: (80), // Change this percentage as needed
                    containerWidth: 90, // Change the width of the container
                    containerHeight: 200, // Change the height of the container
                    fillColor: Color.fromARGB(255, 4, 70, 50),

                    // Change the color of the fill
                  ),
                  Container(width: 5),
                  //=======BIN 2 ==============
                  PercentageFillContainer(
                    percentage: myDoubleBin2,
                    //percentage: (50), // Change this percentage as needed
                    containerWidth: 90, // Change the width of the container
                    containerHeight: 200, // Change the height of the container
                    fillColor: Color.fromRGBO(209, 195, 2, 1),
                    // Change the color of the fill
                  ),
                  Container(width: 5),
                  //=========== BIN 3 ===============
                  PercentageFillContainer(
                    percentage: myDoubleBin3,
                    //percentage: (40), // Change this percentage as needed
                    containerWidth: 90, // Change the width of the container
                    containerHeight: 200, // Change the height of the container
                    fillColor: Color.fromARGB(
                        255, 182, 26, 6), // Change the color of the fill
                  ),
                  Container(width: 5),
                  //=========== BIN 4 =================
                  PercentageFillContainer(
                    percentage: myDoubleBin4,
                    //percentage: (100), // Change this percentage as needed
                    containerWidth: 90, // Change the width of the container
                    containerHeight: 200, // Change the height of the container
                    fillColor: Color.fromARGB(
                        255, 0, 29, 156), // Change the color of the fill
                  ),
                ],
              ),

              //     children: [
              //       Container(
              //        width: 90,
              //        height: 200,
              //        decoration: BoxDecoration(
              //          color: Color.fromARGB(255, 255, 255, 255),
              //           borderRadius: BorderRadius.circular(5),
              //          border: Border.all(
              //            width: 4.0,
              //            color: Colors.black,
              //          ),
              //       ),
              //     ),
/*               Container(
                width: 90,
                height: 200,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    width: 4.0,
                    color: Colors.black,
                  ),
                ),
              ), */
              /*          Container(
                width: 90,
                height: 200,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 240, 240, 238),
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    width: 4.0,
                    color: Colors.black,
                  ),
                ),
              ), */
              /*          Container(
                width: 90,
                height: 200,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 254, 255, 254),
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    width: 4.0,
                    color: Colors.black,
                  ),
                ),
            ) */

              Container(
                width: 90,
                height: 5,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 95, 4, 4),
                  // borderRadius: BorderRadius.circular(5),
                  //  border: Border.all(
                  //    width: 4.0,
                  //   color: Colors.black,
                  //  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 90,
                    height: 25,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 4, 70, 50),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      'Organic',
                      style: TextStyle(
                          fontFamily: 'Nunito+Sans',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    alignment: Alignment.center,
                  ),
                  Container(width: 5),
                  Container(
                    width: 90,
                    height: 25,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(209, 195, 2, 1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      'Bin 02',
                      style: TextStyle(
                          fontFamily: 'Nunito+Sans',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    alignment: Alignment.center,
                  ),
                  Container(width: 5),
                  Container(
                    width: 90,
                    height: 25,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 182, 26, 6),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      'Bin 03',
                      style: TextStyle(
                          fontFamily: 'Nunito+Sans',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    alignment: Alignment.center,
                  ),
                  Container(width: 5),
                  Container(
                    width: 90,
                    height: 25,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 3, 34, 170),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      'Bin 04',
                      style: TextStyle(
                          fontFamily: 'Nunito+Sans',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    alignment: Alignment.center,
                  ),
                ],
              ),

              Container(
                  height: 40,
                  //        //width: 400,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 99, 8, 2),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    'Selected Bin Location Map',
                    style: TextStyle(
                        fontFamily: 'Nunito+Sans',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  alignment: Alignment.bottomCenter),

              Container(
                  height: 250,
                  //width: 700,
                  width: double.infinity,
                  //height: double.infinity,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 99, 8, 2),
                      borderRadius: BorderRadius.circular(5)),
                  child: Image(
                    image: AssetImage(
                      'assets/Map.jpg',
                    ),
                  )),
            ],
          ),

/*                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: 90,
                        height: 25,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 5, 102, 55),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          'Bin 01',
                          style: TextStyle(
                              fontFamily: 'Nunito+Sans',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        alignment: Alignment.center),
                
                    Container(
                        width: 90,
                        height: 25,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(253, 241, 75, 1),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          'Bin 02',
                          style: TextStyle(
                              fontFamily: 'Nunito+Sans',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        alignment: Alignment.center),
                    Container(
                        width: 90,
                        height: 25,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 146, 2, 2),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          'BIN 03',
                          style: TextStyle(
                              fontFamily: 'Nunito+Sans',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        alignment: Alignment.center),
                    Container(
                        width: 90,
                        height: 25,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 1, 33, 119),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          'BIN 04',
                          style: TextStyle(
                              fontFamily: 'Nunito+Sans',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        alignment: Alignment.center)
                  ],
                ),
*/

/*                Container(
                    height: 25,
                    //        //width: 400,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 99, 8, 2),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      'Bin Location Map',
                      style: TextStyle(
                          fontFamily: 'Nunito+Sans',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    alignment: Alignment.center),

*/
/*
                Container(
                    height: 250,
                    //width: 700,
                    width: double.infinity,
                    //height: double.infinity,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 99, 8, 2),
                        borderRadius: BorderRadius.circular(5)),
                    child: Image(
                      image: AssetImage(
                        'assets/Map.jpg',
                      ),
                    )),

*/
          //      Container(
          //        height: 25,
          //        //width: 400,
          //       width: double.infinity,
          //       decoration: BoxDecoration(
          //           color: Color.fromARGB(255, 247, 244, 244),
          //           borderRadius: BorderRadius.circular(5)),
          //     ),
          //     Container(
          //       height: 25,
          //      //width: 400,
          //      width: double.infinity,

          //     decoration: BoxDecoration(
          //         color: Color.fromARGB(255, 255, 255, 255),
          //         borderRadius: BorderRadius.circular(5)),
          //   )
        ),
      ),
    );
  }
}

//================ Drop downmenu =================
class DropdownMenuExample extends StatefulWidget {
  const DropdownMenuExample({super.key});

  @override
  State<DropdownMenuExample> createState() => _DropdownMenuExampleState();
}

class _DropdownMenuExampleState extends State<DropdownMenuExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      initialSelection: list.first,
      onSelected: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      dropdownMenuEntries: list.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(value: value, label: value);
      }).toList(),
    );
  }
}

//=============================
//Presentage filling container
//================================

class PercentageFillContainer extends StatelessWidget {
  final double percentage;
  final double containerWidth;
  final double containerHeight;
  final Color fillColor;

  PercentageFillContainer({
    required this.percentage,
    required this.containerWidth,
    required this.containerHeight,
    required this.fillColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: containerWidth,
      //width: 90,
      height: containerHeight,
      child: Column(
        children: [
          Container(
            // child: Text(
            //  '${percentage.toStringAsFixed(0)}%',), //
            color: Color.fromARGB(0, 235, 235, 235), // Background color
            height: (100 - percentage) / 100 * containerHeight,
            //decoration: BoxDecoration(
            /*      color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    width: 4.0,
                    color: Colors.black,
                  ), */
            //    ),
            //  child: Text('${percentage.toStringAsFixed(0)}%',),
          ),
          Container(
            width: 90,
            color: fillColor, // Color to fill the percentage
            height: (percentage) / 100 * containerHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${percentage.toStringAsFixed(0)}%', // Display the percentage value
                  style: TextStyle(
                    color: Color.fromRGBO(253, 253, 253, 1),
                  ),
                ),
              ],
            ),
            //  child: Text(
            // '${percentage.toStringAsFixed(0)}%', // Display the percentage value
            // style: TextStyle(
            //   color: Colors.white,
            //  ),
            // ),
          ),
        ],
      ),
    );
  }
}
