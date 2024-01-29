import 'dart:convert';

import 'package:customerappdart/model/dashboardmodell.dart';
import 'package:customerappdart/view/bookslotscreen.dart';
import 'package:customerappdart/view/cart_screen.dart';
import 'package:customerappdart/view/myorders.dart';
import 'package:customerappdart/view/product_screen.dart';
import 'package:customerappdart/view/productdetailscreen.dart';
import 'package:customerappdart/view/referandearn.dart';
import 'package:customerappdart/view/support_screen.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

import '../res/app_url.dart';
import '../utils/utils.dart';
import '../view_model/auth_viewmodel.dart';
import 'account_screen.dart';
import 'createcomplaint.dart';

class HomeScreen extends StatefulWidget {

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  @override
  void initState() {
    super.initState();
    fetchData();
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
                 builder: (context) => ProductScreen(),
                //   builder: (context) => CartScreen(),
                // builder: (context) => ScreenSupport(),
              ),
            );
            // Map<String, String> data = {
            //   'pincode':'400079' ,
            // };
            // authViewModel.productlistbypincode(data,context);
          }
          if(index==1){

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
          if(index==3){

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
            items: imageUrls.map((imageUrl) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Image.network(
                      imageUrl,
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
              child: Text('Discover',
                style: TextStyle(fontSize: 14, color: Colors.grey),),
            ),
            Container(
              width: 60,
              height: 1,
              color: Colors.grey,
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: GridView.count(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(), // Prevent scrolling
            crossAxisCount: 3,
            childAspectRatio: 1.2, // Adjust aspect ratio as needed
            children: [
              _buildCardIcon("assets/icon1.png", "Name 1"),
              _buildCardIcon("assets/icon2.png", "Name 2"),
              _buildCardIcon("assets/icon3.png", "Name 3"),
              // Add more card icons as needed
            ],
          ),
        )

        // Add other content below the carousel_slider
      ],
    );

  }
  static Widget _buildCardIcon(String iconAsset, String name) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(iconAsset, width: 40),
          SizedBox(height: 10),
          Text(name, textAlign: TextAlign.center),
        ],
      ),
    );
  }
  Future<void> fetchData() async {
    List<MenuData> menudata=[];

    String apiUrl =
       'http://connect.hicare.in/mobileapi/api/Dashboard/GetDashboard?mobile=8976399055';
    final response =
    await http.get(Uri.parse(apiUrl)); // Replace with your API endpoint

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonData = json.decode(response.body);
      List<dynamic> menudata = jsonData['Data'];

      setState(() {
        // menudata = menudata.map((json) => MenuData.fromJson(json)).toList();
        Utils.showsnackbar('menudata:'+menudata.toString(), context);
      });
    } else {
      Utils.toastMessage(
          'Failed to load data. Status code: ${response.statusCode}');
    }
  }


}
