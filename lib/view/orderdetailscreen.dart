import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../view_model/auth_viewmodel.dart';

class OrderDetailScreen extends StatefulWidget {
  OrderDetailScreen();

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _OrderScreen();
  }
}

class _OrderScreen extends State<OrderDetailScreen> {
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
              'Order Details',
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
      body: Center(
        child: Column(
          children: [
            Container(
              // margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: Column(
                children: [
                  // Expanded(
                  //   child:
                  Container(
                    margin: EdgeInsets.all(10.0),
                    child: Card(
                      elevation: 4.0,
                      child: Container(
                        margin: EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    profiles[0].status,
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                        backgroundColor:
                                            Color.fromARGB(245, 245, 245, 245),
                                        color: Colors.black,
                                        // Grey color for heading text
                                        fontSize: 12.0,
                                        fontWeight: FontWeight
                                            .bold // Adjust the font size as needed
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    profiles[0].name,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: Colors.black,
                                        // Grey color for heading text
                                        fontSize: 14.0,
                                        fontWeight: FontWeight
                                            .bold // Adjust the font size as needed
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  profiles[0].imageUrl,
                                  width: 45, // Set the width of the image
                                  height: 45, // Set the height of the image
                                ),
                                SizedBox(width: 8.0),
                                SizedBox(height: 8.0),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Order No: ',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            // Grey color for heading text
                                            fontSize:
                                                12.0, // Adjust the font size as needed
                                          ),
                                        ),
                                        SizedBox(width: 8.0),
                                        Text(
                                          '${profiles[0].description}',
                                          style: TextStyle(
                                            color: Colors.black,
                                            // Grey color for heading text
                                            fontSize:
                                                12.0, // Adjust the font size as needed
                                          ),
                                        ),
                                      ],
                                    ),

                                    // Heading Text

                                    // Spacer to create space between texts
                                    SizedBox(height: 8.0),
                                    // Adjust the height for the desired space

                                    // Details Text
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Ordered On: ',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize:
                                                12.0, // Adjust the font size as needed
                                          ),
                                        ),
                                        SizedBox(width: 8.0),
                                        Text(
                                          '${profiles[0].startdate}',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize:
                                                12.0, // Adjust the font size as needed
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 8.0),
                            Container(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      // Heading Text
                                      Text(
                                        'Address:',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          // Grey color for heading text
                                          fontSize:
                                              12.0, // Adjust the font size as needed
                                        ),
                                      ),

                                      // Spacer to create space between texts
                                      SizedBox(height: 2.0),
                                      // Adjust the height for the desired space

                                      // Details Text
                                      Text(
                                        profiles[0].location,
                                        style: TextStyle(
                                          fontSize:
                                              14.0, // Adjust the font size as needed
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
                    ),
                  ),
                  //   },
                  // ),
                  // ),

                  // Container(
                  //   height: 30,
                  //   color: Color.fromARGB(255, 43, 183, 122),
                  //   // Set the text color
                  //   width: double.infinity,
                  //   // Make the Container match the parent's width
                  //   child: Center(
                  //     child: Text(
                  //       'Deliver to pincode 400078',
                  //       style: TextStyle(color: Colors.white // Set the text color
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  SizedBox(height: 5),
                  // Container(
                  //       child: Wrap(
                  //         children: [
                  //           Text('Deliver to Pinode 400080',
                  //               style: TextStyle(
                  //                   backgroundColor: Color.fromARGB(255, 43, 183, 55),
                  //                   color: Colors.white)),
                  //         ],
                  //       ),
                  // ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                    child: Card(
                      elevation: 5,
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text('Service Details',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500)),
                            SizedBox(height: 8),
                            Divider(height: 2, color: Colors.grey),
                            SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Service Period',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  '12 months',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Start Date',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  '21-06-2023',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'End Date',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  '19-06-2024',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            SizedBox(height: 8),
                            // Divider(height: 2, color: Colors.black),
                            // SizedBox(height: 8),
                            // Row(
                            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //   children: [
                            //     Text(
                            //       'Total Amount',
                            //       style: TextStyle(color: Colors.red),
                            //     ),
                            //     Text('Price', style: TextStyle(color: Colors.red))
                            //   ],
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                    child: Card(
                      elevation: 5,
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text('Payment Details',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500)),
                            SizedBox(height: 8),
                            Divider(height: 2, color: Colors.grey),
                            SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Price',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  '\u{20B9}${'5000'}',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Discount',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  '-' + '\u{20B9}${'0'}',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal),
                                )
                              ],
                            ),
                            Divider(height: 2, color: Colors.grey),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Amount Paid',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  '\u{20B9}${'5000'}',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            SizedBox(height: 8),
                            // Divider(height: 2, color: Colors.black),
                            // SizedBox(height: 8),
                            // Row(
                            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //   children: [
                            //     Text(
                            //       'Total Amount',
                            //       style: TextStyle(color: Colors.red),
                            //     ),
                            //     Text('Price', style: TextStyle(color: Colors.red))
                            //   ],
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 120.0,
                    child: TextButton(
                      style: ButtonStyle(
                        alignment: Alignment.center,
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green),
                      ),
                      onPressed: () {},
                      child: Stack(
                        children: [
                          Center(
                            child: Text(
                              "Need Help?",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                  // Expanded(
                  //     child: ListView.builder(
                  //       itemCount: items.length,
                  //       itemBuilder: (BuildContext context, int index) {
                  //         return Container(
                  //           margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                  //           child: Card(
                  //             child: Column(
                  //               children: [
                  //                 Row(
                  //                   children: [
                  //                     Column(
                  //                       crossAxisAlignment: CrossAxisAlignment.start,
                  //                       mainAxisSize: MainAxisSize.max,
                  //                       mainAxisAlignment: MainAxisAlignment.start,
                  //                       children: [
                  //                         SizedBox(height: 5),
                  //                         Container(
                  //                             margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  //                             child: Image.asset(
                  //                               'images/splash.png',
                  //                               height: 140,
                  //                               width: 120,
                  //                             )),
                  //                       ],
                  //                     ),
                  //                     SizedBox(height: 10),
                  //                     Container(
                  //                       margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  //                       child: Column(
                  //                         crossAxisAlignment: CrossAxisAlignment.start,
                  //                         mainAxisSize: MainAxisSize.max,
                  //                         mainAxisAlignment: MainAxisAlignment.start,
                  //                         children: [
                  //                           Container(
                  //                             margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  //                             child: Text(items[index],
                  //                                 maxLines: 3,
                  //                                 overflow: TextOverflow.visible,
                  //                                 style: TextStyle(
                  //                                     color: Colors.black,
                  //                                     fontSize: 14,
                  //                                     fontWeight: FontWeight.w500)),
                  //                           ),
                  //                           SizedBox(height: 3),
                  //                           Container(
                  //                             margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  //                             child: Row(
                  //                               children: [
                  //                                 Text('4.8',
                  //                                     style: TextStyle(
                  //                                         color: Colors.black,
                  //                                         fontSize: 12)),
                  //                                 SizedBox(width: 3),
                  //                                 RatingBar.builder(
                  //                                   wrapAlignment: WrapAlignment.start,
                  //                                   initialRating: 1,
                  //                                   minRating: 1,
                  //                                   direction: Axis.horizontal,
                  //                                   allowHalfRating: true,
                  //                                   itemCount: 5,
                  //                                   // Adjust the size of the icons as needed
                  //                                   itemSize: 14.0,
                  //                                   // itemPadding: EdgeInsets.symmetric(
                  //                                   //     horizontal: 4.0),
                  //                                   itemBuilder: (context, _) => Center(
                  //                                     child: Icon(
                  //                                       Icons.star,
                  //                                       color: Colors.amber,
                  //                                       size: 14.0,
                  //                                     ),
                  //                                   ),
                  //                                   onRatingUpdate: (rating) {
                  //                                     print(rating);
                  //                                   },
                  //                                 ),
                  //                               ],
                  //                             ),
                  //                           ),
                  //                           SizedBox(height: 3),
                  //                           Container(
                  //                               width: 75,
                  //                               color: Colors.red,
                  //                               child: Padding(
                  //                                 padding: const EdgeInsets.all(8),
                  //                                 child: Text('Save 500',
                  //                                     style: TextStyle(
                  //                                         color: Colors.black,
                  //                                         backgroundColor: Colors.red,
                  //                                         fontSize: 14)),
                  //                               )),
                  //                           SizedBox(height: 3),
                  //                           Row(
                  //                             children: [
                  //                               Text('\u{20B9}',
                  //                                   style: TextStyle(
                  //                                       color: Colors.black,
                  //                                       fontSize: 13)),
                  //                               Text('500',
                  //                                   style: TextStyle(
                  //                                     color: Colors.black,
                  //                                     fontSize: 18,
                  //                                   )),
                  //                               SizedBox(width: 10),
                  //                               Text('\u{20B9}',
                  //                                   style: TextStyle(
                  //                                       color: Colors.grey,
                  //                                       fontSize: 14,
                  //                                       decoration:
                  //                                       TextDecoration.lineThrough)),
                  //                               Text('500',
                  //                                   style: TextStyle(
                  //                                       color: Colors.grey,
                  //                                       fontSize: 14,
                  //                                       decoration:
                  //                                       TextDecoration.lineThrough)),
                  //                             ],
                  //                           ),
                  //
                  //                           SizedBox(height: 3),
                  //                           Row(
                  //                             children: [
                  //                               Text('Get it in',
                  //                                   style: TextStyle(
                  //                                       color: Colors.grey,
                  //                                       fontSize: 12)),
                  //                               SizedBox(width: 3),
                  //                               Text('next 3 to 4 days ',
                  //                                   style: TextStyle(
                  //                                       color: Colors.black,
                  //                                       fontSize: 12)),
                  //                             ],
                  //                           ),
                  //                           Container(
                  //                             height: 50,
                  //                             child: Card(
                  //                               semanticContainer: true,
                  //                               clipBehavior: Clip.antiAliasWithSaveLayer,
                  //
                  //                               child: Row(
                  //                                 mainAxisSize: MainAxisSize.min,
                  //                                 children: [
                  //                                   Container(
                  //                                     margin: EdgeInsets.all(0.0),
                  //                                     decoration: BoxDecoration(
                  //                                       color: Color.fromARGB(
                  //                                           245, 245, 245, 245),
                  //                                       shape: BoxShape
                  //                                           .rectangle, // You can use BoxShape.rectangle for a rectangular shape
                  //                                     ),
                  //                                     child: IconButton(
                  //                                       icon: Icon(Icons.remove),
                  //                                       onPressed: () {},
                  //                                     ),
                  //                                   ),
                  //                                   Container(
                  //                                       margin: EdgeInsets.all(10),
                  //                                       child: Text('1')),
                  //                                   Container(
                  //                                     margin: EdgeInsets.all(0.0),
                  //                                     decoration: BoxDecoration(
                  //                                       color: Color.fromARGB(
                  //                                           245, 245, 245, 245),
                  //                                       shape: BoxShape
                  //                                           .rectangle, // You can use BoxShape.rectangle for a rectangular shape
                  //                                     ),
                  //                                     child: IconButton(
                  //                                       icon: Icon(Icons.add),
                  //                                       onPressed: () {},
                  //                                     ),
                  //                                   ),
                  //                                   SizedBox(
                  //                                     width: 2,
                  //                                   ),
                  //                                   Container(
                  //                                     margin: EdgeInsets.all(0.0),
                  //                                     decoration: BoxDecoration(
                  //                                       color: Color.fromARGB(
                  //                                           245, 245, 245, 245),
                  //                                       shape: BoxShape
                  //                                           .rectangle, // You can use BoxShape.rectangle for a rectangular shape
                  //                                     ),
                  //                                     child: IconButton(
                  //                                       icon: Icon(Icons.delete),
                  //                                       onPressed: () {},
                  //                                     ),
                  //                                   ),
                  //                                 ],
                  //                               ),
                  //
                  //                               // child: SingleChildScrollView(
                  //                               //   child: Row(
                  //                               //     children: [
                  //                               //       Container(
                  //                               //         decoration: BoxDecoration(
                  //                               //           color: Color.fromARGB(
                  //                               //               245, 245, 245, 245),
                  //                               //           // Set the background color of the container
                  //                               //           shape: BoxShape
                  //                               //               .rectangle, // You can use BoxShape.rectangle for a rectangular shape
                  //                               //         ),
                  //                               //         margin: EdgeInsets.all(2),
                  //                               //         child: IconButton(
                  //                               //             onPressed: () {},
                  //                               //             icon: Icon(
                  //                               //               Icons.add,
                  //                               //               size: 20,
                  //                               //               color: Color.fromARGB(
                  //                               //                   255, 43, 183, 122),
                  //                               //             )),
                  //                               //       ),
                  //                               //       Container(
                  //                               //         decoration: BoxDecoration(
                  //                               //           color: Color.fromARGB(
                  //                               //               245, 245, 245, 245),
                  //                               //           // Set the background color of the container
                  //                               //           shape: BoxShape
                  //                               //               .rectangle, // You can use BoxShape.rectangle for a rectangular shape
                  //                               //         ),
                  //                               //         margin: EdgeInsets.all(2),
                  //                               //         child: IconButton(
                  //                               //             onPressed: () {},
                  //                               //             icon: Icon(
                  //                               //               Icons.add,
                  //                               //               size: 20,
                  //                               //               color: Color.fromARGB(
                  //                               //                   255, 43, 183, 122),
                  //                               //             )),
                  //                               //       ),
                  //                               //       Container(
                  //                               //         decoration: BoxDecoration(
                  //                               //           color: Color.fromARGB(
                  //                               //               245, 245, 245, 245),
                  //                               //           // Set the background color of the container
                  //                               //           shape: BoxShape
                  //                               //               .rectangle, // You can use BoxShape.rectangle for a rectangular shape
                  //                               //         ),
                  //                               //         margin: EdgeInsets.all(2),
                  //                               //         child: IconButton(
                  //                               //             onPressed: () {},
                  //                               //             icon: Icon(
                  //                               //               Icons.add,
                  //                               //               size: 20,
                  //                               //               color: Color.fromARGB(
                  //                               //                   255, 43, 183, 122),
                  //                               //             )),
                  //                               //       ),
                  //                               //       Container(
                  //                               //         decoration: BoxDecoration(
                  //                               //           color: Color.fromARGB(
                  //                               //               245, 245, 245, 245),
                  //                               //           // Set the background color of the container
                  //                               //           shape: BoxShape
                  //                               //               .rectangle, // You can use BoxShape.rectangle for a rectangular shape
                  //                               //         ),
                  //                               //         margin: EdgeInsets.all(2),
                  //                               //         child: IconButton(
                  //                               //             onPressed: () {},
                  //                               //             icon: Icon(
                  //                               //               Icons.add,
                  //                               //               size: 20,
                  //                               //               color: Color.fromARGB(
                  //                               //                   255, 43, 183, 122),
                  //                               //             )),
                  //                               //       ),
                  //                               //     ],
                  //                               //   ),
                  //                               // )
                  //                             ),
                  //
                  //                             // child: TextButton(
                  //                             //   style: TextButton.styleFrom(
                  //                             //       fixedSize: const Size(150, 40),
                  //                             //       foregroundColor: Colors.white,
                  //                             //       backgroundColor:
                  //                             //       Color.fromARGB(255, 43, 183, 122),
                  //                             //       textStyle: const TextStyle(
                  //                             //           fontSize: 14,
                  //                             //           fontWeight: FontWeight.w500)),
                  //                             //   onPressed: () {},
                  //                             //   child: const Text('ADD TO CAR'),
                  //                             // ),
                  //                           ),
                  //                           // TextButton(
                  //                           //     onPressed: () {},
                  //                           //     child: Padding(
                  //                           //       padding: const EdgeInsets.all(10.0),
                  //                           //       child: const Text('Add to Cart',
                  //                           //           style: TextStyle(
                  //                           //               color: Colors.white,
                  //                           //               fontSize: 14,
                  //                           //               backgroundColor: Color.fromARGB(255, 43, 183, 122))),
                  //                           //     )),
                  //                         ],
                  //                       ),
                  //                     ),
                  //                   ],
                  //                 )
                  //               ],
                  //             ),
                  //           ),
                  //         );
                  //
                  //         // return ListTile(
                  //         //   title: Text(items[index]),
                  //         // );
                  //       },
                  //     )),
                ],
              ),
            ),
          ],
        ),
      ),

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
