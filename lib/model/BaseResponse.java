class BaseResponse {
  bool isSuccess;
  Data data;
  String responseMessage;

  BaseResponse({
    required this.isSuccess,
    required this.data,
    required this.responseMessage,
  });

  factory BaseResponse.fromJson(Map<String, dynamic> json) {
    return BaseResponse(
      isSuccess: json['IsSuccess'] as bool,
      data: Data.fromJson(json['Data'] as Map<String, dynamic>),
      responseMessage: json['ResponseMessage'] as String,
    );
  }
}