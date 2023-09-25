import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../view_model/auth_viewmodel.dart';

class CreatecomplaintScreen extends StatefulWidget {
  CreatecomplaintScreen();

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Createcomplaint();
  }
}

class _Createcomplaint extends State<CreatecomplaintScreen> {
  List<String> items = [
    'Automos one refill 1',
    'Automos one refill  2',
    'Automos one refill  3',
    'Automos one refill 4',
    'Automos one refill  5',
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    String dropdownvalue = 'Complaint type';

    // List of items in our dropdown menu
    var items = [
      'Complaint type',
      'Service not scheduled',
      'Damage',
      'Inspection Not Done',
      'Service Due',
    ];
    final List<Profile> profiles = [
      Profile(
        name: 'Rodex 24 Services Fortnightly 1 Yr R....',
        imageUrl: 'images/splash.png',
        description: '2361818314',
        startdate: '30-01-2023',
        enddate: '02-02-2023',
        location: 'Test Lead COD Test COD,Text Lead COD,999999',
        amount: '\u{20B9} 5000',
        status: 'Cancelled',
      ),
      // Profile(
      //   name: 'Jane Smith',
      //   imageUrl: 'assets/profile2.jpg',
      //   description: 'Graphic Designer',
      //   age: 28,
      //   location: 'Los Angeles',
      // ),
      // Add more profiles as needed
    ];

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Create complaint',
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontSize: 18.0, // Adjust the font size as needed
              ),
            ),
            Text(
              profiles[0].description,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14.0, // Adjust the font size as needed
              ),
            ),
          ],
        ),
      ),
      body: Container(
          margin: EdgeInsets.all(10),
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Complaint Type',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(
                      color: Colors.green,
                      width: 2.0,
                    ),
                  ),
                  width: double.infinity,
                  child: DropdownButton(
                    // Initial Value
                    value: dropdownvalue,

                    // Down Arrow Icon
                    icon: Icon(Icons.keyboard_arrow_down),
                    alignment: Alignment.centerRight,
                    underline: Container(),
                    // Array list of items
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(
                          items,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                        ),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Complaint Subject',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Container(
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: TextFormField(
                      keyboardType: TextInputType.text,
                      maxLength: 255,
                      decoration: InputDecoration(
                          hintText: 'Enter complaint subject here',
                          errorStyle: TextStyle(fontSize: 18.0),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.green),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(9.0))))),
                ),
                SizedBox(height: 8),
                Text(
                  'Description',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Container(
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: TextFormField(
                      keyboardType: TextInputType.text,
                      maxLength: 255,
                      maxLines: 5,
                      decoration: InputDecoration(
                          hintText: 'Enter complaint description here',
                          errorStyle: TextStyle(fontSize: 18.0),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.green),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(9.0))))),
                ),
                Text(
                  'Upload Images(Optional)',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Container(
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(9.0)),
                        border: Border.all(
                          color: Colors.green,
                          width: 2.0,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildImageBox('assets/image1.jpg', Icons.camera),
                          _buildImageBox('assets/image2.jpg', Icons.camera),
                          _buildImageBox('assets/image3.jpg', Icons.camera),
                          _buildImageBox('assets/image4.jpg', Icons.camera),
                          _buildImageBox('assets/image5.jpg', Icons.camera),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 4),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Add your button click action here
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green, // Button color
                          onPrimary: Colors.white, //

                          // Text color
                        ),
                        child: Text(
                          'Submit',
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),

      // bottomNavigationBar: BottomAppBar(
      //   color: Colors.white,
      //   child:Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       Padding(
      //         padding: const EdgeInsets.all(16.0),
      //         child: Text(
      //           '\u{20B9}1000', // Replace with your price value
      //           style: TextStyle(
      //             color: Colors.red, // Set the text color
      //             fontSize: 18.0, // Set the font size
      //           ),
      //         ),
      //       ),
      //       Container(
      //         width: 180,
      //         color: Color.fromARGB(255, 43, 183, 122),
      //         child: TextButton(onPressed: () {},
      //             child: Text('Place Order',style: TextStyle(color: Colors.white),)),
      //       )
      //       // IconButton(
      //       //   icon: Icon(Icons.shopping_cart),
      //       //   onPressed: () {
      //       //     // Handle cart button click
      //       //   },
      //       //   color: Colors.white, // Set the icon color
      //       // ),
      //     ],
      //   ),
      // ),
    );
  }
}

Widget _buildImageBox(String imagePath, IconData iconData) {
  return Container(
    margin: EdgeInsets.all(5.0),
    width: 55,
    height: 55,
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.green,
        width: 2.0,
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 25.0,
          color: Colors.green,
        ),
        SizedBox(height: 8.0),
        Image.asset(
          imagePath,
          width: 25.0,
          height: 25.0,
          fit: BoxFit.cover,
        ),
      ],
    ),
  );
}
