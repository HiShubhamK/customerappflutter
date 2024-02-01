import 'package:flutter/material.dart';

class AddressScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AddressScreen();
  }
}

class _AddressScreen extends State<AddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Address',
          style: TextStyle(
              fontSize: 14,
              color: Color.fromARGB(255, 43, 183, 122),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Color.fromARGB(255, 43, 183, 122)),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 300, // Set width to take up the full available width
              color: Color.fromARGB(255, 43, 183, 122),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Place Order',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              width: double.infinity, // Set width to match the parent
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 43, 183, 122),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Deliver to Pinode 400080',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),

            Card(
              elevation: 5,
              margin: EdgeInsets.all(20),
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Shipping Address',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Change Address',
                          style: TextStyle(
                              color: Color.fromARGB(255, 43, 183, 55),
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Shipping Address',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Container(// Replace 'Colors.blue' with the color you desire
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 43, 183, 122), // Set the background color here
                            ),
                            child: Text(
                              'Add a new shipping Address',
                              style: TextStyle(
                                backgroundColor: Color.fromARGB(255, 43, 183, 122),
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Billing Address',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Billing Address',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Container(// Replace 'Colors.blue' with the color you desire
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 43, 183, 122), // Set the background color here
                            ),
                            child: Text(
                              'Add a new Billing Address',
                              style: TextStyle(
                                backgroundColor: Color.fromARGB(255, 43, 183, 122),
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),



                    // SizedBox(
                    //   height: 10,
                    // ),
                    // Container(
                    //   width: double.infinity,
                    //   child: Column(
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     children: [
                    //       Padding(
                    //         padding: const EdgeInsets.all(8.0),
                    //         child: ElevatedButton(
                    //           onPressed: () {
                    //             // Navigator.push(context, MaterialPageRoute(builder: (context) => ))
                    //           },
                    //           child: Text('Add a new Billing Address',
                    //               style: TextStyle(
                    //                   backgroundColor:
                    //                       Color.fromARGB(255, 43, 183, 55),
                    //                   color: Colors.white,
                    //                   fontSize: 14,
                    //                   fontWeight: FontWeight.bold)),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    SizedBox(height: 8),
                    Text(
                        '* Only add a billing address,if the shipping and billing addresses differ...',
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontWeight: FontWeight.normal,
                            fontSize: 12)),
                    SizedBox(height: 8),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
