import 'package:customerappdart/model/dashboardmodell.dart';
import 'package:customerappdart/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:provider/provider.dart';

import '../view_model/auth_viewmodel.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  int _selectedIndex = 0;
  final List<String> names = [
    'My Orders',
    'My Complaints',
    'Refer & Earn',
    'Rate Us',
    'Whatsapp',
    'Support',
    'Terms and Condition',
  ];
  final List<IconData> icons = [
    Icons.shopping_cart, // Replace with the desired icons
    Icons.feedback,
    Icons.notification_important,
    Icons.star,
    Icons.message,
    Icons.support_agent,
    Icons.policy,
  ];

  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(
          'My Account',
          style: TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false, // Remove the back arrow
        backgroundColor: Colors.white,
      ),
      drawer: Container(
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: AssetImage('images/avatar.png'),
            ),
            SizedBox(width: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Shubham",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "9090909090",
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: names.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      leading: Icon(
                        icons[index], // Use the specified icon
                        size: 22.0, // Adjust the size as needed
                        color: Colors.black, // Icon color
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            names[index],
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_sharp, // Forward arrow icon
                            color: Colors.black,
                            size: 14.0, // Black arrow color
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 0,
                      color: Colors.grey,
                    ),
                  ],
                );
              },
            ),
          ),
          if (selectedIndex != -1)
            Container(
              // color: Colors.green,
              padding: EdgeInsets.all(16.0),
              // child: Text(
              //   'Selected Item: ${names[selectedIndex]}',
              //   style: TextStyle(
              //     color: Colors.white,
              //     fontSize: 18.0,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
            ),
          Container(
            padding: EdgeInsets.all(16.0),
            child: GestureDetector(
              onTap: () {
                // Handle logout action here
              },
              child: Text(
                'Logout',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            child: GestureDetector(
              onTap: () {
                // Handle logout action here
              },
              child: Text(
                'version 1.0',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
