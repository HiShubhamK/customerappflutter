import 'package:flutter/material.dart';

class AddressScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
      return _AddressScreen();
  }

}

class _AddressScreen extends State<AddressScreen> {
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
        child:Container(
          child: Row(
            children: [
              Container(
                width: 340,
                color: Color.fromARGB(255, 43, 183, 122),
                margin: EdgeInsets.all(10),
                child: TextButton(onPressed: () {},
                    child: Text('Place Order',style: TextStyle(color: Colors.white),)),
              )
            ],
          ),
        ),
      ),

      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Card(
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Shipping Address',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                          Text('Change Address',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color.fromARGB(255, 43, 183, 122)),),
                        ],
                      )),
                  SizedBox(height: 5),
                  Container(
                    width: double.infinity,
                    height: 50,
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    // padding: const EdgeInsets.all(10),
                    child: Text(
                        'HiCare Services PVT LTD.301, 3rd Floor, L.D. Building,Mehra Industrial Estate, L.B.S. Marg,Vikhroli West, Mumbai - 400079.',
                        maxLines: 4,
                        overflow: TextOverflow.visible,
                        style: TextStyle(color: Colors.black, fontSize: 14)),
                  ),
                  SizedBox(height: 5),

                  Container(
                    child: Card(
                      child:Container(
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


                  Container(
                      margin: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Billing Address',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                        ],
                      )),

                  SizedBox(height: 5),
                  Container(
                    width: double.infinity,
                    height: 50,
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    // padding: const EdgeInsets.all(10),
                    child: Text(
                        'HiCare Services PVT LTD.301, 3rd Floor, L.D. Building,Mehra Industrial Estate, L.B.S. Marg,Vikhroli West, Mumbai - 400079.',
                        maxLines: 4,
                        overflow: TextOverflow.visible,
                        style: TextStyle(color: Colors.black, fontSize: 14)),
                  ),

                  Container(
                      child: Row(
                        children: [
                          Checkbox(
                            value: true, // Set the initial value of the checkbox
                            onChanged: (bool? newValue) {
                              // Handle checkbox state changes here
                            },
                          ),
                          Text(
                            'My Billing and Shipping address are different',
                            style: TextStyle(fontSize: 12),
                          ),

                        ],
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}