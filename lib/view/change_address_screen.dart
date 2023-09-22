import 'package:flutter/material.dart';

import '../utils/utils.dart';

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
        color: Color.fromARGB(245, 245, 245, 245),
        child:Container(
          child: Card(
              child:Container(
                margin: EdgeInsets.all(10.0),
                color: Color.fromARGB(245, 245, 245, 245),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('  Add new Shipping Address',
                      style:TextStyle(color: Colors.black),),
                    IconButton(onPressed: (){}, icon:Icon(Icons.keyboard_arrow_right_sharp))
                  ],
                ),
              )
          ),
        ),
        // child: Container(
        //   child: Row(
        //     children: [
        //       Container(
        //         width: 340,
        //         color: Color.fromARGB(255, 43, 183, 122),
        //         margin: EdgeInsets.all(10),
        //         child: TextButton(
        //             onPressed: () {},
        //             child: Text(
        //               'Add a new Address',
        //               style: TextStyle(color: Colors.white),
        //             )),
        //       )
        //     ],
        //   ),
        // ),
      ),
      body: Column(
        children: [

          SizedBox(height: 10),
          Expanded(child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.fromLTRB(10, 2, 10, 2),
                child: Card(
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(items[index],   maxLines: 4,
                          overflow: TextOverflow.visible,
                          style: TextStyle(color: Colors.black,fontSize: 12),),
                        SizedBox(height: 5),
                        Text('Phone number: 7738753827',style: TextStyle(color: Colors.black,fontSize: 12),)
                      ],
                    ),
                  )
                ),
              );

            // return ListTile(
            //   title: Text('Item $index'),
            // );
          },
        ))],
      ),
    );
  }
}
