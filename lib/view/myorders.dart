import 'package:customerappdart/model/dashboardmodell.dart';
import 'package:customerappdart/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:provider/provider.dart';

import '../view_model/auth_viewmodel.dart';

class MyOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2, // Number of tabs
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              'My Orders',
              style: TextStyle(color: Colors.green),
            ),
            centerTitle: true,
            // Center align the title
            leading: BackButton(color: Colors.green),
            bottom: TabBar(
              tabs: [
                CustomTab('SERVICES'),
                CustomTab('PRODUCTS'),
              ],
              indicator: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.green, // Color of the indicator line
                    width: 4.0, // Height of the indicator line
                  ),
                ),
              ),
              labelColor: Colors.green, // Selected tab text color
            ),
          ),
          body: TabBarView(
            children: [
              Tab1Screen(), // Screen for Tab 1
              Tab2Screen(), // Screen for Tab 2
            ],
          ),
        ),
      ),
    );
  }
}

// Tab1Screen.dart

class Tab1Screen extends StatefulWidget {
  @override
  _Tab1ScreenState createState() => _Tab1ScreenState();
}

class _Tab1ScreenState extends State<Tab1Screen> {
  Color button1Color = Colors.grey;
  Color button2Color = Colors.grey;
  Color button3Color = Colors.grey;
  Color button4Color = Colors.grey;

  void _onButton1Click() {
    setState(() {
      button1Color = Colors.green;
      button2Color = Colors.grey;
      button3Color = Colors.grey;
      button4Color = Colors.grey;
    });
  }

  void _onButton2Click() {
    setState(() {
      button1Color = Colors.grey;
      button2Color = Colors.green;
      button3Color = Colors.grey;
      button4Color = Colors.grey;
    });
  }

  void _onButton3Click() {
    setState(() {
      button1Color = Colors.grey;
      button2Color = Colors.grey;
      button3Color = Colors.green;
      button4Color = Colors.grey;
    });
  }

  void _onButton4Click() {
    setState(() {
      button1Color = Colors.grey;
      button2Color = Colors.grey;
      button3Color = Colors.grey;
      button4Color = Colors.green;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Profile> profiles = [
      Profile(
        name: 'Rodex 24 Services Fortnightly 1 Yr R....',
        imageUrl: 'images/splash.png',
        description: '2361818314',
        startdate: '30-01-2023',
        enddate: '02-02-2023',
        location: 'Test Lead COD Test COD,Text Lead COD,999999',
        amount: '\u{20B9} 5000',
        status: 'Cancelled',
      ),
      // Profile(
      //   name: 'Jane Smith',
      //   imageUrl: 'assets/profile2.jpg',
      //   description: 'Graphic Designer',
      //   age: 28,
      //   location: 'Los Angeles',
      // ),
      // Add more profiles as needed
    ];

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 20.0), // Spacer
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: _onButton1Click,
                style: ElevatedButton.styleFrom(primary: button1Color),
                child: Text(
                  'Active',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(width: 10.0),
              ElevatedButton(
                onPressed: _onButton2Click,
                style: ElevatedButton.styleFrom(primary: button2Color),
                child: Text(
                  'Expand',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(width: 10.0),
              ElevatedButton(
                onPressed: _onButton3Click,
                style: ElevatedButton.styleFrom(primary: button3Color),
                child: Text('Cancelled', style: TextStyle(color: Colors.white)),
              ),
              SizedBox(width: 10.0),
              ElevatedButton(
                onPressed: _onButton4Click,
                style: ElevatedButton.styleFrom(primary: button4Color),
                child: Text(
                  'All',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: profiles.length,
              itemBuilder: (context, index) {
                final profile = profiles[index];
                // return ListTile(
                //   leading: CircleAvatar(
                //     backgroundImage: AssetImage(profile.imageUrl),
                //   ),
                //   title: Text(profile.name),
                //   subtitle: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Text(profile.description),
                //       Divider(
                //         height: 0,
                //         color: Colors.grey,
                //
                //       ),
                //       // Text('Age: ${profile.age}'),
                //       // Divider(
                //       //   height: 0,
                //       //   color: Colors.grey,
                //       // ),
                //       Text('Location: ${profile.location}'),
                //     ],
                //   ),                  onTap: () {
                //     // Handle profile tap
                //     // You can navigate to a profile detail page or perform other actions here
                //   },
                // );
                return Card(

                  margin: EdgeInsets.all(10.0),
                  elevation: 4.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [


                      ListTile(
                          leading:Image.asset(
                            profile.imageUrl,
                            width: 45, // Set the width of the image
                            height: 45, // Set the height of the image
                          ),
                        title: Text(profile.name),
                        subtitle: Text(profile.description),
                      ),
                      Divider(
                        height: 1,
                        color: Colors.grey,
                      ),
                      ListTile(
                        title: Text('${profile.location}',style: TextStyle(fontSize: 14,color: Colors.black),),
                        subtitle: Text('Start Date: ${profile.startdate} ' +
                            ' | ' +
                            'End Date: ${profile.enddate}',style: TextStyle(fontSize: 12,color: Colors.black),),
                      ),
                      Divider(
                        height: 1,
                        color: Colors.grey,
                      ),

                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 16.0), // Add space to the right
                          child: Text('${profile.amount} >',style: TextStyle(fontSize: 14,color: Colors.grey),),
                        ),

                      ),

                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class TabColors {
  static final Color unselectedColor = Colors.grey;
  static final Color selectedColor = Colors.green;
}

// Tab2Screen.dart

class Tab2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('There is no product available!'),
    );
  }
}

class CustomTab extends StatefulWidget {
  final String text;

  CustomTab(this.text);

  @override
  _CustomTabState createState() => _CustomTabState();
}

class _CustomTabState extends State<CustomTab> {
  final String text = "";
  final bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(
        widget.text,
        style: TextStyle(
          fontSize: 16.0,
          color: _isSelected ? Colors.green : Colors.grey,
          // Change text color based on selection
          backgroundColor: Colors.transparent, // Remove background color
        ),
      ),
    );
  }
}

class Profile {
  final String name;
  final String imageUrl;
  final String description;
  final String startdate;
  final String enddate;
  final String location;
  final String amount;
  final String status;

  Profile({
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.startdate,
    required this.enddate,
    required this.location,
    required this.amount,
    required this.status,
  });
}
