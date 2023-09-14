class DashboardModel {
  bool? isSuccess;
  Data? data;
  String? responseMessage;

  DashboardModel({this.isSuccess, this.data, this.responseMessage});

  DashboardModel.fromJson(Map<String, dynamic> json) {
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
  List<BannerData>? bannerData;
  List<MenuData>? menuData;
  List<OfferData>? offerData;
  List<BrandData>? brandData;
  List<SocialMediadata>? socialMediadata;
  List<VideoData>? videoData;
  List<Null>? cODOrders;
  List<Null>? todaysService;
  List<Null>? upcomingService;

  Data(
      {this.bannerData,
        this.menuData,
        this.offerData,
        this.brandData,
        this.socialMediadata,
        this.videoData,
        this.cODOrders,
        this.todaysService,
        this.upcomingService});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['BannerData'] != null) {
      bannerData = <BannerData>[];
      json['BannerData'].forEach((v) {
        bannerData!.add(new BannerData.fromJson(v));
      });
    }
    if (json['MenuData'] != null) {
      menuData = <MenuData>[];
      json['MenuData'].forEach((v) {
        menuData!.add(new MenuData.fromJson(v));
      });
    }
    if (json['OfferData'] != null) {
      offerData = <OfferData>[];
      json['OfferData'].forEach((v) {
        offerData!.add(new OfferData.fromJson(v));
      });
    }
    if (json['BrandData'] != null) {
      brandData = <BrandData>[];
      json['BrandData'].forEach((v) {
        brandData!.add(new BrandData.fromJson(v));
      });
    }
    if (json['SocialMediadata'] != null) {
      socialMediadata = <SocialMediadata>[];
      json['SocialMediadata'].forEach((v) {
        socialMediadata!.add(new SocialMediadata.fromJson(v));
      });
    }
    if (json['VideoData'] != null) {
      videoData = <VideoData>[];
      json['VideoData'].forEach((v) {
        videoData!.add(new VideoData.fromJson(v));
      });
    }
    // if (json['CODOrders'] != null) {
    //   cODOrders = <Null>[];
    //   json['CODOrders'].forEach((v) {
    //     cODOrders!.add(new Null.fromJson(v));
    //   });
    // }
    // if (json['TodaysService'] != null) {
    //   todaysService = <Null>[];
    //   json['TodaysService'].forEach((v) {
    //     todaysService!.add(new Null.fromJson(v));
    //   });
    // }
    // if (json['UpcomingService'] != null) {
    //   upcomingService = <Null>[];
    //   json['UpcomingService'].forEach((v) {
    //     upcomingService!.add(new Null.fromJson(v));
    //   });
    // }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.bannerData != null) {
      data['BannerData'] = this.bannerData!.map((v) => v.toJson()).toList();
    }
    if (this.menuData != null) {
      data['MenuData'] = this.menuData!.map((v) => v.toJson()).toList();
    }
    if (this.offerData != null) {
      data['OfferData'] = this.offerData!.map((v) => v.toJson()).toList();
    }
    if (this.brandData != null) {
      data['BrandData'] = this.brandData!.map((v) => v.toJson()).toList();
    }
    if (this.socialMediadata != null) {
      data['SocialMediadata'] =
          this.socialMediadata!.map((v) => v.toJson()).toList();
    }
    if (this.videoData != null) {
      data['VideoData'] = this.videoData!.map((v) => v.toJson()).toList();
    }
    // if (this.cODOrders != null) {
    //   data['CODOrders'] = this.cODOrders!.map((v) => v?.toJson()).toList();
    // }
    // if (this.todaysService != null) {
    //   data['TodaysService'] =
    //       this.todaysService!.map((v) => v?.toJson()).toList();
    // }
    // if (this.upcomingService != null) {
    //   data['UpcomingService'] =
    //       this.upcomingService!.map((v) => v?.toJson()).toList();
    // }
    return data;
  }
}

class BannerData {
  String? imageUrl;
  bool? isAppLink;
  bool? isInAppBrowserLink;
  bool? isExternalAppBrowserLink;
  String? pageLink;
  String? title;
  String? description;
  int? sequenceNo;

  BannerData(
      {this.imageUrl,
        this.isAppLink,
        this.isInAppBrowserLink,
        this.isExternalAppBrowserLink,
        this.pageLink,
        this.title,
        this.description,
        this.sequenceNo});

  BannerData.fromJson(Map<String, dynamic> json) {
    imageUrl = json['ImageUrl'];
    isAppLink = json['IsAppLink'];
    isInAppBrowserLink = json['IsInAppBrowserLink'];
    isExternalAppBrowserLink = json['IsExternalAppBrowserLink'];
    pageLink = json['PageLink'];
    title = json['Title'];
    description = json['Description'];
    sequenceNo = json['SequenceNo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ImageUrl'] = this.imageUrl;
    data['IsAppLink'] = this.isAppLink;
    data['IsInAppBrowserLink'] = this.isInAppBrowserLink;
    data['IsExternalAppBrowserLink'] = this.isExternalAppBrowserLink;
    data['PageLink'] = this.pageLink;
    data['Title'] = this.title;
    data['Description'] = this.description;
    data['SequenceNo'] = this.sequenceNo;
    return data;
  }
}

class MenuData {
  String? imageUrl;
  String? title;
  bool? isAppLink;
  bool? isInAppBrowserLink;
  bool? isExternalAppBrowserLink;
  String? pageLink;
  int? sequenceNo;
  bool? isIcon;

  MenuData(
      {this.imageUrl,
        this.title,
        this.isAppLink,
        this.isInAppBrowserLink,
        this.isExternalAppBrowserLink,
        this.pageLink,
        this.sequenceNo,
        this.isIcon});

  MenuData.fromJson(Map<String, dynamic> json) {
    imageUrl = json['ImageUrl'];
    title = json['Title'];
    isAppLink = json['IsAppLink'];
    isInAppBrowserLink = json['IsInAppBrowserLink'];
    isExternalAppBrowserLink = json['IsExternalAppBrowserLink'];
    pageLink = json['PageLink'];
    sequenceNo = json['SequenceNo'];
    isIcon = json['IsIcon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ImageUrl'] = this.imageUrl;
    data['Title'] = this.title;
    data['IsAppLink'] = this.isAppLink;
    data['IsInAppBrowserLink'] = this.isInAppBrowserLink;
    data['IsExternalAppBrowserLink'] = this.isExternalAppBrowserLink;
    data['PageLink'] = this.pageLink;
    data['SequenceNo'] = this.sequenceNo;
    data['IsIcon'] = this.isIcon;
    return data;
  }
}

class OfferData {
  String? offerTitle;
  Null? secondaryOfferTitle;
  String? voucherCode;
  List<String>? termsnConditions;
  bool? isCopyEnabled;
  bool? isRedeemEnabled;
  bool? isAppLink;
  bool? isInAppBrowserLink;
  bool? isExternalAppBrowserLink;
  String? pageLink;
  int? sequenceNo;

  OfferData(
      {this.offerTitle,
        this.secondaryOfferTitle,
        this.voucherCode,
        this.termsnConditions,
        this.isCopyEnabled,
        this.isRedeemEnabled,
        this.isAppLink,
        this.isInAppBrowserLink,
        this.isExternalAppBrowserLink,
        this.pageLink,
        this.sequenceNo});

  OfferData.fromJson(Map<String, dynamic> json) {
    offerTitle = json['OfferTitle'];
    secondaryOfferTitle = json['SecondaryOfferTitle'];
    voucherCode = json['VoucherCode'];
    termsnConditions = json['TermsnConditions'].cast<String>();
    isCopyEnabled = json['IsCopyEnabled'];
    isRedeemEnabled = json['IsRedeemEnabled'];
    isAppLink = json['IsAppLink'];
    isInAppBrowserLink = json['IsInAppBrowserLink'];
    isExternalAppBrowserLink = json['IsExternalAppBrowserLink'];
    pageLink = json['PageLink'];
    sequenceNo = json['SequenceNo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['OfferTitle'] = this.offerTitle;
    data['SecondaryOfferTitle'] = this.secondaryOfferTitle;
    data['VoucherCode'] = this.voucherCode;
    data['TermsnConditions'] = this.termsnConditions;
    data['IsCopyEnabled'] = this.isCopyEnabled;
    data['IsRedeemEnabled'] = this.isRedeemEnabled;
    data['IsAppLink'] = this.isAppLink;
    data['IsInAppBrowserLink'] = this.isInAppBrowserLink;
    data['IsExternalAppBrowserLink'] = this.isExternalAppBrowserLink;
    data['PageLink'] = this.pageLink;
    data['SequenceNo'] = this.sequenceNo;
    return data;
  }
}

class BrandData {
  String? imageUrl;
  String? title;
  int? sequenceNo;

  BrandData({this.imageUrl, this.title, this.sequenceNo});

  BrandData.fromJson(Map<String, dynamic> json) {
    imageUrl = json['ImageUrl'];
    title = json['Title'];
    sequenceNo = json['SequenceNo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ImageUrl'] = this.imageUrl;
    data['Title'] = this.title;
    data['SequenceNo'] = this.sequenceNo;
    return data;
  }
}

class SocialMediadata {
  String? imageUrl;
  String? title;
  String? pageUrl;
  Null? message;
  int? sequenceNo;

  SocialMediadata(
      {this.imageUrl, this.title, this.pageUrl, this.message, this.sequenceNo});

  SocialMediadata.fromJson(Map<String, dynamic> json) {
    imageUrl = json['ImageUrl'];
    title = json['Title'];
    pageUrl = json['PageUrl'];
    message = json['Message'];
    sequenceNo = json['SequenceNo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ImageUrl'] = this.imageUrl;
    data['Title'] = this.title;
    data['PageUrl'] = this.pageUrl;
    data['Message'] = this.message;
    data['SequenceNo'] = this.sequenceNo;
    return data;
  }
}

class VideoData {
  String? title;
  String? description;
  String? imageUrl;
  String? videoUrl;
  bool? isYoutubeVideo;

  VideoData(
      {this.title,
        this.description,
        this.imageUrl,
        this.videoUrl,
        this.isYoutubeVideo});

  VideoData.fromJson(Map<String, dynamic> json) {
    title = json['Title'];
    description = json['Description'];
    imageUrl = json['ImageUrl'];
    videoUrl = json['VideoUrl'];
    isYoutubeVideo = json['IsYoutubeVideo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Title'] = this.title;
    data['Description'] = this.description;
    data['ImageUrl'] = this.imageUrl;
    data['VideoUrl'] = this.videoUrl;
    data['IsYoutubeVideo'] = this.isYoutubeVideo;
    return data;
  }
}