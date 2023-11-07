import 'package:customerappdart/view/product_screen.dart';
import 'package:customerappdart/view/productlistscreen.dart';
import 'package:customerappdart/view/slottimescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';

import '../view_model/auth_viewmodel.dart';
import 'bookslotscreen.dart';

class UpcomingServiceScreen extends StatefulWidget {
  UpcomingServiceScreen();

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _UpcomingService();
  }
}

class _UpcomingService extends State<UpcomingServiceScreen> {
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
    final authViewModel = Provider.of<AuthViewModel>(context);


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
        name: '1 year warranty termite control- Mumbai',
        imageUrl: 'images/splash.png',
        description: '2361818314',
        startdate: '28-09-2023',
        enddate: '11:00 AM - 01:00 PM',
        location: 'Test Lead COD Test COD,Text Lead COD,999999',
        amount: '\u{20B9} 5000',
        status: 'Reschedule',
      ),
      // Profile(
      //   name: 'Jane Smith',
      //   imageUrl: 'assets/profile2.jpg',
      //   description: 'Graphic Designer',
      //   age: 28,
      //   location: 'Los Angeles',
      // ),schedle
      // Add more profiles as needed
    ];

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        title: Text('My Upcoming Services',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.green),),
        // Column(
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   mainAxisSize: MainAxisSize.max,
        //   children: [
        //     Text(
        //       'My Upcoming Services',
        //       style: TextStyle(
        //         color: Colors.green,
        //         fontWeight: FontWeight.bold,
        //         fontSize: 18.0, // Ad
        //         // just the font size as needed
        //       ),
        //     ),
        //   ],
        // ),

      ),
      body: Container(
          margin: EdgeInsets.all(10),
          child: Container(
            child: Column(
              children: [
                Card(
                  elevation: 4, // Card shadow
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  margin: EdgeInsets.all(5.0),
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Container(
                      margin: EdgeInsets.fromLTRB(5, 0, 0,0),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                profiles[0].name,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold

                                ),
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,

                                        // Align grey text to the start

                                        children: [
                                          Text(
                                            'Order no',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          Text(
                                            'Service Date',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          Text(
                                            'Time',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 5),
                                      SizedBox(height: 5),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        // Align grey text to the start
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,

                                        children: [
                                          Text(
                                            ':' + profiles[0].description,
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                          Text(
                                            ':' + profiles[0].startdate,
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                          Text(
                                            ':' + profiles[0].enddate,
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 5),
                                      SizedBox(height: 5),
                                    ],
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      // Add your button click logic here
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.green, // Background color
                                    ),
                                    child: Text(
                                      'Reschedule',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 4, // Card shadow
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  margin: EdgeInsets.all(5.0),
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Container(
                      margin: EdgeInsets.fromLTRB(5, 0, 0,0),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                profiles[0].name,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.green,

                                ),
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,

                                        // Align grey text to the start

                                        children: [
                                          Text(
                                            'Order no',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          Text(
                                            'Service Date',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          Text(
                                            'Time',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 5),
                                      SizedBox(height: 5),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        // Align grey text to the start
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,

                                        children: [
                                          Text(
                                            ':' + profiles[0].description,
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                          Text(
                                            ':' + profiles[0].startdate,
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                          Text(
                                            ':' + profiles[0].enddate,
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 5),
                                      SizedBox(height: 5),
                                    ],
                                  ),
                                  TextButton(
                                    onPressed: () async{

                                      // {"ServiceCenter_Id":"a1u10000004GlpUAAS","SlotDate":"2023-10-25","TaskId":"a232x000003AhifAAC","ServiceType":"Pest","Long":"72.92474","SkillId":"a1x10000008ocyEAAQ","Lat":"19.108508"}
                                      Map<String, String> data = {
                                        'ServiceCenter_Id':'a1u10000004GlpUAAS' ,
                                        'SlotDate':'2023-10-25' ,
                                        'TaskId':'a232x000003AhifAAC' ,
                                        'ServiceType':'Pest' ,
                                        'Long':'72.92474',
                                        'SkillId':'a1x10000008ocyEAAQ',
                                        'Lat':'19.108508',

                                      };
                                      authViewModel.getSlot(data,context);

                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //     // builder: (context) => OTPScreen(value.data.toString()),
                                      //
                                      //
                                      //
                                      //     builder: (context) => ProductScreen(),
                                      //   ),
                                      // );
                                      // Add your button click logic here
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.green, // Background color
                                    ),
                                    child: Text(
                                      'Reschedule',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
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
