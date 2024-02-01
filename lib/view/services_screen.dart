import 'dart:convert';
import 'package:flutter_html/flutter_html.dart';
import 'package:customerappdart/res/app_url.dart';
import 'package:customerappdart/view/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../model/servicelistresponse.dart';
import '../utils/utils.dart';

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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CartScreen(),
                      ));
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
                    color: Colors.white,
                    margin: EdgeInsets.fromLTRB(10, 10, 10,10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0), // Adjust the radius as needed
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          child: Image.network(
                              servicelist[index].serviceThumbnail.toString(),
                              height: 200,
                          width: double.infinity,
                          fit:BoxFit.cover,),
                        ),
                        SizedBox(height: 10),
                        Container(
                          alignment:Alignment.centerLeft,
                          child: Text(
                            servicelist[index].serviceName.toString(),
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                         Html(data: servicelist[index].shortDescription,)
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
    String apiUrl = AppUrl.baseUrl + 'Service/GetActiveServiceList';
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
    String apiUrl =
        'http://connect.hicare.in/product/api/mobile/Cart/AddProductInCart?quantity=$i&productId=$productId&userId=9846';
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
