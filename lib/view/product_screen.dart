import 'dart:convert';

import 'package:customerappdart/model/productlistresponse.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:http/http.dart' as http;

import '../model/Product.dart';
import '../utils/utils.dart';

class ProductScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductScreen();
  }
}

class _ProductScreen extends State<ProductScreen> {
  List<Map<String, dynamic>> products = [];
  List<Product> productList = [];

  List<String> items = [
    'Automos one refill 1',
    'Automos one refill  2',
    'Automos one refill  3',
    'Automos one refill 4',
    'Automos one refill  5',
    // Add more items as needed
  ];

  @override
  void initState() {
    super.initState();
    // Make API call when the widget is first created
    // _getDataFromApi();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: Color.fromARGB(255, 43, 183, 122)),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'Pincode...',
                      border: InputBorder.none,
                      // icon: Icon(Icons.search),
                    ),
                    onSubmitted: (value) {
                      // Implement search functionality here
                      print('Search query: $value');
                    },
                  ),
                ),
              ),
              SizedBox(width: 3),
              IconButton(
                icon: Icon(Icons.search,
                    color: Color.fromARGB(255, 43, 183, 122)),
                // Add your cart icon here
                onPressed: () {
                  // Implement cart functionality
                },
              ),
              SizedBox(width: 3),
              IconButton(
                icon: Icon(Icons.shopping_cart,
                    color: Color.fromARGB(255, 43, 183, 122)),
                onPressed: () {},
              ),
            ],
          ),
          automaticallyImplyLeading: false,
        ),
        body: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: productList.length,
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
                                  child: Text(' Save  '+productList[index].discount.toString(),
                                      style: TextStyle(
                                          color: Colors.white,
                                          backgroundColor: Colors.red)),
                                ),
                                SizedBox(height: 5),
                                Container(
                                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Image.network(
                                      productList[index].productThumbnail,
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
                                    width: 180,
                                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                    child: Column(
                                      children: [
                                        Text(productList[index].productName.toString(),
                                            maxLines: 4,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500)),
                                      ],
                                    ),
                                  ),
                                  // Container(
                                  //   margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  //   child: Text(productList[index].productName.toString(),
                                  //       maxLines: 4,
                                  //       overflow: TextOverflow.visible,
                                  //       style: TextStyle(
                                  //           color: Colors.black,
                                  //           fontSize: 14,
                                  //           fontWeight: FontWeight.w500)),
                                  // ),
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
                                      Text(productList[index].discountedPrice.toString(),
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
                                      Text(productList[index].pricePerQuantity.toString(),
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

  Future<void> _getDataFromApi() async {
    // Replace the URL with your API endpoint for fetching a list
    String apiUrl = 'http://connect.hicare.in/product/api/mobile/Product/GetProductListByPincode?pincode=400079';

    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      setState(() {
        products = List<Map<String, dynamic>>.from(data['Data']);
      });
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<void> fetchData() async {
    String apiUrl = 'http://connect.hicare.in/product/api/mobile/Product/GetProductListByPincode?pincode=400079';
    final response = await http.get(Uri.parse(apiUrl)); // Replace with your API endpoint

    if (response.statusCode == 200) {

      Map<String, dynamic> jsonData = json.decode(response.body);
      List<dynamic> jsonProducts = jsonData['Data'];

      setState(() {
        productList = jsonProducts.map((json) => Product.fromJson(json)).toList();
        Utils.showsnackbar('Success', context);
      });
    } else {
      Utils.showsnackbar('Failed to load data. Status code: ${response.statusCode}',context);
    }
  }
}
