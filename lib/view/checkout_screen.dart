import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CheckoutScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CheckoutScreen();
  }
}

class _CheckoutScreen extends State<CheckoutScreen> {

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
          'CheckOut',
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
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                '\u{20B9}1000', // Replace with your price value
                style: TextStyle(
                  color: Colors.red, // Set the text color
                  fontSize: 18.0, // Set the font size
                ),
              ),
            ),
            Container(
              width: 180,
              color: Color.fromARGB(255, 43, 183, 122),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Place Order',
                    style: TextStyle(color: Colors.white),
                  )),
            )
            // IconButton(
            //   icon: Icon(Icons.shopping_cart),
            //   onPressed: () {
            //     // Handle cart button click
            //   },
            //   color: Colors.white, // Set the icon color
            // ),
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 30,
              color: Color.fromARGB(255, 43, 183, 122),
              // Set the text color
              width: double.infinity,
              // Make the Container match the parent's width
              child: Center(
                child: Text(
                  'Deliver to pincode 400078',
                  style: TextStyle(color: Colors.white // Set the text color
                      ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Column(
                children: [
                  Card(
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.fromLTRB(10,10,10,3),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Shipping Address',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            )),
                        SizedBox(height: 5),
                        Container(
                          width: double.infinity,
                          height: 50,
                          margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          // padding: const EdgeInsets.all(10),
                          child: Text(
                              'HiCare Services PVT LTD.301, 3rd Floor, L.D. Building,Mehra Industrial Estate, L.B.S. Marg,Vikhroli West, Mumbai - 400079.',
                              maxLines: 4,
                              overflow: TextOverflow.visible,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 14)),
                        ),
                        Container(
                            margin: EdgeInsets.fromLTRB(10,10,10,3),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Billing Address',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            )),
                        SizedBox(height: 5),
                        Container(
                          width: double.infinity,
                          height: 50,
                          margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          // padding: const EdgeInsets.all(10),
                          child: Text(
                              'HiCare Services PVT LTD.301, 3rd Floor, L.D. Building,Mehra Industrial Estate, L.B.S. Marg,Vikhroli West, Mumbai - 400079.',
                              maxLines: 4,
                              overflow: TextOverflow.visible,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 14)),
                        ),
                        SizedBox(height: 5),
                        Divider(height: 2, color: Colors.grey),
                        SizedBox(height: 5),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [Text('Order Summary')],
                              ),
                              SizedBox(height: 8),
                              Divider(height: 2, color: Colors.black),
                              SizedBox(height: 8),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [Text('Price'), Text('Price')],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [Text('Discount'), Text('Price')],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Delivery Charges'),
                                  Text('Price')
                                ],
                              ),
                              SizedBox(height: 8),
                              Divider(height: 2, color: Colors.black),
                              SizedBox(height: 8),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Text('Coupon Code'),
                                  SizedBox(width: 60.0),
                                  Expanded(
                                    child: Container(
                                      height: 30,
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: 'Enter coupon code',
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255, 43, 183, 122),
                                          )),
                                          contentPadding: EdgeInsets.fromLTRB(
                                              16.0, 0, 0, 0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Container(
                                height: 40,
                                  width: double.infinity,
                                  color: Color.fromARGB(255, 43,183, 122),
                                  child: TextButton(onPressed: () {}, child: Text('Apply Coupon',style: TextStyle(backgroundColor: Color.fromARGB(255, 43, 183, 122),color: Colors.white),))),
                              SizedBox(height: 8),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Total Amount',
                                    style: TextStyle(color: Colors.red),
                                  ),
                                  Text('Price',
                                      style: TextStyle(color: Colors.red))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
            Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
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
                                    SizedBox(height: 5),
                                    Container(
                                        margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                        child: Image.asset(
                                          'images/splash.png',
                                          height: 140,
                                          width: 120,
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
                                      SizedBox(height: 3),
                                      Container(
                                          width: 75,
                                          color: Colors.red,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8),
                                            child: Text('Save 500',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    backgroundColor: Colors.red,
                                                    fontSize: 14)),
                                          )),
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
                                          Text('Quantity :',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 12)),
                                          SizedBox(width: 3),
                                          Text('1 ',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 12)),
                                        ],
                                      ),
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
