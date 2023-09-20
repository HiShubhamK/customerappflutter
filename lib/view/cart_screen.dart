import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CartScreen extends StatefulWidget {
  CartScreen();

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CartScreen();
  }
}

class _CartScreen extends State<CartScreen> {
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
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cart',
          style: TextStyle(
              fontSize: 14,
              color: Color.fromARGB(255, 43, 183, 122),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        automaticallyImplyLeading: true,
        // Remove the back arrow
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Color.fromARGB(255, 43, 183, 122)),
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Column(
          children: [
            Center(
                child: Text('Deliver to Pinode 400080',
                    style: TextStyle(
                        backgroundColor: Color.fromARGB(255, 43, 183, 55),
                        color: Colors.white))),
            Card(
              elevation: 5,
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text('Order Summary',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500)),
                    SizedBox(height: 8),
                    Divider(height: 2, color: Colors.black),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('Price'), Text('Price')],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('Discount'), Text('Price')],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('Delivery Charges'), Text('Price')],
                    ),
                    SizedBox(height: 8),
                    Divider(height: 2, color: Colors.black),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Amount',
                          style: TextStyle(color: Colors.red),
                        ),
                        Text('Price', style: TextStyle(color: Colors.red))
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  child: Card(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(' Save 500 ',
                                      style: TextStyle(
                                          color: Colors.white,
                                          backgroundColor: Colors.red)),
                                ),
                                SizedBox(height: 5),
                                Container(
                                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Image.asset(
                                      'images/splash.png',
                                      height: 150,
                                      width: 130,
                                    )),
                              ],
                            ),
                            SizedBox(height: 10),
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                    child: Text(items[index],
                                        maxLines: 3,
                                        overflow: TextOverflow.visible,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                  SizedBox(height: 3),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                    child: Row(
                                      children: [
                                        Text('4.8',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12)),
                                        SizedBox(width: 3),
                                        RatingBar.builder(
                                          wrapAlignment: WrapAlignment.start,
                                          initialRating: 1,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          // Adjust the size of the icons as needed
                                          itemSize: 14.0,
                                          // itemPadding: EdgeInsets.symmetric(
                                          //     horizontal: 4.0),
                                          itemBuilder: (context, _) => Center(
                                            child: Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                              size: 14.0,
                                            ),
                                          ),
                                          onRatingUpdate: (rating) {
                                            print(rating);
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  // Text('Rating',style: TextStyle(color: Colors.black,fontSize: 14)),
                                  SizedBox(height: 3),
                                  Row(
                                    children: [
                                      Text('\u{20B9}',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 13)),
                                      Text('500',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                          )),
                                      SizedBox(width: 10),
                                      Text('\u{20B9}',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 14,
                                              decoration:
                                                  TextDecoration.lineThrough)),
                                      Text('500',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 14,
                                              decoration:
                                                  TextDecoration.lineThrough)),
                                    ],
                                  ),

                                  SizedBox(height: 3),
                                  Row(
                                    children: [
                                      Text('Get it in',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12)),
                                      SizedBox(width: 3),
                                      Text('next 3 to 4 days ',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12)),
                                    ],
                                  ),
                                  Container(
                                    child: Card(
                                        semanticContainer: true,
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                      child: Row(
                                        children: <Widget>[
                                          IconButton(
                                            icon: Icon(Icons.home),
                                            onPressed: () {
                                              // Add your button logic here
                                            },
                                          ),
                                          IconButton(
                                            icon: Icon(Icons.settings),
                                            onPressed: () {
                                              // Add your button logic here
                                            },
                                          ),
                                          IconButton(
                                            icon: Icon(Icons.mail),
                                            onPressed: () {
                                              // Add your button logic here
                                            },
                                          ),
                                          IconButton(
                                            icon: Icon(Icons.person),
                                            onPressed: () {
                                              // Add your button logic here
                                            },
                                          ),
                                        ],
                                      ),

                                        // child: SingleChildScrollView(
                                        //   child: Row(
                                        //     children: [
                                        //       Container(
                                        //         decoration: BoxDecoration(
                                        //           color: Color.fromARGB(
                                        //               245, 245, 245, 245),
                                        //           // Set the background color of the container
                                        //           shape: BoxShape
                                        //               .rectangle, // You can use BoxShape.rectangle for a rectangular shape
                                        //         ),
                                        //         margin: EdgeInsets.all(2),
                                        //         child: IconButton(
                                        //             onPressed: () {},
                                        //             icon: Icon(
                                        //               Icons.add,
                                        //               size: 20,
                                        //               color: Color.fromARGB(
                                        //                   255, 43, 183, 122),
                                        //             )),
                                        //       ),
                                        //       Container(
                                        //         decoration: BoxDecoration(
                                        //           color: Color.fromARGB(
                                        //               245, 245, 245, 245),
                                        //           // Set the background color of the container
                                        //           shape: BoxShape
                                        //               .rectangle, // You can use BoxShape.rectangle for a rectangular shape
                                        //         ),
                                        //         margin: EdgeInsets.all(2),
                                        //         child: IconButton(
                                        //             onPressed: () {},
                                        //             icon: Icon(
                                        //               Icons.add,
                                        //               size: 20,
                                        //               color: Color.fromARGB(
                                        //                   255, 43, 183, 122),
                                        //             )),
                                        //       ),
                                        //       Container(
                                        //         decoration: BoxDecoration(
                                        //           color: Color.fromARGB(
                                        //               245, 245, 245, 245),
                                        //           // Set the background color of the container
                                        //           shape: BoxShape
                                        //               .rectangle, // You can use BoxShape.rectangle for a rectangular shape
                                        //         ),
                                        //         margin: EdgeInsets.all(2),
                                        //         child: IconButton(
                                        //             onPressed: () {},
                                        //             icon: Icon(
                                        //               Icons.add,
                                        //               size: 20,
                                        //               color: Color.fromARGB(
                                        //                   255, 43, 183, 122),
                                        //             )),
                                        //       ),
                                        //       Container(
                                        //         decoration: BoxDecoration(
                                        //           color: Color.fromARGB(
                                        //               245, 245, 245, 245),
                                        //           // Set the background color of the container
                                        //           shape: BoxShape
                                        //               .rectangle, // You can use BoxShape.rectangle for a rectangular shape
                                        //         ),
                                        //         margin: EdgeInsets.all(2),
                                        //         child: IconButton(
                                        //             onPressed: () {},
                                        //             icon: Icon(
                                        //               Icons.add,
                                        //               size: 20,
                                        //               color: Color.fromARGB(
                                        //                   255, 43, 183, 122),
                                        //             )),
                                        //       ),
                                        //     ],
                                        //   ),
                                        // )
                                    ),

                                    // child: TextButton(
                                    //   style: TextButton.styleFrom(
                                    //       fixedSize: const Size(150, 40),
                                    //       foregroundColor: Colors.white,
                                    //       backgroundColor:
                                    //       Color.fromARGB(255, 43, 183, 122),
                                    //       textStyle: const TextStyle(
                                    //           fontSize: 14,
                                    //           fontWeight: FontWeight.w500)),
                                    //   onPressed: () {},
                                    //   child: const Text('ADD TO CAR'),
                                    // ),
                                  ),
                                  // TextButton(
                                  //     onPressed: () {},
                                  //     child: Padding(
                                  //       padding: const EdgeInsets.all(10.0),
                                  //       child: const Text('Add to Cart',
                                  //           style: TextStyle(
                                  //               color: Colors.white,
                                  //               fontSize: 14,
                                  //               backgroundColor: Color.fromARGB(255, 43, 183, 122))),
                                  //     )),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );

                // return ListTile(
                //   title: Text(items[index]),
                // );
              },
            )),
          ],
        ),
      ),
    );
  }
}
