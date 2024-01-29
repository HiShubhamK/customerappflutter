import 'package:customerappdart/Button.dart';
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
            Center(
                child: Text('Deliver to Pinode 400080',
                    style: TextStyle(
                        backgroundColor: Color.fromARGB(255, 43, 183, 55),
                        color: Colors.white))),
            Card(
              elevation: 5,
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
                      height: 10,
                       child: ElevatedButton(onPressed: (){}, child: Text('Add a new shipping Address',
                            style: TextStyle(
                                backgroundColor: Color.fromARGB(255, 43, 183, 55),
                                color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold)
                        ),)
                    ),
                    Container(
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(onPressed: (){}, child: Text('Add a new shipping Address',
                            style: TextStyle(
                                backgroundColor: Color.fromARGB(255, 43, 183, 55),
                                color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold)
                            ),),
                          ),
                        ],
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
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(onPressed: (){
                              // Navigator.push(context, MaterialPageRoute(builder: (context) => ))
                            }, child: Text('Add a new Billing Address',
                                style: TextStyle(
                                    backgroundColor: Color.fromARGB(255, 43, 183, 55),
                                    color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold)
                            ),),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    Text('* Only add a billing address,if the shipping and billing addresses differ...',
                    style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.normal,fontSize: 12)),
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
