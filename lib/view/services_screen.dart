import 'dart:convert';

import 'package:customerappdart/model/productlistresponse.dart';
import 'package:customerappdart/res/app_url.dart';
import 'package:customerappdart/view/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../model/Product.dart';
import '../model/servicelistresponse.dart';
import '../utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';


class ServicesScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ServicesScreen();
  }
}

class _ServicesScreen extends State<ServicesScreen> {
  List<Map<String, dynamic>> services = [];
  List<ServiceData> servicelist = [];

  @override
  void initState() {
    super.initState();
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
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    border:
                    Border.all(color: Color.fromARGB(255, 43, 183, 122)),
                    shape: BoxShape.rectangle,

                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen(),));
                  // Implement cart functionality
                },
              ),
            ],
          ),
          automaticallyImplyLeading: false,
        ),
        body: Column(
          children: [
            Expanded(
                child: ListView.builder(
                  itemCount: servicelist.length,
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
                                    // SizedBox(height: 2),
                                    Container(
                                        margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                        child: Image.network(
                                          servicelist[index].serviceLogo.toString(),
                                          height: 170,
                                          width: double.infinity,
                                        )),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 170,
                                          margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                          child: Column(
                                            children: [
                                              Text(
                                                  servicelist[index]
                                                      .serviceName
                                                      .toString(),
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
                                        // Text('Rating',style: TextStyle(color: Colors.black,fontSize: 14)),
                                        Row(
                                          children: [

                                            // Html(
                                            //   data: servicelist[index].shortDescription.toString(),
                                            //   style: {
                                            //     'body': Style(
                                            //       color: Colors.grey,
                                            //       fontSize: FontSize(14),
                                            //       decoration: TextDecoration.lineThrough,
                                            //     ),
                                            //   },
                                            // ),
                                          ],
                                        ),

                                        SizedBox(height: 3),
                                      ],
                                    ),

                                  ],
                                ),
                                SizedBox(height: 10),
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
    String apiUrl =
        'http://connect.hicare.in/product/api/mobile/Product/GetProductListByPincode?pincode=400079';

    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      setState(() {
        services = List<Map<String, dynamic>>.from(data['Data']);
      });
    } else {
      throw Exception('Failed to load data');
    }
  }



  Future<void> fetchData() async {
    // https://mobileapi.hicare.in/mobileapi/api/Service/GetActiveServiceList
    String apiUrl =AppUrl.baseUrl+
        'Service/GetActiveServiceList';
    final preferences = await SharedPreferences.getInstance();
    var bearerToken = preferences.getString("TOKEN");
    print('bearerToken: $bearerToken');
    final response = await http.get(
      Uri.parse(apiUrl),
      headers: <String, String>{
        'Authorization': 'Bearer $bearerToken',
        'Content-Type': 'application/json',
      },
    );
    if (response.statusCode == 200) {
      Map<String, dynamic> jsonData = json.decode(response.body);
      List<dynamic> jsonProducts = jsonData['Data'];

      setState(() {
        servicelist =
            jsonProducts.map((json) => ServiceData.fromJson(json)).toList();
        Utils.showsnackbar('Success', context);
      });
    } else {
      Utils.showsnackbar(
          'Failed to load data. Status code: ${response.statusCode}', context);
    }
  }

  Future<void> addtocart(int productId, int i, int user) async {
    String apiUrl = 'http://connect.hicare.in/product/api/mobile/Cart/AddProductInCart?quantity=$i&productId=$productId&userId=9846';
    final response =
    await http.get(Uri.parse(apiUrl)); // Replace with your API endpoint

    if (response.statusCode == 200) {

      Map<String, dynamic> jsonData = json.decode(response.body);

      bool isSuccess = jsonData['IsSuccess'];
      int data = jsonData['Data'];
      String responseMessage = jsonData['ResponseMessage'];
      Utils.showsnackbar(data.toString(), context);

    } else {
      Utils.showsnackbar(
          'Failed to load data. Status code: ${response.statusCode}', context);
    }
  }

}
