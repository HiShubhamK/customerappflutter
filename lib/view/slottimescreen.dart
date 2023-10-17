import 'package:flutter/material.dart';

class SlotTimeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TimeSlotList(),
    );
  }
}

class TimeSlotList extends StatelessWidget {
  final List<String> timeSlots = [
    '9:00 AM - 11:00 AM',
    '11:00 AM - 1:00 PM',
    '1:00 PM - 3:00 PM',
    '3:00 PM - 5:00 PM',
    '5:00 PM - 7:00 PM',
  ];

  String? selectedTimeSlot; // Initialize as nullable

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Select Slots',
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.green,
          ),
          onPressed: () {
            // Handle back button press
          },
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: timeSlots.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(8.0),
            child: TimeSlotCard(
              timeSlot: timeSlots[index],
              isSelected: selectedTimeSlot == timeSlots[index],
              onSelectionChanged: (isSelected) {
                if (isSelected==true) {
                  selectedTimeSlot = timeSlots[index];
                }
              },
            ),
          );
        },
      ),
    );
  }
}
class TimeSlotCard extends StatefulWidget {
  final String timeSlot;
  final bool isSelected;
  final ValueChanged<bool?> onSelectionChanged;

  TimeSlotCard({
    required this.timeSlot,
    required this.isSelected,
    required this.onSelectionChanged,
  });

  @override
  _TimeSlotCardState createState() => _TimeSlotCardState();
}

class _TimeSlotCardState extends State<TimeSlotCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onSelectionChanged(!widget.isSelected); // Toggle the selection
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), // Make it circular
          border: Border.all(
            color: widget.isSelected ? Colors.green : Colors.green, // Change border color when selected
            width: 2.0,
          ),
          color: widget.isSelected ? Colors.green : Colors.transparent, // Fill with color when selected
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.timeSlot,
                style: TextStyle(fontSize: 18.0),
              ),
              Container(
                width: 24, // Width of the circular radio button
                height: 24, // Height of the circular radio button
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.green, // Border color when selected
                    width: 2.0,
                  ),
                  color: Colors.transparent, // Transparent background for the radio button
                ),
                child: widget.isSelected
                    ? Icon(
                  Icons.circle,
                  size: 16.0,
                  color: Colors.green, // Icon color when selected
                )
                    : null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

