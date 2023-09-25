import 'package:customerappdart/model/dashboardmodell.dart';
import 'package:customerappdart/model/referrelmodel.dart';
import 'package:customerappdart/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';
import 'package:dotted_border/dotted_border.dart';

import '../view_model/auth_viewmodel.dart';

class ReferAndEarn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ReferAndEarnScreen(),
    );
  }
}

class ReferAndEarnScreen extends StatelessWidget {
  List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    // Add more items as needed
  ];

  List<IconData> icons = [
    Icons.shopping_cart, // Replace with the desired icons
    Icons.feedback,
    Icons.notification_important,
    Icons.star,
    Icons.message
  ];

  // ReferAndEarnScreen(RefData valuesaa);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(245, 245, 245, 245),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Refer and Earn',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),
        centerTitle: true,
      ),
      body: Card(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            // Animated GIF at the top center
            // GifImage(
            //   assetName: 'assets/animated.gif', // Replace with the path to your animated GIF
            //   width: 200,
            //   height: 200,
            // ),
            // Image.asset(
            //   'assets/animoffers.json', // Replace with your animated GIF
            //   width: 200,
            //   height: 200,
            // ),
            SizedBox(height: 20),
            // Heading
            Container(
              child: Center(
                child: Text(
                  'Refer & Earn Rs.250 Amazon Voucher!!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            // Subheading
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Gift your friends and colleagues a 10% off on all a 10% on all services from HiCare.',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color.fromARGB(245, 245, 245, 245),
                borderRadius: BorderRadius.circular(5),
              ),

              child: DottedBorder(
                child: Text(
                  'XXYYZZ123',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[800],
                  ),
                ),

                // child: Container(
                //     padding: EdgeInsets.all(20), //padding of outer Container
                //     child: DottedBorder(
                //       color: Color.fromARGB(255, 43 ,183, 122),//color of dotted/dash line
                //       strokeWidth: 3, //thickness of dash/dots
                //       dashPattern: [10,6],
                //       //dash patterns, 10 is dash width, 6 is space width
                //       child: Container(
                //         margin:EdgeInsets.all(5.0),
                //         child: Text(
                //           'XXYYZZ123',
                //           style: TextStyle(
                //             fontSize: 16,
                //             fontWeight: FontWeight.w600,
                //             color: Colors.grey[800],
                //           ),
                //         ),
                //       ),
                //     )
                // )
              ),
              // Referral code to copy

             ),
            Text(
              'Click to copy above code',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
              SizedBox(height: 20),
              // Share options
              Text(
                'Share now !',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              // Two Rows with Buttons and Icons
              // Center(
              //   child: Column(
              //     children: <Widget>[
              //       RowOfCards(),
              //       SizedBox(height: 20), // Add spacing between rows
              //       RowOfCards(),
              //     ],
              //   ),
              // ),            // Social media share buttons
              //     Expanded(
              //     child: GridView.builder(
              //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //         crossAxisCount: 3,
              //         crossAxisSpacing: 5.0,
              //         mainAxisSpacing: 5.0,
              //       ),
              //       itemCount: items.length,
              //       itemBuilder: (context, index) {
              //         // Customize the grid item here
              //         return GridItem(item: items[index],icon:icons[index]);
              //       },)
              //
              //   // Expanded(child:
              //   // GridView(
              //   //   shrinkWrap: true,
              //   //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //   //     crossAxisCount: 3,
              //   //     crossAxisSpacing: 5.0,
              //   //     mainAxisSpacing: 5.0, // Spacing between rows
              //   //   ),
              //   //   children: List.generate(5,
              //   //     (index) {
              //   //       return Padding(
              //   //         padding: const EdgeInsets.all(0.0),
              //   //         child: Container(
              //   //           decoration: BoxDecoration(
              //   //             image: DecorationImage(
              //   //               image: AssetImage('images/splash.png'),
              //   //               fit: BoxFit.cover,
              //   //             ),
              //   //             borderRadius: BorderRadius.all(
              //   //               Radius.circular(2.0),
              //   //             ),
              //   //           ),
              //   //         ),
              //   //       );
              //   //     },
              //   //   ),
              //   // ),
              //   // ),
            // contact
          ],
        ),
      ),
    );
  }
}

class SocialMediaButton extends StatelessWidget {
  final String icon;
  final String label;
  final Function onPressed;

  SocialMediaButton({
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          icon: Image.asset(icon), // Social media icon
          onPressed: () {
            onPressed();
          },
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}

class RowOfCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        CustomCard(),
        CustomCard(),
      ],
    );
  }
}

class GridItem extends StatelessWidget {
  final String item;
  final IconData icon;

  GridItem({
    required this.item,
    required IconData this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.0),
      child: Center(
        child: Column(
          children: [
            SizedBox(height: 15),
            Center(
              child: Icon(icon,
                  size: 30.0, color: Color.fromARGB(255, 43, 183, 122)),
            ),
            SizedBox(height: 5),
            Text(
              item,
              style: TextStyle(fontSize: 14.0, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Row(
        children: <Widget>[
          Container(
            width: 100, // Adjust the image width as needed
            height: 100, // Adjust the image height as needed
            margin: EdgeInsets.all(8),
            child: Image.network(
              'https://via.placeholder.com/100x100',
              // Replace with your image URL
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(8),
              child: Text(
                'Card Content Here', // Replace with your card text
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
