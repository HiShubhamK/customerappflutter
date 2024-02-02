import 'dart:ffi';

import 'package:flutter/material.dart';

import '../widgets/edittext_Input_field.dart';

class AddAddressScreen extends StatelessWidget {
  @override
  final GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController name = TextEditingController();
  TextEditingController mobilenumber = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController flat = TextEditingController();
  TextEditingController building = TextEditingController();
  TextEditingController street = TextEditingController();
  TextEditingController locality = TextEditingController();
  TextEditingController landmark = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController state = TextEditingController();
  TextEditingController pincode = TextEditingController();

  String dropdownvalue = 'Item 1';

  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Address',
          style: TextStyle(
              fontSize: 20,
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
                onPressed: () {
                  if (_formKey.currentState != null && _formKey.currentState!.validate()) {
                    return null;
                  } else {

                  }
                },
                child: Text(
                  'Save',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
      body:  SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                child: DropdownButton(
                  // Initial Value
                  value: dropdownvalue,
                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    // setState(() {
                    //   dropdownvalue = newValue!;
                    // });
                  },
                ),
              ),
              Form(
                  key: _formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        //cardview start here

                        // Container(
                        //   child: Card(
                        //     child: Container(
                        //       margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        //       child: Column(
                        //         children: [
                        //           Container(
                        //             alignment: Alignment.centerLeft,
                        //             child: Text("Personal Inforamtion",style:TextStyle(
                        //                 fontSize: 14,
                        //                 fontWeight: FontWeight.w600,
                        //                 color: Colors.black
                        //             ),),
                        //           ),
                        //           SizedBox(height: 10,),
                        //           EditTextInputField(
                        //             hintTextToDisplay: "Name",
                        //             textEditingController: name,
                        //             errormessage: "Enter name",
                        //           ),
                        //           SizedBox(height: 10),
                        //           EditTextInputField(
                        //             hintTextToDisplay: "Mobile no",
                        //             textEditingController: mobilenumber,
                        //             errormessage: "Enter mobile number",
                        //           ),
                        //           SizedBox(height: 10),
                        //           EditTextInputField(
                        //             hintTextToDisplay: "Email",
                        //             textEditingController: email,
                        //             errormessage: "Enter email adddress",
                        //           ),
                        //         ],
                        //       ),
                        //     ),
                        //   ),
                        // ),

                        //cardview end here

                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text("Personal Inforamtion",style:TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black
                          ),),
                        ),
                        SizedBox(height: 10,),
                        EditTextInputField(
                          hintTextToDisplay: "Name",
                          textEditingController: name,
                          errormessage: "Enter name",
                        ),
                        SizedBox(height: 10),

                        Row(
                          children: [
                            Expanded(child:
                            EditTextInputField(
                              hintTextToDisplay: "Mobile no",
                              textEditingController: mobilenumber,
                              errormessage: "Enter mobile number",
                            ),),
                            SizedBox(width: 10),
                            Expanded(child:
                            EditTextInputField(
                              hintTextToDisplay: "Email",
                              textEditingController: email,
                              errormessage: "Enter email adddress",
                            ),)
                          ],
                        ),
                        SizedBox(height: 10),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text("Address",style:TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.black
                          ),),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Expanded(
                              child: EditTextInputField(
                                hintTextToDisplay: "Flat",
                                textEditingController: flat,
                                errormessage: "Enter flat",
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: EditTextInputField(
                                hintTextToDisplay: "Building",
                                textEditingController: building,
                                errormessage: "Enter building",
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Expanded(
                              child: EditTextInputField(
                              hintTextToDisplay: "Street",
                              textEditingController: street,
                              errormessage: "Enter street",
                            ),),
                            SizedBox(width: 10),
                            Expanded(child:
                            EditTextInputField(
                              hintTextToDisplay: "Locality",
                              textEditingController: locality,
                              errormessage: "Enter locality",
                            ),),
                          ],
                        ),
                        // EditTextInputField(
                        //   hintTextToDisplay: "Flat",
                        //   textEditingController: flat,
                        //   errormessage: "Enter  flat",
                        // ),
                        // SizedBox(height: 10),
                        // EditTextInputField(
                        //   hintTextToDisplay: "Building",
                        //   textEditingController: building,
                        //   errormessage: "Enter building",
                        // ),
                        SizedBox(height: 10),


                        Row(
                          children: [
                            Expanded(child:
                            EditTextInputField(
                              hintTextToDisplay: "Street",
                              textEditingController: street,
                              errormessage: "Enter street",
                            ),),
                            SizedBox(width: 10),
                            Expanded(child:
                            EditTextInputField(
                              hintTextToDisplay: "Locality",
                              textEditingController: locality,
                              errormessage: "Enter locality",
                            ),
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Expanded(child:
                            EditTextInputField(
                              hintTextToDisplay: "Landmark",
                              textEditingController: landmark,
                              errormessage: "Enter landmmark",
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(child:
                            EditTextInputField(
                              hintTextToDisplay: "City",
                              textEditingController: city,
                              errormessage: "Enter city",
                            ),),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Expanded(child:
                            EditTextInputField(
                              hintTextToDisplay: "State",
                              textEditingController: state,
                              errormessage: "Enter State",
                            ),),
                            SizedBox(width: 10),
                            Expanded(child:
                            EditTextInputField(
                              hintTextToDisplay: "Pincode",
                              textEditingController: pincode,
                              errormessage: "Enter pincode",
                            ),),
                          ],
                        ),

                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
