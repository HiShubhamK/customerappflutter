
import 'dart:convert';

import 'package:flutter/cupertino.dart';

import '../data/network/BaseApiService.dart';
import '../data/network/NetworkApiService.dart';
import '../model/Product/productDataResponse.dart';
import '../res/app_url.dart';
import 'auth_repository.dart';

class ProductRepository{
  BaseApiService apiService = NetworkApiService();
  late List<Data>? _productlistdata = [];

  Future<List<Data>?> getProductlist() async {
    try {
      dynamic response = await apiService.getGetApiResponse(AppUrl.getProduct,'400080' as Map<String, dynamic>);
      final jsonData = ProductDataResponse.fromJson(response);
      _productlistdata =  jsonData.data;
      return _productlistdata;
    } catch (e) {
      throw e;
    }
  }

  Future<ProductDataResponse> fetchRestaurant() async {
    final response = await apiService.getGetApiResponse(AppUrl.getProduct,'400080' as Map<String, dynamic>);

    if (response.statusCode == 200) {
      // If the server returns a 200 OK response, parse the JSON
      final Map<String, dynamic> data = json.decode(response.body);

      // Assuming your API returns data in the format you provided
      final String name = data['name'];
      final String cuisine = data['cuisine'];
      final List<dynamic> reviewsData = data['reviews'];

      // Parse reviews
      List<Data> reviews = reviewsData
          .map((reviewData) => Data(
        score: reviewData['score'].toDouble(),
        review: reviewData['review'],
      ))
          .toList();

      return ProductDataResponse(name: name, cuisine: cuisine, reviews: reviews);
    } else {
      // If the server did not return a 200 OK response, throw an exception.
      throw Exception('Failed to load restaurant');
    }
  }



}