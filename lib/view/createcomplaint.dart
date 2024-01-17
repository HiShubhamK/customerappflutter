import 'dart:convert';

import 'package:customerappdart/model/ComplaintReasons.dart';
import 'package:flutter/material.dart';

import '../model/Product.dart';
import '../utils/utils.dart';
import 'package:http/http.dart' as http;


class CreateComplaint extends StatefulWidget {
  @override
  State<CreateComplaint> createState() => _CreateComplaintState();
}

class _CreateComplaintState extends State<CreateComplaint> {
  String? _selectedItem = 'Item 1'; // Initially selected item
  String? _inputValue = ''; // To store the value from EditText
  var splashscreenimg = 'images/ic_camera.png';
  List<ComplaintReasons> complaintresons = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }


  List<String> _items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4'
  ]; // Sample list of items for the dropdown

  TextEditingController _editTextController1 = TextEditingController();
  TextEditingController _editTextController2 = TextEditingController();
  TextEditingController _editTextController3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
          alignment: Alignment.center,
          width: double.infinity,
          child: Text(
            "Create Complaint",
            style: TextStyle(color: Colors.green, fontSize: 18),
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20), // Adding space above Dropdown
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Order type",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(
                  color: Colors.green,
                  width: 1.0, // Width of the border
                ),
              ),
              child: DropdownButton<String>(
                value: _selectedItem,
                icon: Icon(Icons.arrow_drop_down),
                iconSize: 24,
                elevation: 16,
                style: TextStyle(color: Colors.black),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedItem = newValue!;
                  });
                },
                items: complaintresons.map<DropdownMenuItem<String>>((ComplaintReasons value) {
                  return DropdownMenuItem<String>(
                    value: value.name,
                    child: Text(value.name),
                  );
                }).toList(),
              ),

            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Complaint Type",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(
                  color: Colors.green,
                  width: 1.0, // Width of the border
                ),
              ),
              child:DropdownButton<String>(
                value: _selectedItem,
                icon: Icon(Icons.arrow_drop_down),
                iconSize: 24,
                elevation: 16,
                style: TextStyle(color: Colors.black),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedItem = newValue!;
                  });
                },
                items: complaintresons.map<DropdownMenuItem<String>>((ComplaintReasons value) {
                  return DropdownMenuItem<String>(
                    value: value.name,
                    child: Text(value.name),
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Order Date",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  TextField(
                    controller: _editTextController1,
                    decoration: InputDecoration(
                      hintText: '09-03-2023',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Complaint Subject",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  TextField(
                    controller: _editTextController2,
                    decoration: InputDecoration(
                      hintText: 'Enter complaint subject here',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Description",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  TextField(
                    controller: _editTextController3,
                    decoration: InputDecoration(
                      hintText: 'Enter complaint description here',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: Card(
                child: Center(
                  child: Row(
                    children: [
                      Image.asset(splashscreenimg, height: 45, width: 45),
                      Image.asset(splashscreenimg, height: 45, width: 45),
                      Image.asset(splashscreenimg, height: 45, width: 45),
                      Image.asset(splashscreenimg, height: 45, width: 45),
                      Image.asset(splashscreenimg, height: 45, width: 45),
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                width: double.infinity, // Make the container match the parent width
                child: ElevatedButton(
                  onPressed: () {
                    fetchData();
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 43, 183, 122), // Background color
                  ),
                  child: const Text('Submit'),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );

  }
  Future<void> fetchData() async {
    String apiUrl =
        'http://connect.hicare.in/mobileapi/api/Complaint/GetComplaintReasons?serviceType=Pest';
    final String token = Utils.getToken().toString(); // Replace with your actual token

    final response = await http.get(
      Uri.parse(apiUrl),
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json', // or your desired content type
      },
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonData = json.decode(response.body);
      List<dynamic> jsonProducts = jsonData['Data'];

      setState(() {
        complaintresons =
            jsonProducts.map((json) => ComplaintReasons.fromJson(json)).toList();
        Utils.showsnackbar(complaintresons.toString(), context);
      });
    } else {
      Utils.showsnackbar(
          'Failed to load data. Status code: ${response.statusCode}', context);
    }
  }
}

