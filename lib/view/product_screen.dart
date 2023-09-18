import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductScreen();
  }
}

class _ProductScreen extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Product',
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
        margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Save 500',style: TextStyle(color: Colors.white,backgroundColor: Colors.red)),
                    Image.asset('images/splash.png', height: 130, width: 130),                  ],
                ),
                SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Productname',style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold)),
                      SizedBox(height: 3),
                      Text('Rating',style: TextStyle(color: Colors.black,fontSize: 14)),
                      SizedBox(height: 3),
                      Text('Save 500',style: TextStyle(color: Colors.black,fontSize: 14)),
                      SizedBox(height: 3),
                      Text('Price',style: TextStyle(color: Colors.black,fontSize: 14)),
                      SizedBox(height: 10),

                       SizedBox(
                         height: 40,
                         width: 100,
                         child: TextButton(onPressed: (){},
                              child: const Text('Add to Cart',style: TextStyle(color: Colors.white,fontSize: 14,backgroundColor: Color.fromARGB(255, 43, 183, 122)))),
                       ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}