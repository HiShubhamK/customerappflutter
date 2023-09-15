import 'package:customerappdart/model/dashboardmodell.dart';
import 'package:customerappdart/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:provider/provider.dart';

import '../res/components/categorygridItem.dart';
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
  final List<String> imagePaths = [
    'images/myorders.jpg',  // Replace with the actual image paths
    'images/myorders.jpg',
    'images/myorders.jpg',
    'images/myorders.jpg',
    'images/myorders.jpg',
    'images/myorders.jpg',
    'images/myorders.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Accounts',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),),
        centerTitle: true,
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
                          _selectedIndex = index;
                        });
                      },
                      leading: CircleAvatar(
                        radius: 30.0,
                        backgroundImage: AssetImage(imagePaths[index]),
                      ),
                      title: Text(
                        names[index],
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
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
          if (_selectedIndex != -1)
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Logout',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
        ],
      ),
    );
  }
}