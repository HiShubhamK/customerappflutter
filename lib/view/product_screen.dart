
import 'package:customerappdart/model/productlistresponse.dart';
import 'package:customerappdart/utils/utils.dart';
import 'package:customerappdart/view/bookslotscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';
import '../view_model/auth_viewmodel.dart';

class ProductScreen extends StatelessWidget {
  final ProductListResponse? values;
  ProductScreen(this.values);

  @override
  _ProductScreen createState() {
    return _ProductScreen(values!);
  }

  @override
  Widget build(BuildContext context) {
    final authViewModel = Provider.of<AuthViewModel>(context);
    var data=values;
    var data2 =data!.data;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  decoration: BoxDecoration(
                    border:
                    Border.all(color: Color.fromARGB(255, 43, 183, 122)),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'Pincode...',
                      border: InputBorder.none,
                      // icon: Icon(Icons.search),
                    ),
                    onSubmitted: (value) {
                      // Implement search functionality here
                      print('Search query: $value');
                    },
                  ),
                ),
              ),
              SizedBox(width: 3),
              IconButton(
                icon: Icon(Icons.search,
                    color: Color.fromARGB(255, 43, 183, 122)),
                // Add your cart icon here
                onPressed: () async{
                  Map<String, String> data = {
                    'pincode':'400079' ,
                  };
                  authViewModel.productlistbypincode(data,context);

                  // Implement cart functionality
                },
              ),
              SizedBox(width: 3),
              IconButton(
                icon: Icon(Icons.shopping_cart,
                    color: Color.fromARGB(255, 43, 183, 122)),
                onPressed: () {},
              ),
            ],
          ),
          automaticallyImplyLeading: false,
        ),
        body: Column(
          children: [
            Expanded(
                child: ListView.builder(
                  itemCount: data2!.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      child: Card(
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0), // Adjust the radius as needed
                        ),
                        margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(0, 0, 2, 2),
                                        child: Text(' Save '+data2[index].discount.toString(),
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12,
                                                backgroundColor: Colors.red)),
                                      ),
                                    ),
                                    Container(
                                      height: 130,
                                      width: 130,
                                      margin: EdgeInsets.fromLTRB(5, 2, 5, 2),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(data2[index].productThumbnail.toString()),
                                            
                                          )
                                        ),
                                        // child:Image.network('https://s3.ap-south-1.amazonaws.com/hicare-others/ed8791c8-77d0-4f2f-986d-a11679f9f790.jpeg'),
                                        // child: Image.asset(
                                        //   'images/splash.png',
                                        //   height: 150,
                                        //   width: 130,
                                        // )
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Container(
                                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 180,
                                        margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                        child: Column(
                                          children: [
                                            Text(data2![index].productName.toString(),
                                                maxLines: 4,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500)),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 5, 0,0),
                                        child: Row(
                                          children: [
                                            Text('4.8',style: TextStyle(color: Colors.black,fontSize: 12)),
                                            SizedBox(width: 3),
                                            RatingBar.builder(
                                              wrapAlignment: WrapAlignment.start,
                                              initialRating: 1,
                                              minRating: 1,
                                              direction: Axis.horizontal,
                                              allowHalfRating: true,
                                              itemCount: 5,
                                              // Adjust the size of the icons as needed
                                              itemSize: 14.0,
                                              // itemPadding: EdgeInsets.symmetric(
                                              //     horizontal: 4.0),
                                              itemBuilder: (context, _) => Center(

                                                child: Icon(
                                                  Icons.star,
                                                  color: Colors.amber,
                                                  size: 14.0,
                                                ),
                                              ),
                                              onRatingUpdate: (rating) {
                                                print(rating);
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                      // Text('Rating',style: TextStyle(color: Colors.black,fontSize: 14)),
                                      SizedBox(height: 3),
                                      Row(
                                        children: [
                                          Text('\u{20B9}',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 13)),
                                          Text(data2[index].discountedPrice.toString(),
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                              )),
                                          SizedBox(width: 10),
                                          Text('\u{20B9}',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 14,
                                                  decoration:
                                                  TextDecoration.lineThrough)),
                                          Text(data2[index].pricePerQuantity.toString(),
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 14,
                                                  decoration:
                                                  TextDecoration.lineThrough)),
                                        ],
                                      ),
                                      SizedBox(height: 3),
                                      Row(
                                        children: [
                                          Text('Get it in',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 12)),
                                          SizedBox(width: 3),
                                          Text('next 3 to 4 days ',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12)),
                                        ],
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(10),
                                        child: TextButton(
                                          style: TextButton.styleFrom(
                                              fixedSize: const Size(150, 40),
                                              foregroundColor: Colors.white,
                                              backgroundColor:
                                              Color.fromARGB(255, 43, 183, 122),
                                              textStyle: const TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500)),
                                          onPressed: () {},
                                          child: const Text('ADD TO CART'),
                                        ),
                                      ),
                                      // TextButton(
                                      //     onPressed: () {},
                                      //     child: Padding(
                                      //       padding: const EdgeInsets.all(10.0),
                                      //       child: const Text('Add to Cart',
                                      //           style: TextStyle(
                                      //               color: Colors.white,
                                      //               fontSize: 14,
                                      //               backgroundColor: Color.fromARGB(255, 43, 183, 122))),
                                      //     )),
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
                  },
                )),
          ],
        ));
  }
}

class _ProductScreen extends StatelessWidget {
  // List<String> items = [
  //   'Automos one refill 1',
  //   'Automos one refill  2',
  //   'Automos one refill  3',
  //   'Automos one refill 4',
  //   'Automos one refill  5',
  //   // Add more items as needed
  // ];

  final ProductListResponse values;
  _ProductScreen(this.values);


  @override
  Widget build(BuildContext context) {
    final authViewModel = Provider.of<AuthViewModel>(context);
    var data=values;
    var data2 =data!.data;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  decoration: BoxDecoration(
                    border:
                    Border.all(color: Color.fromARGB(255, 43, 183, 122)),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'Pincode...',
                      border: InputBorder.none,
                      // icon: Icon(Icons.search),
                    ),
                    onSubmitted: (value) {
                      // Implement search functionality here
                      print('Search query: $value');
                    },
                  ),
                ),
              ),
              SizedBox(width: 3),
              IconButton(
                icon: Icon(Icons.search,
                    color: Color.fromARGB(255, 43, 183, 122)),
                // Add your cart icon here
                onPressed: () async{
                  Map<String, String> data = {
                    'pincode':'400079' ,
                  };
                  authViewModel.productlistbypincode(data,context);

                  // Implement cart functionality
                },
              ),
              SizedBox(width: 3),
              IconButton(
                icon: Icon(Icons.shopping_cart,
                    color: Color.fromARGB(255, 43, 183, 122)),
                onPressed: () {},
              ),
            ],
          ),
          automaticallyImplyLeading: false,
        ),
        body: Column(
          children: [
            Expanded(
                child: ListView.builder(
                  itemCount: data2!.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      child: Card(
                        margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(0,0,0,2),
                                      child: Text(' Save  '+data2[index].discount.toString(),
                                          style: TextStyle(
                                              color: Colors.white,
                                              backgroundColor: Colors.red)),
                                    ),
                                    SizedBox(height: 5),
                                    Container(
                                        margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                        child: Image.asset(
                                          'images/splash.png',
                                          height: 150,
                                          width: 130,
                                        )),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Container(
                                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 49,
                                        height: 50,
                                        margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                        child: Text('AutoMos + 1 Refill',
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500)),
                                      ),
                                      SizedBox(height: 3),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 5, 0,0),
                                        child: Row(
                                          children: [
                                            Text(data2![index].productRating.toString(),style: TextStyle(color: Colors.black,fontSize: 12)),
                                            SizedBox(width: 3),
                                            RatingBar.builder(
                                              wrapAlignment: WrapAlignment.start,
                                              initialRating: 1,
                                              minRating: 1,
                                              direction: Axis.horizontal,
                                              allowHalfRating: true,
                                              itemCount: 5,
                                              // Adjust the size of the icons as needed
                                              itemSize: 14.0,
                                              // itemPadding: EdgeInsets.symmetric(
                                              //     horizontal: 4.0),
                                              itemBuilder: (context, _) => Center(

                                                child: Icon(
                                                  Icons.star,
                                                  color: Colors.amber,
                                                  size: 14.0,
                                                ),
                                              ),
                                              onRatingUpdate: (rating) {
                                                print(rating);
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                      // Text('Rating',style: TextStyle(color: Colors.black,fontSize: 14)),
                                      SizedBox(height: 3),
                                      Row(
                                        children: [
                                          Text('\u{20B9}',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 13)),
                                          Text(data2![index].discountedPrice.toString(),
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                              )),
                                          SizedBox(width: 10),
                                          Text('\u{20B9}',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 14,
                                                  decoration:
                                                  TextDecoration.lineThrough)),
                                          Text(data2![index].pricePerQuantity.toString(),
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 14,
                                                  decoration:
                                                  TextDecoration.lineThrough)),
                                        ],
                                      ),

                                      SizedBox(height: 3),
                                      Row(
                                        children: [
                                          Text('Get it in',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 12)),
                                          SizedBox(width: 3),
                                          Text('next 3 to 4 days ',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12)),
                                        ],
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(10),
                                        child: TextButton(
                                          style: TextButton.styleFrom(
                                              fixedSize: const Size(150, 40),
                                              foregroundColor: Colors.white,
                                              backgroundColor:
                                              Color.fromARGB(255, 43, 183, 122),
                                              textStyle: const TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500)),
                                          onPressed: () {
                                            Map<String, int> data = {
                                              'userId':Utils.customerid ,
                                            };
                                            authViewModel.GetProductCountInCart(data,context);

                                          },
                                          child: const Text('ADD TO CART'),
                                        ),
                                      ),
                                      // TextButton(
                                      //     onPressed: () {},
                                      //     child: Padding(
                                      //       padding: const EdgeInsets.all(10.0),
                                      //       child: const Text('Add to Cart',
                                      //           style: TextStyle(
                                      //               color: Colors.white,
                                      //               fontSize: 14,
                                      //               backgroundColor: Color.fromARGB(255, 43, 183, 122))),
                                      //     )),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                )),
          ],
        ));
  }
}
