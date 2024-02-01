class ServiceListResponse {
  bool? isSuccess;
  List<ServiceData>? data;
  String? responseMessage;

  ServiceListResponse({this.isSuccess, this.data, this.responseMessage});

  ServiceListResponse.fromJson(Map<String, dynamic> json) {
    isSuccess = json['IsSuccess'];
    if (json['Data'] != null) {
      data = <ServiceData>[];
      json['Data'].forEach((v) {
        data!.add(new ServiceData.fromJson(v));
      });
    }
    responseMessage = json['ResponseMessage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['IsSuccess'] = this.isSuccess;
    if (this.data != null) {
      data['Data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['ResponseMessage'] = this.responseMessage;
    return data;
  }
}

class ServiceData {
  int? id;
  String? serviceLogo;
  String? serviceCode;
  String? serviceName;
  String? serviceThumbnail;
  String? shortDescription;
  String? detailDescription;
  double? ratings;
  bool? isActive;
  int? createdBy;
  String? createdOn;
  int? updatedBy;
  String? updatedOn;
  Null? faqList;
  Null? otherServiceList;

  ServiceData(
      {this.id,
        this.serviceLogo,
        this.serviceCode,
        this.serviceName,
        this.serviceThumbnail,
        this.shortDescription,
        this.detailDescription,
        this.ratings,
        this.isActive,
        this.createdBy,
        this.createdOn,
        this.updatedBy,
        this.updatedOn,
        this.faqList,
        this.otherServiceList});

  ServiceData.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    serviceLogo = json['Service_Logo'];
    serviceCode = json['Service_Code'];
    serviceName = json['Service_Name'];
    serviceThumbnail = json['Service_Thumbnail'];
    shortDescription = json['Short_Description'];
    detailDescription = json['Detail_Description'];
    ratings = json['Ratings'];
    isActive = json['Is_Active'];
    createdBy = json['Created_By'];
    createdOn = json['Created_On'];
    updatedBy = json['Updated_By'];
    updatedOn = json['Updated_On'];
    faqList = json['FaqList'];
    otherServiceList = json['OtherServiceList'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['Service_Logo'] = this.serviceLogo;
    data['Service_Code'] = this.serviceCode;
    data['Service_Name'] = this.serviceName;
    data['Service_Thumbnail'] = this.serviceThumbnail;
    data['Short_Description'] = this.shortDescription;
    data['Detail_Description'] = this.detailDescription;
    data['Ratings'] = this.ratings;
    data['Is_Active'] = this.isActive;
    data['Created_By'] = this.createdBy;
    data['Created_On'] = this.createdOn;
    data['Updated_By'] = this.updatedBy;
    data['Updated_On'] = this.updatedOn;
    data['FaqList'] = this.faqList;
    data['OtherServiceList'] = this.otherServiceList;
    return data;
  }
}