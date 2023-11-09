import 'package:flutter/material.dart';

class CreateComplaint extends StatefulWidget {
  @override
  State<CreateComplaint> createState() => _CreateComplaintState();
}

class _CreateComplaintState extends State<CreateComplaint> {
  String _selectedItem = 'Item 1'; // Initially selected item
  String _inputValue = ''; // To store the value from EditText

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20), // Adding space above Dropdown
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Order type",
              style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),
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
              underline: Container(),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedItem = newValue!;
                });
              },
              items: _items.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Complaint Type",
              style: TextStyle(fontSize: 16),
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
              items: _items.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
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
                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),
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
                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),
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
                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),
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
        ],
      ),
    );
  }
}
