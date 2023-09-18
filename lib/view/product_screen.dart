import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductScreen();
  }
}

class _ProductScreen extends State<ProductScreen> {
  List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    // Add more items as needed
  ];
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
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Card(
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
                          SizedBox(height: 5),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Image.asset('images/splash.png', height: 130, width: 130,)),                  ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(items[index],style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold)),
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



          // return ListTile(
          //   title: Text(items[index]),
          // );
        },)
      
    );
  }

}