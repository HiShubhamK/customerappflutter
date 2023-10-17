import 'package:customerappdart/data/response/api_response.dart';
import 'package:customerappdart/model/Product/productDataResponse.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../repository/product_repository.dart';
import '../utils/utils.dart';

class ProductViewViewModel extends ChangeNotifier{

  final myRepo = ProductRepository();

  ApiResponse<ProductDataResponse> productlistdata=ApiResponse.loading();

  late List<Data>? _productlistdata = [];

  setProductlist(ApiResponse<ProductDataResponse> _apiResponse){
    productlistdata=_apiResponse;
    notifyListeners();
  }
//
//   Future<void> getProductlist() async{
//     setProductlist(ApiResponse.loading());
//     myRepo.getProductlist().then((value){
//     setProductlist(ApiResponse.completed(value));
//   }).onError((error, stackTrace){
//       setProductlist(ApiResponse.error(error.toString()));
//   });
// }

  Future<void> getProductlist(BuildContext context) async {
    myRepo.getProductlist().then((value) {
      if(kDebugMode){
        // Utils.showsnackbar(value.toString(), context);

          Utils.showsnackbar(value.toString(), context);
          _productlistdata=value;

        print(value.toString());
      }




    }).onError((error, stackTrace) {
      Utils.flushbarErrorMessage(error.toString(), context);

      print(error.toString());

    });

  }


}