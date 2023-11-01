class GetSlotResponse {
  bool? isSuccess;
  List<Data>? data;
  String? responseMessage;

  GetSlotResponse({this.isSuccess, this.data, this.responseMessage});

  GetSlotResponse.fromJson(Map<String, dynamic> json) {
    isSuccess = json['IsSuccess'];
    if (json['Data'] != null) {
      data = <Data>[];
      json['Data'].forEach((v) {
        data!.add(new Data.fromJson(v));
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

class Data {
  int? noOfAvailableTechnician;
  String? scheduledDate;
  String? scheduledDateText;
  int? availableCompliance;
  Null? color;
  String? title;
  bool? isEnabled;

  Data(
      {this.noOfAvailableTechnician,
        this.scheduledDate,
        this.scheduledDateText,
        this.availableCompliance,
        this.color,
        this.title,
        this.isEnabled});

  Data.fromJson(Map<String, dynamic> json) {
    noOfAvailableTechnician = json['NoOfAvailableTechnician'];
    scheduledDate = json['ScheduledDate'];
    scheduledDateText = json['ScheduledDate_Text'];
    availableCompliance = json['AvailableCompliance'];
    color = json['Color'];
    title = json['Title'];
    isEnabled = json['IsEnabled'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['NoOfAvailableTechnician'] = this.noOfAvailableTechnician;
    data['ScheduledDate'] = this.scheduledDate;
    data['ScheduledDate_Text'] = this.scheduledDateText;
    data['AvailableCompliance'] = this.availableCompliance;
    data['Color'] = this.color;
    data['Title'] = this.title;
    data['IsEnabled'] = this.isEnabled;
    return data;
  }
}