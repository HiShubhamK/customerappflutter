class Data {
  List<BannerData> bannerData;
  List<MenuData> menuData;
  List<OfferData> offerData;
  List<BrandData> brandData;
  List<SocialMediaData> socialMediaData;
  List<VideoData> videoData;
  List<dynamic> codOrders; // Adjust type if needed
  List<dynamic> todaysService; // Adjust type if needed
  List<dynamic> upcomingService; // Adjust type if needed

  Data({
    required this.bannerData,
    required this.menuData,
    required this.offerData,
    required this.brandData,
    required this.socialMediaData,
    required this.videoData,
    required this.codOrders,
    required this.todaysService,
    required this.upcomingService,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      bannerData: List<BannerData>.from(
          json['BannerData'].map((x) => BannerData.fromJson(x))),
      menuData: List<MenuData>.from(
          json['MenuData'].map((x) => MenuData.fromJson(x))),
      offerData: List<OfferData>.from(
          json['OfferData'].map((x) => OfferData.fromJson(x))),
      brandData: List<BrandData>.from(
          json['BrandData'].map((x) => BrandData.fromJson(x))),
      socialMediaData: List<SocialMediaData>.from(
          json['SocialMediadata'].map((x) => SocialMediaData.fromJson(x))),
      videoData: List<VideoData>.from(
          json['VideoData'].map((x) => VideoData.fromJson(x))),
      codOrders: json['CODOrders'] as List<dynamic>,
      todaysService: json['TodaysService'] as List<dynamic>,
      upcomingService: json['UpcomingService'] as List<dynamic>,
    );
  }
}