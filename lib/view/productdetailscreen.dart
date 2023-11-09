import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  // Define the number of horizontal lists
  final int numberOfLists = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Autom0s+1 Refill+2 Batteries-Starter Pack - 90 Days',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 75,
                    color: Colors.red,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Save 500',
                          style: TextStyle(
                              color: Colors.black,
                              backgroundColor: Colors.red,
                              fontSize: 14)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Row(
                      children: [
                        Text('4.8',
                            style:
                            TextStyle(color: Colors.black, fontSize: 12)),
                        SizedBox(width: 3),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 100,
              child: Expanded(
                child: ListView.builder(
                  itemCount: numberOfLists,
                  itemBuilder: (BuildContext context, int index) {
                    return HorizontalList(); // Create a horizontal list for each item
                  },
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Expanded(
                //   child: Container(
                //     color: Colors.blue,
                //     height: 50.0,
                //     child: Center(
                //       child: Text(
                //         'Left Content',
                //         style: TextStyle(color: Colors.white),
                //       ),
                //     ),
                //   ),
                // ),
                // Divider(
                //   color: Colors.black,
                //   height: 50.0,
                //   thickness: 1.0,
                // ),
                // Expanded(
                //   child: Container(
                //     color: Colors.blue,
                //     height: 50.0,
                //     child: Center(
                //       child: Text(
                //         'Left Content',
                //         style: TextStyle(color: Colors.white),
                //       ),
                //     ),
                //   ),
                // )

                Expanded(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                            margin: EdgeInsets.only(bottom: 5),
                            child: Text(
                              'Our price : 899',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            )),
                        SizedBox(height: 3),
                        Text(
                          'Our price : 899',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  height: 50,
                  thickness: 2,
                  color: Colors.black,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(height: 10),
                      Text(
                        'Qty',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            margin: EdgeInsets.all(0.0),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(245, 245, 245, 245),
                              shape: BoxShape
                                  .rectangle, // You can use BoxShape.rectangle for a rectangular shape
                            ),
                            child: IconButton(
                              icon: Icon(Icons.remove),
                              onPressed: () {},
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.all(10), child: Text('1')),
                          Container(
                            margin: EdgeInsets.all(0.0),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(245, 245, 245, 245),
                              shape: BoxShape
                                  .rectangle, // You can use BoxShape.rectangle for a rectangular shape
                            ),
                            child: IconButton(
                              icon: Icon(Icons.add),
                              onPressed: () {},
                            ),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Container(
                            margin: EdgeInsets.all(0.0),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(245, 245, 245, 245),
                              shape: BoxShape
                                  .rectangle, // You can use BoxShape.rectangle for a rectangular shape
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),

            Container(
              width: double.infinity,
              color: Color.fromARGB(255, 43, 183, 122),
              child: TextButton(onPressed: (){},child: Text('ADD TO CART',style: TextStyle(color: Colors.white)
                ,)),
            ),
            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text('Description',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text('Customer Review',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),),
              ],
            ),
            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text('More Information',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),),
              ],
            ),
            SizedBox(height: 10),
            Container(
              height: 100,
              child: Expanded(
                child: ListView.builder(
                  itemCount: numberOfLists,
                  itemBuilder: (BuildContext context, int index) {
                    return HorizontalListReview(); // Create a horizontal list for each item
                  },
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text('FAQ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text('Related Product',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),),
              ],
            ),
            SizedBox(height: 10),
            Container(
              height: 100,
              child: Expanded(
                child: ListView.builder(
                  itemCount: numberOfLists,
                  itemBuilder: (BuildContext context, int index) {
                    return HorizontalList(); // Create a horizontal list for each item
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HorizontalList extends StatelessWidget {
  // Define the number of items in each horizontal list
  final int itemCount = 5;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100, // Adjust the height as needed
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: itemCount,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: 100, // Adjust the width as needed
            margin: EdgeInsets.all(8),
            color: Colors.blue,
            child: Center(
              child: Text('Item ${index + 1}'),
            ),
          );
        },
      ),
    );
  }
}


class HorizontalListReview extends StatelessWidget {
  // Define the number of items in each horizontal list
  final int itemCount = 5;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100, // Adjust the height as needed
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: itemCount,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: 330, // Adjust the width as needed
            margin: EdgeInsets.all(8),
            color: Colors.blue,
            child: Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Item ${index + 1}'),
                    Text('Item ${index + 1}'),
                  ],
                ),
              ],

            ),
          );
        },
      ),
    );
  }
}



































// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // TRY THIS: Try running your application with "flutter run". You'll see
//         // the application has a blue toolbar. Then, without quitting the app,
//         // try changing the seedColor in the colorScheme below to Colors.green
//         // and then invoke "hot reload" (save your changes or press the "hot
//         // reload" button in a Flutter-supported IDE, or press "r" if you used
//         // the command line to start the app).
//         //
//         // Notice that the counter didn't reset back to zero; the application
//         // state is not lost during the reload. To reset the state, use hot
//         // restart instead.
//         //
//         // This works for code too, not just values: Most code changes can be
//         // tested with just a hot reload.
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.
//
//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Product Detail'),
//       ),
//       body: ListView(
//         children: <Widget>[
//           Image.network(
//             'https://s3.ap-south-1.amazonaws.com/hicare-others/4f002390-b50a-41c8-8268-4a6e62d050f7.png',
//             height: 300,
//             width: double.infinity,
//             fit: BoxFit.cover,
//           ),
//           Padding(
//             padding: EdgeInsets.all(16),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Text(
//                   'Product Title',
//                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 8),
//                 Row(
//                   children: <Widget>[
//                     Icon(Icons.star, color: Colors.yellow),
//                     Icon(Icons.star, color: Colors.yellow),
//                     Icon(Icons.star, color: Colors.yellow),
//                     Icon(Icons.star_half, color: Colors.yellow),
//                     Icon(Icons.star_border, color: Colors.yellow),
//                     Text('4.5 (2,345 Reviews)'),
//                   ],
//                 ),
//                 SizedBox(height: 16),
//                 Text(
//                   'Price: \$99.99',
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 16),
//                 Text(
//                   'Product Description: Lorem ipsum dolor sit amet, consectetur adipiscing elit...',
//                   style: TextStyle(fontSize: 16),
//                 ),
//               ],
//             ),
//           ),
//
//           ListView(
//             children: <Widget>[
//               Image.network(
//                 'https://s3.ap-south-1.amazonaws.com/hicare-others/4f002390-b50a-41c8-8268-4a6e62d050f7.png',
//                 height: 300,
//                 width: double.infinity,
//                 fit: BoxFit.cover,
//               ),
//               Padding(
//                 padding: EdgeInsets.all(16),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     Text(
//                       'Product Title',
//                       style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                     ),
//                     SizedBox(height: 8),
//                     Row(
//                       children: <Widget>[
//                         Icon(Icons.star, color: Colors.yellow),
//                         Icon(Icons.star, color: Colors.yellow),
//                         Icon(Icons.star, color: Colors.yellow),
//                         Icon(Icons.star_half, color: Colors.yellow),
//                         Icon(Icons.star_border, color: Colors.yellow),
//                         Text('4.5 (2,345 Reviews)'),
//                       ],
//                     ),
//                     SizedBox(height: 16),
//                     Text(
//                       'Price: \$99.99',
//                       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                     ),
//                     SizedBox(height: 16),
//                     Text(
//                       'Product Description: Lorem ipsum dolor sit amet, consectetur adipiscing elit...',
//                       style: TextStyle(fontSize: 16),
//                     ),
//                   ],
//                 ),
//               ),
//               // Add more sections like product details, reviews, etc.
//             ],
//           ),
//
//           // Add more sections like product details, reviews, etc.
//         ],
//
//
//
//       ),
//     );
//   }
//
// // int _counter = 0;
// //
// // void _incrementCounter() {
// //   setState(() {
// //     // This call to setState tells the Flutter framework that something has
// //     // changed in this State, which causes it to rerun the build method below
// //     // so that the display can reflect the updated values. If we changed
// //     // _counter without calling setState(), then the build method would not be
// //     // called again, and so nothing would appear to happen.
// //     _counter++;
// //   });
// // }
// //
// // @override
// // Widget build(BuildContext context) {
// //   // This method is rerun every time setState is called, for instance as done
// //   // by the _incrementCounter method above.
// //   //
// //   // The Flutter framework has been optimized to make rerunning build methods
// //   // fast, so that you can just rebuild anything that needs updating rather
// //   // than having to individually change instances of widgets.
// //   return Scaffold(
// //     appBar: AppBar(
// //       // TRY THIS: Try changing the color here to a specific color (to
// //       // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
// //       // change color while the other colors stay the same.
// //       backgroundColor: Theme.of(context).colorScheme.inversePrimary,
// //       // Here we take the value from the MyHomePage object that was created by
// //       // the App.build method, and use it to set our appbar title.
// //       title: Text(widget.title),
// //     ),
// //     body: Center(
// //       // Center is a layout widget. It takes a single child and positions it
// //       // in the middle of the parent.
// //       child: Column(
// //         // Column is also a layout widget. It takes a list of children and
// //         // arranges them vertically. By default, it sizes itself to fit its
// //         // children horizontally, and tries to be as tall as its parent.
// //         //
// //         // Column has various properties to control how it sizes itself and
// //         // how it positions its children. Here we use mainAxisAlignment to
// //         // center the children vertically; the main axis here is the vertical
// //         // axis because Columns are vertical (the cross axis would be
// //         // horizontal).
// //         //
// //         // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
// //         // action in the IDE, or press "p" in the console), to see the
// //         // wireframe for each widget.
// //         mainAxisAlignment: MainAxisAlignment.center,
// //         children: <Widget>[
// //           const Text(
// //             'You have pushed the button this many times:',
// //           ),
// //           Text(
// //             '$_counter',
// //             style: Theme.of(context).textTheme.headlineMedium,
// //           ),
// //         ],
// //       ),
// //     ),
// //     floatingActionButton: FloatingActionButton(
// //       onPressed: _incrementCounter,
// //       tooltip: 'Increment',
// //       child: const Icon(Icons.add),
// //     ), // This trailing comma makes auto-formatting nicer for build methods.
// //   );
// // }
// }