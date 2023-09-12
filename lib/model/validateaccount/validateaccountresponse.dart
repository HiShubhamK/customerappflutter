class ValidateAccountResponse {
  bool? isSuccess;
  Data? data;
  String? responseMessage;

  ValidateAccountResponse({this.isSuccess, this.data, this.responseMessage});

  ValidateAccountResponse.fromJson(Map<String, dynamic> json) {
    isSuccess = json['IsSuccess'];
    data = json['Data'] != null ? new Data.fromJson(json['Data']) : null;
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

class Data {
  String? token;
  PestCustomerData? pestCustomerData;
  ProductCustomerData? productCustomerData;

  Data({this.token, this.pestCustomerData, this.productCustomerData});

  Data.fromJson(Map<String, dynamic> json) {
    token = json['Token'];
    pestCustomerData = json['PestCustomerData'] != null
        ? new PestCustomerData.fromJson(json['PestCustomerData'])
        : null;
    productCustomerData = json['ProductCustomerData'] != null
        ? new ProductCustomerData.fromJson(json['ProductCustomerData'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Token'] = this.token;
    if (this.pestCustomerData != null) {
      data['PestCustomerData'] = this.pestCustomerData!.toJson();
    }
    if (this.productCustomerData != null) {
      data['ProductCustomerData'] = this.productCustomerData!.toJson();
    }
    return data;
  }
}

class PestCustomerData {
  String? id;
  String? name;
  String? customerIdC;
  String? customerReferralCodeC;
  String? referralAmountC;
  String? mobileC;
  Null? alternateMobileC;
  Null? alternatePhoneC;
  Null? communicationMobileNoC;
  Null? phone;
  Null? accountTypesC;
  String? emailC;
  String? flatNumberC;
  String? buildingNameC;
  String? landmarkC;
  String? localitySuburbC;
  String? billingStreet;
  String? billingPostalCode;
  String? billingCity;
  String? billingState;
  String? billingCountry;
  String? accountLatC;
  String? accountLongC;
  String? locationLatitudeS;
  String? locationLongitudeS;
  Null? salutationC;
  String? firstNameC;
  String? lastNameC;
  String? accountAddress;
  SubTypeR? subTypeR;
  FlatTypeR? flatTypeR;
  SubTypeR? accountTypesR;
  SubTypeR? localityPincodeR;
  SubTypeR? customerTypeR;

  PestCustomerData(
      {this.id,
        this.name,
        this.customerIdC,
        this.customerReferralCodeC,
        this.referralAmountC,
        this.mobileC,
        this.alternateMobileC,
        this.alternatePhoneC,
        this.communicationMobileNoC,
        this.phone,
        this.accountTypesC,
        this.emailC,
        this.flatNumberC,
        this.buildingNameC,
        this.landmarkC,
        this.localitySuburbC,
        this.billingStreet,
        this.billingPostalCode,
        this.billingCity,
        this.billingState,
        this.billingCountry,
        this.accountLatC,
        this.accountLongC,
        this.locationLatitudeS,
        this.locationLongitudeS,
        this.salutationC,
        this.firstNameC,
        this.lastNameC,
        this.accountAddress,
        this.subTypeR,
        this.flatTypeR,
        this.accountTypesR,
        this.localityPincodeR,
        this.customerTypeR});

  PestCustomerData.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
    customerIdC = json['Customer_id__c'];
    customerReferralCodeC = json['Customer_Referral_Code__c'];
    referralAmountC = json['Referral_Amount__c'];
    mobileC = json['Mobile__c'];
    alternateMobileC = json['Alternate_Mobile__c'];
    alternatePhoneC = json['Alternate_Phone__c'];
    communicationMobileNoC = json['Communication_Mobile_No__c'];
    phone = json['Phone'];
    accountTypesC = json['Account_Types__c'];
    emailC = json['Email__c'];
    flatNumberC = json['Flat_Number__c'];
    buildingNameC = json['Building_Name__c'];
    landmarkC = json['Landmark__c'];
    localitySuburbC = json['Locality_Suburb__c'];
    billingStreet = json['BillingStreet'];
    billingPostalCode = json['BillingPostalCode'];
    billingCity = json['BillingCity'];
    billingState = json['BillingState'];
    billingCountry = json['BillingCountry'];
    accountLatC = json['Account_Lat__c'];
    accountLongC = json['Account_Long__c'];
    locationLatitudeS = json['Location__Latitude__s'];
    locationLongitudeS = json['Location__Longitude__s'];
    salutationC = json['Salutation__c'];
    firstNameC = json['First_Name__c'];
    lastNameC = json['Last_Name__c'];
    accountAddress = json['AccountAddress'];
    subTypeR = json['Sub_Type__r'] != null
        ? new SubTypeR.fromJson(json['Sub_Type__r'])
        : null;
    flatTypeR = json['Flat_Type__r'] != null
        ? new FlatTypeR.fromJson(json['Flat_Type__r'])
        : null;
    accountTypesR = json['Account_Types__r'] != null
        ? new SubTypeR.fromJson(json['Account_Types__r'])
        : null;
    localityPincodeR = json['Locality_Pincode__r'] != null
        ? new SubTypeR.fromJson(json['Locality_Pincode__r'])
        : null;
    customerTypeR = json['Customer_Type__r'] != null
        ? new SubTypeR.fromJson(json['Customer_Type__r'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['Name'] = this.name;
    data['Customer_id__c'] = this.customerIdC;
    data['Customer_Referral_Code__c'] = this.customerReferralCodeC;
    data['Referral_Amount__c'] = this.referralAmountC;
    data['Mobile__c'] = this.mobileC;
    data['Alternate_Mobile__c'] = this.alternateMobileC;
    data['Alternate_Phone__c'] = this.alternatePhoneC;
    data['Communication_Mobile_No__c'] = this.communicationMobileNoC;
    data['Phone'] = this.phone;
    data['Account_Types__c'] = this.accountTypesC;
    data['Email__c'] = this.emailC;
    data['Flat_Number__c'] = this.flatNumberC;
    data['Building_Name__c'] = this.buildingNameC;
    data['Landmark__c'] = this.landmarkC;
    data['Locality_Suburb__c'] = this.localitySuburbC;
    data['BillingStreet'] = this.billingStreet;
    data['BillingPostalCode'] = this.billingPostalCode;
    data['BillingCity'] = this.billingCity;
    data['BillingState'] = this.billingState;
    data['BillingCountry'] = this.billingCountry;
    data['Account_Lat__c'] = this.accountLatC;
    data['Account_Long__c'] = this.accountLongC;
    data['Location__Latitude__s'] = this.locationLatitudeS;
    data['Location__Longitude__s'] = this.locationLongitudeS;
    data['Salutation__c'] = this.salutationC;
    data['First_Name__c'] = this.firstNameC;
    data['Last_Name__c'] = this.lastNameC;
    data['AccountAddress'] = this.accountAddress;
    if (this.subTypeR != null) {
      data['Sub_Type__r'] = this.subTypeR!.toJson();
    }
    if (this.flatTypeR != null) {
      data['Flat_Type__r'] = this.flatTypeR!.toJson();
    }
    if (this.accountTypesR != null) {
      data['Account_Types__r'] = this.accountTypesR!.toJson();
    }
    if (this.localityPincodeR != null) {
      data['Locality_Pincode__r'] = this.localityPincodeR!.toJson();
    }
    if (this.customerTypeR != null) {
      data['Customer_Type__r'] = this.customerTypeR!.toJson();
    }
    return data;
  }
}

class SubTypeR {
  String? id;
  String? name;

  SubTypeR({this.id, this.name});

  SubTypeR.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['Name'] = this.name;
    return data;
  }
}

class FlatTypeR {
  String? id;
  String? name;
  String? unitValueC;
  String? serviceUnitC;

  FlatTypeR({this.id, this.name, this.unitValueC, this.serviceUnitC});

  FlatTypeR.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
    unitValueC = json['Unit_Value__c'];
    serviceUnitC = json['Service_unit__c'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['Name'] = this.name;
    data['Unit_Value__c'] = this.unitValueC;
    data['Service_unit__c'] = this.serviceUnitC;
    return data;
  }
}

class ProductCustomerData {
  int? id;
  String? firstName;
  String? lastName;
  String? mobileNo;
  String? altMobileNo;
  String? communicationNo;
  String? email;
  String? loginOtp;
  String? profilePhoto;

  ProductCustomerData(
      {this.id,
        this.firstName,
        this.lastName,
        this.mobileNo,
        this.altMobileNo,
        this.communicationNo,
        this.email,
        this.loginOtp,
        this.profilePhoto});

  ProductCustomerData.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    firstName = json['First_Name'];
    lastName = json['Last_Name'];
    mobileNo = json['Mobile_No'];
    altMobileNo = json['Alt_Mobile_No'];
    communicationNo = json['Communication_No'];
    email = json['Email'];
    loginOtp = json['Login_Otp'];
    profilePhoto = json['Profile_Photo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['First_Name'] = this.firstName;
    data['Last_Name'] = this.lastName;
    data['Mobile_No'] = this.mobileNo;
    data['Alt_Mobile_No'] = this.altMobileNo;
    data['Communication_No'] = this.communicationNo;
    data['Email'] = this.email;
    data['Login_Otp'] = this.loginOtp;
    data['Profile_Photo'] = this.profilePhoto;
    return data;
  }
}