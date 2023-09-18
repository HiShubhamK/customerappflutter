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
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Product',
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
        body: ListView.builder(
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
                            Text('Save 500',
                                style: TextStyle(
                                    color: Colors.white,
                                    backgroundColor: Colors.red)),
                            SizedBox(height: 5),
                            Container(
                                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Image.asset(
                                  'images/splash.png',
                                  height: 150,
                                  width: 150,
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
                                    maxLines: 2,
                                    overflow: TextOverflow.visible,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                              ),
                              SizedBox(height: 3),
                              Container(
                                child: Column(
                                  children: [
                                    RatingBar.builder(
                                      wrapAlignment: WrapAlignment.start,
                                      initialRating: 1,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 3,
                                      itemPadding:
                                          EdgeInsets.symmetric(horizontal: 4.0),
                                      itemBuilder: (context, _) => Center(
                                        child: Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 2.0,
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
                                          color: Colors.black, fontSize: 14)),
                                  SizedBox(width: 3),
                                  Text('500',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 16)),
                                  SizedBox(width: 3),
                                  Text('500',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          decoration:
                                              TextDecoration.lineThrough)),
                                ],
                              ),

                              SizedBox(height: 3),
                              Row(
                                children: [
                                  Text('Get it in ',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12)),
                                  SizedBox(width: 3),
                                  Text('next to 3 to 4 days ',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 12)),
                                ],
                              ),
                              SizedBox(height: 10),
                              Container(
                                margin: EdgeInsets.fromLTRB(10,0, 10, 10),
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                      fixedSize: const Size(140, 50),
                                      foregroundColor: Colors.white,
                                      backgroundColor: Color.fromARGB(255, 43, 183, 122),
                                      textStyle: const TextStyle(fontSize: 14,fontWeight: FontWeight.w500)),
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
        ));
  }
}
