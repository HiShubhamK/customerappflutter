class ReferrelModel {
  bool? isSuccess;
  RefData? data;
  String? responseMessage;

  ReferrelModel({this.isSuccess, this.data, this.responseMessage});

  ReferrelModel.fromJson(Map<String, dynamic> json) {
    isSuccess = json['IsSuccess'];
    data = json['Data'] != null ? new RefData.fromJson(json['Data']) : null;
    responseMessage = json['ResponseMessage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['IsSuccess'] = this.isSuccess;
    if (this.data != null) {
      data['Data'] = this.data!.toJson();
    }
    data['ResponseMessage'] = this.responseMessage;
    return data;
  }
}

class RefData {
  String? Referral_Code;
  String? Referral_Discount;
  String? PrimaryMessage;
  String? SecondaryMessage;
  String? ShareText;
  String? WAShareText;
  String? FBShareText;
  String? TwitterShareText;
  String? OtherShareText;



  RefData({
    this.Referral_Code,
    this.Referral_Discount,
    this.PrimaryMessage,
    this.SecondaryMessage,
    this.ShareText,
    this.WAShareText,
    this.FBShareText,
    this.TwitterShareText,
    this.OtherShareText,
  });

  RefData.fromJson(Map<String, dynamic> json) {
    Referral_Code = json['Referral_Code'];
    Referral_Code = json['Referral_Discount'];
    PrimaryMessage = json['PrimaryMessage'];
    SecondaryMessage = json['SecondaryMessage'];
    ShareText = json['ShareText'];
    WAShareText = json['WAShareText'];
    FBShareText = json['FBShareText'];
    TwitterShareText = json['TwitterShareText'];
    OtherShareText = json['OtherShareText'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Referral_Code'] = this.Referral_Code;
    data['Referral_Discount'] = this.Referral_Discount;
    data['PrimaryMessage'] = this.PrimaryMessage;
    data['SecondaryMessage'] = this.SecondaryMessage;
    data['ShareText'] = this.ShareText;
    data['WAShareText'] = this.WAShareText;
    data['FBShareText'] = this.FBShareText;
    data['TwitterShareText'] = this.TwitterShareText;
    data['OtherShareText'] = this.OtherShareText;
    return data;
  }
}
