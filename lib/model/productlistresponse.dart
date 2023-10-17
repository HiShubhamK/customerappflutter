class ProductListResponse {
  bool? isSuccess;
  List<Data>? data;
  String? responseMessage;

  ProductListResponse({this.isSuccess, this.data, this.responseMessage});

  ProductListResponse.fromJson(Map<String, dynamic> json) {
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
  int? productId;
  String? productName;
  String? productCode;
  String? productDisplayName;
  String? productThumbnail;
  Null? productSEOCategory;
  String? discountType;
  int? discount;
  int? pricePerQuantity;
  int? discountedPrice;
  String? discountStartDate;
  String? discountEndDate;
  int? installationCharges;
  int? productWeight;
  bool? isHotProduct;
  bool? isStockAvailable;
  bool? isToSellingProduct;
  bool? stockStatus;
  double? productRating;
  int? stockCount;
  String? createdOn;
  int? counter;
  int? stockCounterAmount;
  Null? productSEOName;
  Null? customRatingMessage;
  Null? productCategory;

  Data(
      {this.productId,
        this.productName,
        this.productCode,
        this.productDisplayName,
        this.productThumbnail,
        this.productSEOCategory,
        this.discountType,
        this.discount,
        this.pricePerQuantity,
        this.discountedPrice,
        this.discountStartDate,
        this.discountEndDate,
        this.installationCharges,
        this.productWeight,
        this.isHotProduct,
        this.isStockAvailable,
        this.isToSellingProduct,
        this.stockStatus,
        this.productRating,
        this.stockCount,
        this.createdOn,
        this.counter,
        this.stockCounterAmount,
        this.productSEOName,
        this.customRatingMessage,
        this.productCategory});

  Data.fromJson(Map<String, dynamic> json) {
    productId = json['Product_Id'];
    productName = json['Product_Name'];
    productCode = json['Product_Code'];
    productDisplayName = json['Product_Display_Name'];
    productThumbnail = json['Product_Thumbnail'];
    productSEOCategory = json['Product_SEOCategory'];
    discountType = json['Discount_Type'];
    discount = json['Discount'];
    pricePerQuantity = json['Price_Per_Quantity'];
    discountedPrice = json['Discounted_Price'];
    discountStartDate = json['Discount_StartDate'];
    discountEndDate = json['Discount_EndDate'];
    installationCharges = json['Installation_Charges'];
    productWeight = json['Product_Weight'];
    isHotProduct = json['Is_HotProduct'];
    isStockAvailable = json['Is_Stock_Available'];
    isToSellingProduct = json['Is_ToSellingProduct'];
    stockStatus = json['StockStatus'];
    productRating = json['Product_Rating'];
    stockCount = json['StockCount'];
    createdOn = json['Created_On'];
    counter = json['Counter'];
    stockCounterAmount = json['StockCounterAmount'];
    productSEOName = json['Product_SEO_Name'];
    customRatingMessage = json['Custom_Rating_Message'];
    productCategory = json['ProductCategory'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Product_Id'] = this.productId;
    data['Product_Name'] = this.productName;
    data['Product_Code'] = this.productCode;
    data['Product_Display_Name'] = this.productDisplayName;
    data['Product_Thumbnail'] = this.productThumbnail;
    data['Product_SEOCategory'] = this.productSEOCategory;
    data['Discount_Type'] = this.discountType;
    data['Discount'] = this.discount;
    data['Price_Per_Quantity'] = this.pricePerQuantity;
    data['Discounted_Price'] = this.discountedPrice;
    data['Discount_StartDate'] = this.discountStartDate;
    data['Discount_EndDate'] = this.discountEndDate;
    data['Installation_Charges'] = this.installationCharges;
    data['Product_Weight'] = this.productWeight;
    data['Is_HotProduct'] = this.isHotProduct;
    data['Is_Stock_Available'] = this.isStockAvailable;
    data['Is_ToSellingProduct'] = this.isToSellingProduct;
    data['StockStatus'] = this.stockStatus;
    data['Product_Rating'] = this.productRating;
    data['StockCount'] = this.stockCount;
    data['Created_On'] = this.createdOn;
    data['Counter'] = this.counter;
    data['StockCounterAmount'] = this.stockCounterAmount;
    data['Product_SEO_Name'] = this.productSEOName;
    data['Custom_Rating_Message'] = this.customRatingMessage;
    data['ProductCategory'] = this.productCategory;
    return data;
  }
}