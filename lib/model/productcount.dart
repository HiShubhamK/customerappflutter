class ProductCount {
  bool? isSuccess;
  int? data;
  String? responseMessage;

  ProductCount({this.isSuccess, this.data, this.responseMessage});

  ProductCount.fromJson(Map<String, dynamic> json) {
    isSuccess = json['IsSuccess'];
    data = json['Data'];
    responseMessage = json['ResponseMessage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['IsSuccess'] = this.isSuccess;
    data['Data'] = this.data;
    data['ResponseMessage'] = this.responseMessage;
    return data;
  }
}