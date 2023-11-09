import 'dart:convert';

import 'package:customerappdart/model/Product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:http/http.dart' as http;
import '../utils/utils.dart';

class CartScreen extends StatefulWidget {
  CartScreen();

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CartScreen();
  }
}

class _CartScreen extends State<CartScreen> {
  List<Product> productList=[];
  List<String> items = [
    'Automos one refill 1',
    'Automos one refill  2',
    'Automos one refill  3',
    'Automos one refill 4',
    'Automos one refill  5',
    // Add more items as needed
  ];

  int totalAmount = 0;
  int finalAmount = 0;
  int totalDiscount = 0;
  int totalGST = 0;
  int serviceCharges = 0;
  int installationCharges = 0;
  int deliveryCharges = 0;
  int voucherDiscount = 0;
  String voucherCode = "";
  int cartCounts = 0;




  @override
  void initState() {
    super.initState();
    fetchData();
    cartCount();
  }


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
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                '\u{20B9}$finalAmount', // Replace with your price value
                style: TextStyle(
                  color: Colors.red, // Set the text color
                  fontSize: 18.0, // Set the font size
                ),
              ),
            ),
            Container(
              width: 180,
              color: Color.fromARGB(255, 43, 183, 122),
              child: TextButton(onPressed: () {},
                  child: Text('Place Order',style: TextStyle(color: Colors.white),)),
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
                      children: [Text('Price'), Text(totalAmount.toString())],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('Discount'), Text(totalDiscount.toString())],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('Delivery Charges'), Text(finalAmount.toString())],
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
                        Text(finalAmount.toString(), style: TextStyle(color: Colors.red))
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: ListView.builder(
                  itemCount: productList.length,
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
                                      child: Text(' Save  ' +
                                          '\u{20B9}' +
                                          productList[index]
                                              .discount
                                              .toString() +
                                          ' ',
                                          style: TextStyle(
                                              color: Colors.white,
                                              backgroundColor: Colors.red)),
                                    ),
                                    SizedBox(height: 2),
                                    Container(
                                        margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                        child: Image.network(
                                          productList[index].productThumbnail,
                                          height: 170,
                                          width: 130,
                                        )),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Container(
                                  width: 170,
                                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                        child: Text(
                                            productList[index]
                                                .productName
                                                .toString(),
                                            maxLines: 4,
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
                                          Text(
                                              productList[index]
                                                  .discountedPrice
                                                  .toString(),
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
                                          Text(
                                              productList[index]
                                                  .pricePerQuantity
                                                  .toString(),
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
                                               Flexible(
                                                 child: IconButton(
                                                    icon: Icon(Icons.home),
                                                    onPressed: () {
                                                      // Add your button logic here
                                                    },
                                                  ),
                                               ),
                                              Flexible(
                                                child: IconButton(
                                                  icon: Icon(Icons.settings),
                                                  onPressed: () {
                                                    // Add your button logic here
                                                  },
                                                ),
                                              ),
                                              Flexible(
                                                child: IconButton(
                                                  icon: Icon(Icons.mail),
                                                  onPressed: () {
                                                    // Add your button logic here
                                                  },
                                                ),
                                              ),
                                              Flexible(
                                                child: IconButton(
                                                  icon: Icon(Icons.person),
                                                  onPressed: () {
                                                    // Add your button logic here
                                                  },
                                                ),
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

  Future<void> fetchData() async {
    String apiUrl = 'https://connect.hicare.in/product/api/mobile/Cart/GetProductCartByUserId?userId=9846&pincode=400079';
    final response = await http.get(Uri.parse(apiUrl)); // Replace with your API endpoint

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonData = json.decode(response.body);
      List<dynamic> jsonProducts = jsonData['Data'];

      setState(() {
        productList = jsonProducts.map((json) => Product.fromJson(json)).toList();
        Utils.showsnackbar('product Success', context);
      });
    } else {
      Utils.showsnackbar(
          'Failed to load data. Status code: ${response.statusCode}', context);
    }
  }

  Future<void> cartCount() async {
    String apiUrl = 'https://connect.hicare.in/product/api/mobile/Cart/GetCartSummary?userId=9846&pincode=400079&voucherCode=';
    final response = await http.get(Uri.parse(apiUrl)); // Replace with your API endpoint


    if (response.statusCode == 200) {
      setState(() {

        Map<String, dynamic> jsonData = json.decode(response.body);
        Map<String, dynamic> data = jsonData['Data'];

          totalAmount = data['TotalAmount'];
         finalAmount = data['FinalAmount'];
         totalDiscount = data['TotalDiscount'];
         totalGST = data['TotalGST'];
         serviceCharges = data['ServiceCharges'];
         installationCharges = data['InstallationCharges'];
         deliveryCharges = data['DeliveryCharges'];
         voucherDiscount = data['VoucherDiscount'];
         voucherCode = data['VoucherCode'];
         cartCounts = data['CartCount'];
        Utils.showsnackbar('Success', context);
      });
    } else {
      Utils.showsnackbar(
          'Failed to load data. Status code: ${response.statusCode}', context);
    }
  }

}
