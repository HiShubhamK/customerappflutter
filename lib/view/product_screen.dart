import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductScreen();
  }
}

class _ProductScreen extends State<ProductScreen> {
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
          toolbarHeight: 65.0,
          backgroundColor: Colors.white,

          actions: [
            Container(
              margin: EdgeInsets.fromLTRB(10, 14, 5, 14),
              width: 220, // Adjust the width as needed
              child: TextField(
                keyboardType: TextInputType.number,
                textAlignVertical: TextAlignVertical.center,
                style: TextStyle(
                  fontSize: 12,
                ),
                // controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Search...',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 43, 183, 122),
                    )
                  ),
                  contentPadding: EdgeInsets.fromLTRB(16.0,0,0,0),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.fromLTRB(0, 14, 0, 14),
              color: Color.fromARGB(255, 43, 183, 122),
              child: IconButton(
                icon: Icon(Icons.search, color: Colors.white),
                // Add your cart icon here
                onPressed: () {
                  // Implement cart functionality
                },
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 14, 10, 14),
              child: Center(
                child: Badge(
                  label: Text('5',
                      style: TextStyle(color: Colors.white, fontSize: 15)),
                  backgroundColor: Colors.red,

                  // child: IconButton(icon: Icon(Icons.shopping_cart,size: 30,color: Color.fromARGB(255, 43, 183, 122)), onPressed: () {  }, ),

                  child: Icon(Icons.shopping_cart,
                      size: 30,
                      color: Color.fromARGB(255, 43, 183, 122)),
                ),
              ),
            ),
            // IconButton(
            //   onPressed: () {},
            //   icon: Icon(Icons.call,color: Colors.black,),
            // ),
            // IconButton(
            //   onPressed: () {},
            //   icon: Icon(Icons.more_vert,color:Colors.black),
            // ),
          ],

          // title: Row(
          //   children: [
          //     Expanded(
          //       child: Container(
          //         padding: EdgeInsets.symmetric(horizontal: 8.0),
          //         decoration: BoxDecoration(
          //           border: Border.all(color: Color.fromARGB(255, 43, 183, 122)),
          //           color: Colors.white,
          //           borderRadius: BorderRadius.circular(14.0),
          //         ),
          //         child: Container(
          //           child: TextField(
          //             keyboardType: TextInputType.number,
          //             style: TextStyle(color: Colors.black),
          //             decoration: InputDecoration(
          //               hintText: 'Pincode...',
          //               border: InputBorder.none,
          //               // icon: Icon(Icons.search),
          //             ),
          //             onSubmitted: (value) {
          //               // Implement search functionality here
          //               print('Search query: $value');
          //             },
          //           ),
          //         ),
          //       ),
          //     ),
          //     SizedBox(width: 3),
          //     Card(
          //       color: Color.fromARGB(255, 43, 183, 122),
          //       child: IconButton(
          //         icon: Icon(Icons.search, color: Colors.white),
          //         // Add your cart icon here
          //         onPressed: () {
          //           // Implement cart functionality
          //         },
          //       ),
          //     ),
          //     SizedBox(width: 3),
          //
          //
          //     Badge(
          //       label: Text('5', style: TextStyle(color: Colors.white, fontSize: 15)),
          //       backgroundColor: Colors.red,
          //       child: Icon(Icons.shopping_cart, size: 50,color: Color.fromARGB(255, 43, 183, 122)),
          //     ),
          //
          //
          //     // Badge(
          //     //   padding: EdgeInsets.all(4),
          //     //   backgroundColor: Colors.blue,
          //     //   alignment: AlignmentDirectional.topStart,
          //     //   largeSize: 24,
          //     //   textStyle: TextStyle(fontSize: 14),
          //     //   textColor: Colors.yellow,
          //     //   label: Text("32"),
          //     //   child: Icon(Icons.mail, size: 50,color: Colors.black,),
          //     //   isLabelVisible: true,
          //     // ),
          //
          //
          //     // Badge(
          //     //   child: IconButton(
          //     //     icon: Icon(Icons.notifications),
          //     //     onPressed: () {
          //     //       // Handle badge icon tap
          //     //     },
          //     //   ),
          //     //    // Set the badge value
          //     // ),
          //
          //
          //
          //     // IconButton(
          //     //   icon: Icon(Icons.shopping_cart,
          //     //       color: Color.fromARGB(255, 43, 183, 122)),
          //     //   onPressed: () {},
          //     // ),
          //   ],
          // ),
          automaticallyImplyLeading: false,
        ),
        body: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  child: Card(
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
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
                                    margin: EdgeInsets.all(10),
                                    child: TextButton(
                                      style: TextButton.styleFrom(
                                          fixedSize: const Size(150, 40),
                                          foregroundColor: Colors.white,
                                          backgroundColor:
                                              Color.fromARGB(255, 43, 183, 122),
                                          textStyle: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500)),
                                      onPressed: () {},
                                      child: const Text('ADD TO CART'),
                                    ),
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
        ));
  }
}
