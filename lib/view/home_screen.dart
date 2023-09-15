import 'package:customerappdart/model/dashboardmodell.dart';
import 'package:customerappdart/utils/utils.dart';
import 'package:customerappdart/view/account_screen.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:provider/provider.dart';

import '../res/components/categorygridItem.dart';
import '../view_model/auth_viewmodel.dart';

class HomeScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    _buildCarouselSlider(),
    Center(
      child: Text("Home"),
    ),
    // Navigator.push(context,);
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
    // Map<String, String> data = {
    //   'mobileNo':Utils.mobile,
    // };
    // authViewModel.Dashboard(data, context);
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
          if(index==3){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AccountScreen(),
              ),
            );
          }
          setState(() {
            _currentIndex = index;

            //   if(_pages[_currentIndex]=="Home"){
            //     _buildCarouselSlider(); // Add the carousel_slider page
            //
            // }
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

    return Column(children: [
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
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(10 as Radius),
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
            child: Text(
              'Discover Hicare',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.grey),
            ),
          ),
          Container(
            width: 60,
            height: 1,
            color: Colors.grey,
          ),

          // Add other content below the carousel_slider
        ],
      ),
      // Container(
      //   margin: EdgeInsets.all(8.0), // Add margin here
      //   padding: EdgeInsets.all(8.0),
      //   child: Column(
      //     children: [
      //       Expanded(
      //         child:GridView.builder(
      //           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //             crossAxisCount: 2, // Number of columns in the grid
      //           ),
      //           itemCount: gridData.length, // Number of items in the grid
      //           itemBuilder: (BuildContext context, int index) {
      //             return GridItem(data: gridData[index]);
      //           },
      //         ),
      //       ),
      //     ],
      //   ),
      // ),

    ]);
  }
}

class Choice {
  const Choice({required this.title, required this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Home', icon: Icons.home),
  const Choice(title: 'Contact', icon: Icons.contacts),
  const Choice(title: 'Map', icon: Icons.map),
  const Choice(title: 'Phone', icon: Icons.phone),
  const Choice(title: 'Camera', icon: Icons.camera_alt),
  const Choice(title: 'Setting', icon: Icons.settings),
  const Choice(title: 'Album', icon: Icons.photo_album),
  const Choice(title: 'WiFi', icon: Icons.wifi),
];

class GridItem extends StatelessWidget {
  final Map<String, dynamic> data;

  GridItem({required this.data});

  @override
  Widget build(BuildContext context) {
    String imageUrl = data['imageUrl'];
    String text = data['text'];

    return Container(
      margin: EdgeInsets.all(8.0), // Add margin here
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 1.0,
        ),
      ),
      child: Column(
        children: [
          Image.network(
            imageUrl, // Use the imageUrl from data
            width: 100.0, // Adjust the width as needed
            height: 100.0, // Adjust the height as needed
          ),
          SizedBox(height: 8.0), // Add spacing between image and text
          Text(
            text, // Use the text from data
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}List<Map<String, dynamic>> gridData = [
  {
    'imageUrl': 'https://via.placeholder.com/150',
    'text': 'Item 1',
  },
  {
    'imageUrl': 'https://via.placeholder.com/150',
    'text': 'Item 2',
  },
  {
    'imageUrl': 'https://via.placeholder.com/150',
    'text': 'Item 3',
  },
  {
    'imageUrl': 'https://via.placeholder.com/150',
    'text': 'Item 4',
  },
];
