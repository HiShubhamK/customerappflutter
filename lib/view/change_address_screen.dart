import 'package:flutter/material.dart';

class ChangeAddressScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ChangeAddressScreen();
  }
}

class _ChangeAddressScreen extends State<ChangeAddressScreen> {
  List<String> items = [
    'Automos one refill 1',
    'Automos one refill  2',
    'Automos one refill  3',
    'Automos one refill 4',
    'Automos one refill  5',
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
        // Remove the back arrow
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Color.fromARGB(255, 43, 183, 122)),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          child: Row(
            children: [
              Container(
                width: 340,
                color: Color.fromARGB(255, 43, 183, 122),
                margin: EdgeInsets.all(10),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Place Order',
                      style: TextStyle(color: Colors.white),
                    )),
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: [Expanded(child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text('Item $index'),
            );
          },
        ))],
      ),
    );
  }
}
