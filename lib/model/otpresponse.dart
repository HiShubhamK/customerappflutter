
class OtpResponse {
  bool? isSuccess;
  String? data;
  String? responseMessage;

  OtpResponse({this.isSuccess, this.data, this.responseMessage});

  OtpResponse.fromJson(Map<String, dynamic> json) {
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
