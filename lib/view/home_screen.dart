import 'dart:convert';

import 'package:customerappdart/model/dashboardmodell.dart';
import 'package:customerappdart/view/bookslotscreen.dart';
import 'package:customerappdart/view/cart_screen.dart';
import 'package:customerappdart/view/myorders.dart';
import 'package:customerappdart/view/product_screen.dart';
import 'package:customerappdart/view/productdetailscreen.dart';
import 'package:customerappdart/view/referandearn.dart';
import 'package:customerappdart/view/services_screen.dart';
import 'package:customerappdart/view/support_screen.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../res/app_url.dart';
import '../utils/utils.dart';
import '../view_model/auth_viewmodel.dart';
import 'Store.dart';
import 'account_screen.dart';
import 'createcomplaint.dart';
import 'package:dio/dio.dart';

class HomeScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  late Dio _dio;
  String token = "";
  late DashboardModel dashboardModel;
  List<MenuData> menudata = [];

  @override
  void initState() {
    super.initState();
    // fetchData();
  }

  final List<Widget> _pages = [
    _buildCarouselSlider(), // Add the carousel_slider page
    Center(
      child: Text("Home"),
    ),
    Center(
      child: Text("Orders"),
    ),
    Center(
      child: Text("Products"),
    ),
    Center(
      child: Text("Account"),
    ),
  ];

  // final List<Widget> _pages = [
  //   // Add your content for different pages here
  //   Placeholder(
  //     color: Colors.blue,
  //   ),
  //   _buildCarouselSlider(), // Add the carousel_slider page
  //   Placeholder(
  //     color: Colors.orange,
  //   ),
  // ];

  @override
  Widget build(BuildContext context) {
    final authViewModel = Provider.of<AuthViewModel>(context);
    Map<String, dynamic> data = {
      'mobileNo': Utils.mobile.toString(),
    };

    authViewModel.Dashboard(data, context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: ImageIcon(
            AssetImage("images/splash.png"),
            size: 30,
          ), // Replace with your desired icon
          onPressed: () {},
        ),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Color.fromARGB(255, 43, 183, 122),
        unselectedItemColor: Colors.grey,
        onTap: (int index) {
          if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:(context) => ProductScreen()
                // builder: (context) => ServicesScreen(),
                //   builder: (context) => CartScreen(),
                // builder: (context) => ScreenSupport(),
              ),
            );
            // Map<String, String> data = {
            //   'pincode':'400079' ,
            // };
            // authViewModel.productlistbypincode(data,context);
          }
          if (index == 1) {
            // Map<String, String> data = {
            //   'mobileNo':  Utils.mobile,
            // };
            // authViewModel.getReferralCodeResponse(data, context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CreateComplaint(),
                // builder: (context) => ScreenSupport(),
              ),
            );
          }
          if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AccountScreen(),
                // builder: (context) => ScreenSupport(),
              ),
            );
          }
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.grey,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("images/orders.png"),
                color: Colors.grey,
              ),
              label: "Orders"),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("images/ic_products.png"),
                color: Colors.grey,
              ),
              label: "Products"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.grey,
              ),
              label: "Account"),
        ],
      ),
    );
  }

  static Widget _buildCarouselSlider() {
    List<String> imageUrls = [

      // Add your image URLs here
      "https://s3.ap-south-1.amazonaws.com/hicare-others/ea4af63e-eca7-4384-87be-4c929284f1cc.jpg",
      "https://s3.ap-south-1.amazonaws.com/hicare-others/a27bf888-bea2-42be-823a-6f9622845d97.jpg",
      "https://s3.ap-south-1.amazonaws.com/hicare-others/1e3b7b44-5d51-4829-8d96-4cacdbb2a039.jpg",
    ];
    // List<String?> imageUrls = bannerList.map((data) => data.imageUrl).toList();


    return Column(
      children: [
        Container(
          height: 200.0,
          margin: EdgeInsets.all(20),
          child: CarouselSlider(
            options: CarouselOptions(
              height: 200.0,
              autoPlay: true,
              enlargeCenterPage: true,
            ),
            items: imageUrls.map((imageUrls) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Image.network(
                      imageUrls,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              width: 60,
              height: 1,
              color: Colors.grey,
            ),
            Container(
              child: Text(
                'Discover',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
            Container(
              width: 60,
              height: 1,
              color: Colors.grey,
            ),
          ],
        ),
        Card(
          margin: EdgeInsets.all(15),
          elevation: 2,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Column(
            // children: yourItemList.map((item) {
            //   return Card( // Use any container widget suitable for your design
            //     elevation: 2,
            //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            //     child: Column(
            //       children: [
            //         // Display item title
            //         Text(item.title),
            //         SizedBox(height: 10),
            //
            //         // Show image if available
            //         if (item.imageUrl != null)
            //           Image.network(item.imageUrl),
            //
            //         // Add any other content based on your item data
            //       ],
            //     ),
            //   );
            // }).toList(),

            children: [
              // Image at the top

              SizedBox(height: 10),

              // Grid of item icons
              GridView.count(
                shrinkWrap: true,
                // Ensure child content wraps
                physics: NeverScrollableScrollPhysics(),
                // Prevent scrolling
                crossAxisCount: 3,
                childAspectRatio: 1.2,
                // Adjust as needed
                children: [
                  // Combine Icon and Text widgets in a Column
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        "https://s3.ap-south-1.amazonaws.com/hicare-others/286a630e-a6a9-4979-96ae-63d4e056bd79.png",
                        width: 30, // Adjust size as needed
                        height: 30, // Adjust size as needed
                        color: Color.fromARGB(255, 43, 183, 122),
                      ),
                      SizedBox(height: 5),
                      // Adjust spacing between icon and text
                      Text('My Orders', style: TextStyle(fontSize: 12)),
                    ],
                  ),

                  // Repeat this pattern for other icons and labels
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        "https://s3.ap-south-1.amazonaws.com/hicare-others/902763d9-bae7-4cc3-a90a-acabe6978aee.png",
                        width: 30, // Adjust size as needed
                        height: 30, // Adjust size as needed
                        color: Color.fromARGB(255, 43, 183, 122),
                      ),
                      SizedBox(height: 5),
                      Text('Upcoming Service', style: TextStyle(fontSize: 12)),
                    ],
                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        "https://s3.ap-south-1.amazonaws.com/hicare-others/75f47377-1c35-480e-ae2a-e70c74639df8.png",
                        width: 30, // Adjust size as needed
                        height: 30, // Adjust size as needed
                        color: Color.fromARGB(255, 43, 183, 122),
                      ),
                      SizedBox(height: 5),
                      Text('Complaints', style: TextStyle(fontSize: 12)),
                    ],
                  ),

                  // ... Add more columns with icon and text pairs
                ],
              ),
              GridView.count(
                shrinkWrap: true,
                // Ensure child content wraps
                physics: NeverScrollableScrollPhysics(),
                // Prevent scrolling
                crossAxisCount: 3,
                childAspectRatio: 1.2,
                // Adjust as needed
                children: [
                  // Combine Icon and Text widgets in a Column
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        "https://s3.ap-south-1.amazonaws.com/hicare-others/ad7709c9-305d-4f54-acdf-7451cf9d8a78.png",
                        width: 30, // Adjust size as needed
                        height: 30, // Adjust size as needed
                        color: Color.fromARGB(255, 43, 183, 122),
                      ),
                      SizedBox(height: 5),
                      // Adjust spacing between icon and text
                      Text('Book an Inspection',
                          style: TextStyle(fontSize: 12)),
                    ],
                  ),

                  // Repeat this pattern for other icons and labels
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        "https://s3.ap-south-1.amazonaws.com/hicare-others/3abb023f-8e48-4fbc-bce8-27f04aa3bc09.png",
                        width: 30, // Adjust size as needed
                        height: 30, // Adjust size as needed
                      ),
                      SizedBox(height: 5),
                      Text('Products', style: TextStyle(fontSize: 12)),
                    ],
                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        "https://s3.ap-south-1.amazonaws.com/hicare-others/50327b9c-4147-4c49-af16-4a36f06b0e62.png",
                        width: 30, // Adjust size as needed
                        height: 30,
                        color: Color.fromARGB(
                            255, 43, 183, 122), // Adjust size as needed
                      ),
                      SizedBox(height: 5),
                      Text('Commercial/B2B', style: TextStyle(fontSize: 12)),
                    ],
                  ),

                  // ... Add more columns with icon and text pairs
                ],
              ),
            ],
          ),
        ),
        Container(
          height: 120,
          padding: EdgeInsets.all(20.0),
          width: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildCardIcon(
                    "https://s3.ap-south-1.amazonaws.com/hicare-others/46f14b04-09b4-44f5-9adf-f7d2a6470ee0.png",
                    "10 % Off on Automos"),
                SizedBox(width: 5),
                _buildCardIcon(
                    "https://s3.ap-south-1.amazonaws.com/hicare-others/46f14b04-09b4-44f5-9adf-f7d2a6470ee0.png",
                    "Product Offer"),
                SizedBox(width: 5),
                _buildCardIcon(
                    "https://s3.ap-south-1.amazonaws.com/hicare-others/46f14b04-09b4-44f5-9adf-f7d2a6470ee0.png",
                    "Services Offer CMS & RMS"),
                SizedBox(width: 5),
              ],
            ),
          ),
        ),

        // Add other content below the carousel_slider
      ],
    );
  }

  static Widget _buildCardIcon(String iconAsset, String name) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: Row(
        children: [
          Image.network(
            "https://s3.ap-south-1.amazonaws.com/hicare-others/46f14b04-09b4-44f5-9adf-f7d2a6470ee0.png",
            width: 35, // Adjust size as needed
            height: 35, // Adjust size as needed
          ),
          Padding(
            padding: EdgeInsets.all(10), // Adjust padding as needed
            child: Text(
              name,
              style: TextStyle(fontSize: 14), // Adjust text style
            ),
          ),
        ],
      ),

      // Text section
    );
  }

  // Future<void> fetchData() async {
  //   List<MenuData> menudata = [];
  //   // String bearerToken = Utils.TOKEN;
  //   String bearerToken = Utils.getToken().toString();
  //   print('Bearer:- $bearerToken');
  //
  //   String apiUrl =
  //       'https://connect.hicare.in/mobileapi/api/Dashboard/GetDashboard?mobile=8976399055';
  //   final response = await http.get(
  //     Uri.parse(apiUrl),
  //     headers: <String, String>{
  //       'Authorization':
  //           'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Ijg5NzYzOTkwNTVAaGljYXJlLmluIiwiTW9iaWxlTm8iOiI4OTc2Mzk5MDU1IiwianRpIjoiODQ3Y2FhODQtOGUwMC00ZDJiLThkYzctNmNiOTcxN2FiNDAwIiwiZXhwIjoxNzA3MjQzNzExLCJpc3MiOiJoaWNhcmUubW9iaWxlLmFwaSIsImF1ZCI6ImhpY2FyZS5tb2JpbGUuYXBpIn0.QwsiwHN36a_TRmZz7-JWiRCtxcOdD0RFptsVIGv5_y0',
  //     },
  //   ); // Replace with your API endpoint
  //
  //   if (response.statusCode == 200) {
  //     Map<String, dynamic> jsonData = json.decode(response.body);
  //     List<dynamic> menudata = jsonData['Data'];
  //
  //     setState(() {
  //       // menudata = menudata.map((json) => MenuData.fromJson(json)).toList();
  //       Utils.showsnackbar('menudata:' + menudata.toString(), context);
  //     });
  //   } else {
  //     Utils.toastMessage(
  //         'Failed to load data. Status code: ${response.statusCode}');
  //   }
  // }
  Future<void> fetchData() async {
    try {
      final preferences = await SharedPreferences.getInstance();
      var taketoken = preferences.getString("TOKEN");
      print('taketoken: $taketoken');
      Store.clear();
      Store.setIsLogin(true);

      _dio = Dio(BaseOptions(
        baseUrl: 'https://mobileapi.hicare.in/mobileapi/api/',
        // replace with your API base URL
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $taketoken',
          // replace with your actual token
        },
      ));
      // Make a GET request to a specific endpoint
      final response =
          await _dio.post('Dashboard/GetDashboard?mobileNo=8976399055');

      // Handle the response data
      print('Response Dashboard: ${response.data}');
      Map<String, dynamic> jsonData = json.decode(response.data);
      List<dynamic> data = jsonData['Data'];
      setState(() {
        menudata = data.map((json) => MenuData.fromJson(json)).toList();
        // _buildCarouselSlider(bannerList);
      });
      // Utils.toastMessage(menudata.toString());


      // dashboardModel=DashboardModel();
      // // dashboardModel=response.data;
      //
      //
      // print("BannerDataList1: "+dashboardModel.data!.bannerData.toString());
      //
      // List<BannerData>? bannerdatalist=dashboardModel.data?.bannerData;

      // List<BannerData> bannerDataList = (response.data!['bannerData'] as List<BannerData>)
      //     .map((bannerData) => BannerData.fromJson(bannerData as Map<String, dynamic>))
      //     .toList();
      // bannerList=bannerDataList;
      // _buildCarouselSlider(dashboardModel.data?.bannerData!);

      // Add the carousel_slider page

    } catch (error) {
      // Handle errors
      print('Error: $error');
    }
  }

  Future<void> fetchDatatoken() async {
    try {
      // Make a GET request to a specific endpoint
      Response response =
          await _dio.get('Account/ValidateAccount?mobileNo=8976399055');
      // Handle the response data
      if (response.statusCode == 200) {
        Store.clear();
        Store.setToken(response.data!.token.toString());

        // print('Response Data: $taketoken');
      } else {}
    } catch (error) {
      // Handle errors
      print('Error: $error');
    }
  }
  Widget buildMenu() {
    return Column(
      children: menudata.map((item) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              item.imageUrl ?? "",
              width: 30,
              height: 30,
              color: Color.fromARGB(255, 43, 183, 122),
            ),
            SizedBox(height: 5),
            Text(
              item.title.toString(),
              style: TextStyle(fontSize: 12),
            ),
          ],
        );
      }).toList(),
    );
  }

}
