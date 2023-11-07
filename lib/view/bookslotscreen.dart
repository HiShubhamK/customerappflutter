import 'package:customerappdart/model/getslotresponse.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';

import '../utils/utils.dart';
import '../view_model/auth_viewmodel.dart';

// stateful widget created for calendar class
// class BookSlotScreen extends StatelessWidget {
// @override
// Widget build(BuildContext context) {
//   return MaterialApp(
//     home: CalendarApp(),
//   );
// }
// }
List<Data> items = [

  // Add more items as needed
];

List<IconData> icons = [
  Icons.shopping_cart, // Replace with the desired icons
  Icons.feedback,
  Icons.notification_important,
  Icons.star,
  Icons.message,
  Icons.message
];

class BookSlotScreen extends StatefulWidget {
  final GetSlotResponse? values;
  BookSlotScreen(this.values);

  @override
  _CalendarAppState createState() => _CalendarAppState(values!);
}

class _CalendarAppState extends State<BookSlotScreen> {
  DateTime today = DateTime.now();
  final GetSlotResponse? values;

  _CalendarAppState(this.values);



  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Schedule Slot'),
      ),
      body: Content(),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                '\u{20B9}1000', // Replace with your price value
                style: TextStyle(
                  color: Colors.red, // Set the text color
                  fontSize: 18.0, // Set the font size
                ),
              ),
            ),
            Container(
              width: 180,
              color: Color.fromARGB(255, 43, 183, 122),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Place Order',
                    style: TextStyle(color: Colors.white),
                  )),
            )
            // IconButton(
            //   icon: Icon(Icons.shopping_cart),
            //   onPressed: () {
            //     // Handle cart button click
            //   },
            //   color: Colors.white, // Set the icon color
            // ),
          ],
        ),
      ),
    );
  }

  Widget Content() {
    items.add(values!.data! as Data);
    return Column(

      children: [
        Text('Selected Date:- ' + today.toString().split(" ")[0]),
        Container(
            child: TableCalendar(
                locale: 'en_US',
                availableGestures: AvailableGestures.all,
                rowHeight: 43,
                onDaySelected: _onDaySelected,
                selectedDayPredicate: (day) => isSameDay(day, today),
                headerStyle: HeaderStyle(
                    formatButtonVisible: false, titleCentered: true),
                firstDay: DateTime.now().subtract(Duration(days: 365)),
                lastDay: DateTime.now().add(Duration(days: 365)),
                focusedDay: DateTime.now())),
        SizedBox(height: 20),
        Center(
          child: Text(
            '-:Available slot:-',
            style: TextStyle(
                color: Colors.grey, fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 15),
        Center(
          child: Center(
              child: Row(
            children: [
              Row(
                children: [
                  Text(
                    'From:',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 5),
                  Text(
                    Utils.formateddd_mm_yyydate(today, context),
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(width: 5),
              Row(
                children: [
                  Text(
                    'To:',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 5),
                  Text(
                    Utils.formateddd_mm_yyydate(today, context),
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          )),
        ),
        Expanded(
            child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5.0,
            mainAxisSpacing: 5.0,
          ),
          itemCount: values!.data!.length,
          itemBuilder: (context, index) {
            // Customize the grid item here
            items=values!.data!;
            return GridItem(
                item: values!.data![index], icon: icons[index], date: today);
          },
        )

            // Expanded(child:
            // GridView(
            //   shrinkWrap: true,
            //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //     crossAxisCount: 3,
            //     crossAxisSpacing: 5.0,
            //     mainAxisSpacing: 5.0, // Spacing between rows
            //   ),
            //   children: List.generate(5,
            //     (index) {
            //       return Padding(
            //         padding: const EdgeInsets.all(0.0),
            //         child: Container(
            //           decoration: BoxDecoration(
            //             image: DecorationImage(
            //               image: AssetImage('images/splash.png'),
            //               fit: BoxFit.cover,
            //             ),
            //             borderRadius: BorderRadius.all(
            //               Radius.circular(2.0),
            //             ),
            //           ),
            //         ),
            //       );
            //     },
            //   ),
            // ),
            // ),
            ), // Custom CardView widget
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}

class GridItem extends StatelessWidget {
  final Data item;
  final IconData icon;
  final DateTime date;

  GridItem({
    required this.item,
    required IconData this.icon,
    required DateTime this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        // Use min to make the Column wrap its content
        children: [
          SizedBox(height: 15),
          Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                Text(
                  'Schedule date',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  Utils.formateddd_mm_yyydate(date, context),
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Text(
                  item.scheduledDateText.toString(),
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.green,
                    decoration: TextDecoration.underline,
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
