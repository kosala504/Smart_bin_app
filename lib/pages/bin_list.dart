import 'package:flutter/material.dart';

class binlist extends StatelessWidget {
  double iconSize = 40;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bin List'),
        backgroundColor: Color.fromARGB(255, 99, 8, 2),
        centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(255, 99, 8, 2),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(5),
              color: Colors.white,
              child: Table(
                border: TableBorder.all(),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  TableRow(
                    children: [
                      TableCell(
                        child: Container(
                          color: Color.fromARGB(
                              255, 253, 176, 176), // Set the cell color
                          child: Column(
                            children: [
                              Icon(
                                Icons.location_on_sharp,
                                size: iconSize,
                              ),
                              Text('Bin Location'),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          color: Colors.green, // Set the cell color
                          child: Column(
                            children: [
                              Icon(
                                Icons.delete,
                                size: iconSize,
                              ),
                              Text('Organic'),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          color: Colors.yellow, // Set the cell color
                          child: Column(
                            children: [
                              Icon(
                                Icons.delete,
                                size: iconSize,
                              ),
                              Text('Papers'),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          color: Colors.red, // Set the cell color
                          child: Column(
                            children: [
                              Icon(
                                Icons.delete,
                                size: iconSize,
                              ),
                              Text('Plastic'),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          color: Colors.blue, // Set the cell color
                          child: Column(
                            children: [
                              Icon(
                                Icons.delete,
                                size: iconSize,
                              ),
                              Text('Glass'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  // 2nd Row
                  TableRow(
                    children: [
                      TableCell(
                        child: Container(
                          height: 30.0,
                          color: Color.fromARGB(
                              255, 253, 176, 176), // Set the cell color
                          child: Text('Kelaniya', textAlign: TextAlign.center),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          color: Colors.white, // Set the cell color
                          child: Text('20 %', textAlign: TextAlign.center),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          color: Colors.white, // Set the cell color
                          child: Text('50 %', textAlign: TextAlign.center),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          color: Colors.white, // Set the cell color
                          child: Text('40 %', textAlign: TextAlign.center),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          color: Colors.white, // Set the cell color
                          child: Text('60 %', textAlign: TextAlign.center),
                        ),
                      ),
                    ],
                  ),
                  // 3rd Row
                  TableRow(
                    children: [
                      TableCell(
                        child: Container(
                          height: 30.0,
                          color: Color.fromARGB(
                              255, 253, 176, 176), // Set the cell color
                          child:
                              Text('Kiribatgoda', textAlign: TextAlign.center),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          color: Colors.white, // Set the cell color
                          child: Text('80 %', textAlign: TextAlign.center),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          color: Colors.white, // Set the cell color
                          child: Text('50 %', textAlign: TextAlign.center),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          color: Colors.white, // Set the cell color
                          child: Text('40 %', textAlign: TextAlign.center),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          color: Colors.white, // Set the cell color
                          child: Text('20 %', textAlign: TextAlign.center),
                        ),
                      ),
                    ],
                  ),
                  // 4th Row
                  TableRow(
                    children: [
                      TableCell(
                        child: Container(
                          height: 30.0,
                          color: Color.fromARGB(
                              255, 253, 176, 176), // Set the cell color
                          child: Text('Kadawatha', textAlign: TextAlign.center),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          color: Colors.white, // Set the cell color
                          child: Text('90 %', textAlign: TextAlign.center),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          color: Colors.white, // Set the cell color
                          child: Text('50 %', textAlign: TextAlign.center),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          color: Colors.white, // Set the cell color
                          child: Text('30 %', textAlign: TextAlign.center),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          color: Colors.white, // Set the cell color
                          child: Text('10 %', textAlign: TextAlign.center),
                        ),
                      ),
                    ],
                  ),
                  // 5th Row
                  TableRow(
                    children: [
                      TableCell(
                        child: Container(
                          height: 30.0,
                          color: Color.fromARGB(
                              255, 253, 176, 176), // Set the cell color
                          child:
                              Text('Paliyagoda', textAlign: TextAlign.center),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          //  height: 30.0,
                          color: Colors.white, // Set the cell color
                          child: Text('95 %', textAlign: TextAlign.center),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          //height: 30.0,
                          color: Colors.white, // Set the cell color
                          child: Text('85 %', textAlign: TextAlign.center),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          color: Colors.white, // Set the cell color
                          child: Text('40 %', textAlign: TextAlign.center),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          // height: 30.0,
                          color: Colors.white, // Set the cell color
                          child: Text('30 %', textAlign: TextAlign.center),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
