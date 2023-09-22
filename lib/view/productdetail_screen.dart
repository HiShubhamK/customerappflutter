import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductDetailsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductDetailsScreen();
  }
}

class _ProductDetailsScreen extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Product Details',
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
        margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: Column(
          children: [
            Text(
              'Autom0s+1 Refill+2 Batteries-Starter Pack - 90 Days',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 75,
                    color: Colors.red,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Save 500',
                          style: TextStyle(
                              color: Colors.black,
                              backgroundColor: Colors.red,
                              fontSize: 14)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Row(
                      children: [
                        Text('4.8',
                            style:
                                TextStyle(color: Colors.black, fontSize: 12)),
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
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
                child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  '480 Ratings',
                  style: TextStyle(
                      color: Color.fromARGB(255, 43, 183, 122), fontSize: 14),
                ),
              ],
            )),
            Row(
              children: [
                Expanded(
                    child: Container(
                  height: 150,
                  child: Row(
                    children: [
                      Expanded(
                        child: Image.asset('images/bird.png',
                            height: 150, width: 150),
                      ),
                      Expanded(
                        flex: 2,
                        child: Image.asset('images/bird.png',
                            height: 150, width: 150),
                      ),
                      Expanded(
                        child: Image.asset('images/bird.png',
                            height: 150, width: 150),
                      ),
                    ],
                  ),
                )),
              ],
            ),
            SizedBox(height: 5),
            Divider(height: 2, color: Colors.grey),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Expanded(
                //   child: Container(
                //     color: Colors.blue,
                //     height: 50.0,
                //     child: Center(
                //       child: Text(
                //         'Left Content',
                //         style: TextStyle(color: Colors.white),
                //       ),
                //     ),
                //   ),
                // ),
                // Divider(
                //   color: Colors.black,
                //   height: 50.0,
                //   thickness: 1.0,
                // ),
                // Expanded(
                //   child: Container(
                //     color: Colors.blue,
                //     height: 50.0,
                //     child: Center(
                //       child: Text(
                //         'Left Content',
                //         style: TextStyle(color: Colors.white),
                //       ),
                //     ),
                //   ),
                // )

                Expanded(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                            margin: EdgeInsets.only(bottom: 5),
                            child: Text(
                              'Our price : 899',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            )),
                        SizedBox(height: 3),
                        Text(
                          'Our price : 899',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  height: 50,
                  thickness: 2,
                  color: Colors.black,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(height: 10),
                      Text(
                        'Qty',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            margin: EdgeInsets.all(0.0),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(245, 245, 245, 245),
                              shape: BoxShape
                                  .rectangle, // You can use BoxShape.rectangle for a rectangular shape
                            ),
                            child: IconButton(
                              icon: Icon(Icons.remove),
                              onPressed: () {},
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.all(10), child: Text('1')),
                          Container(
                            margin: EdgeInsets.all(0.0),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(245, 245, 245, 245),
                              shape: BoxShape
                                  .rectangle, // You can use BoxShape.rectangle for a rectangular shape
                            ),
                            child: IconButton(
                              icon: Icon(Icons.add),
                              onPressed: () {},
                            ),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Container(
                            margin: EdgeInsets.all(0.0),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(245, 245, 245, 245),
                              shape: BoxShape
                                  .rectangle, // You can use BoxShape.rectangle for a rectangular shape
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              color: Color.fromARGB(255, 43, 183, 122),
              child: TextButton(onPressed: (){},child: Text('ADD TO CART',style: TextStyle(color: Colors.white)
                ,)),
            ),
            SizedBox(height: 5),
            Divider(
              height: 5,
              color: Colors.black,

            ),

            Container(

              child: Text(
                'Description',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
            ),

            SizedBox(height: 5),
            Divider(
              height: 5,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
