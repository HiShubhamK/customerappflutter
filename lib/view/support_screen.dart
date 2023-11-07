import 'package:flutter/material.dart';

class ScreenSupport extends StatefulWidget {
  @override
  State<ScreenSupport> createState() {
    return _ScreenSupport();
  }
}

class _ScreenSupport extends State<ScreenSupport> {
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
    Icons.message];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.call_rounded),
        backgroundColor: Color.fromARGB(255, 43, 183, 122),
        tooltip: 'Action',
        onPressed: () {

        }, label: Text('Get a Call',style: TextStyle(color: Colors.white,fontSize: 14)),
      ),
      appBar: AppBar(
        title: Text(
          'Support',
          style: TextStyle(
              fontSize: 14,
              color: Color.fromARGB(255, 43, 183, 122),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        automaticallyImplyLeading: true,
        // Remove the back arrow
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Color.fromARGB(255, 43, 183, 122)),
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          children: [
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Email',
                    style: TextStyle(color: Colors.black, fontSize: 14,fontWeight: FontWeight.bold)),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(Icons.email_outlined,
                        color: Color.fromARGB(255, 43, 183, 122)),
                    SizedBox(width: 10),
                    Text('info@hicare.in',
                        style: TextStyle(color: Colors.black, fontSize: 14)),
                  ],
                )
              ],
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Contact Details',
                    style: TextStyle(color: Colors.black, fontSize: 14,fontWeight: FontWeight.bold)),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(Icons.call_rounded,
                        color: Color.fromARGB(255, 43, 183, 122)),
                    SizedBox(width: 10),
                    Text('8828333888',
                        style: TextStyle(color: Colors.black, fontSize: 14)),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(Icons.whatshot,
                        color: Color.fromARGB(255, 43, 183, 122)),
                    SizedBox(width: 10),
                    Text('9324747360',
                        style: TextStyle(color: Colors.black, fontSize: 14)),
                  ],
                )
              ],
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text('Registered Head office',
                    style: TextStyle(color: Colors.black, fontSize: 14,fontWeight: FontWeight.bold)),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(Icons.location_on,
                        color: Color.fromARGB(255, 43, 183, 122)),
                    Container(
                      width: 270,
                      height: 50,
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      // padding: const EdgeInsets.all(10),
                      child: Text(
                          'HiCare Services PVT LTD.301, 3rd Floor, L.D. Building,Mehra Industrial Estate, L.B.S. Marg,Vikhroli West, Mumbai - 400079.',
                          maxLines: 4,
                          overflow: TextOverflow.visible,
                          style: TextStyle(color: Colors.black, fontSize: 14)),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 40), //Register address
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
                    'FOLLOW US',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ),
                Container(
                  width: 60,
                  height: 1,
                  color: Colors.grey,
                ),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 5.0,
                    mainAxisSpacing: 5.0,
                  ),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    // Customize the grid item here
                    return GridItem(item: items[index],icon:icons[index]);
                  },)

              // Expanded(child:
              // GridView(
              //   shrinkWrap: true,
              //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //     crossAxisCount: 3,
              //     crossAxisSpacing: 5.0,
              //     mainAxisSpacing: 5.0, // Spacing between rows
              //   ),
              //   children: List.generate(5,
              //     (index) {
              //       return Padding(
              //         padding: const EdgeInsets.all(0.0),
              //         child: Container(
              //           decoration: BoxDecoration(
              //             image: DecorationImage(
              //               image: AssetImage('images/splash.png'),
              //               fit: BoxFit.cover,
              //             ),
              //             borderRadius: BorderRadius.all(
              //               Radius.circular(2.0),
              //             ),
              //           ),
              //         ),
              //       );
              //     },
              //   ),
              // ),
              // ),
            ),  // contact
          ],
        ),

      ),

    );
  }
}

class GridItem extends StatelessWidget {
  final String item;
  final IconData icon;

  GridItem({required this.item, required IconData this.icon,});

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
                  size: 30.0,
                  color: Color.fromARGB(255, 43, 183, 122)),
            ),
            SizedBox(height: 5),
            Text(
              item,
              style: TextStyle(fontSize: 14.0,color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}