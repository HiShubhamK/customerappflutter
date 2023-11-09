class Product {
  int productId;
  String productName;
  String productCode;
  String productDisplayName;
  String productThumbnail;
  String discountType;
  int discount;
  int pricePerQuantity;
  int discountedPrice;



  // String discountStartDate;
  // String discountEndDate;
  // int installationCharges;
  // int productWeight;
  // bool isHotProduct;
  // bool isStockAvailable;
  // bool isToSellingProduct;
  // bool stockStatus;
  // double productRating;
  // int stockCount;
  // String createdOn;
  // int counter;
  // int stockCounterAmount;
  // String productSEOName;
  // String customRatingMessage;
  // String productCategory;

  Product(this.productId,
      this.productName,
      this.productCode,
      this.productDisplayName,
      this.productThumbnail,
      this.discountType,
      this.discount,
      this.pricePerQuantity,
      this.discountedPrice,
      // this.discountStartDate,
      // this.discountEndDate,
      // this.installationCharges,
      // this.productWeight,
      // this.isHotProduct,
      // this.isStockAvailable,
      // this.isToSellingProduct,
      // this.stockStatus,
      // this.productRating,
      // this.stockCount,
      // this.createdOn,
      // this.counter,
      // this.stockCounterAmount,
      // this.productSEOName,
      // this.customRatingMessage,
      // this.productCategory,
      );

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      json['Product_Id'],
      json['Product_Name'],
      json['Product_Code'],
      json['Product_Display_Name'],
      json['Product_Thumbnail'],
      json['Discount_Type'],
      json['Discount'],
      json['Price_Per_Quantity'],
      json['Discounted_Price'],
      // json['Discount_StartDate'],
      // json['Discount_EndDate'],
      // json['Installation_Charges'],
      // json['Product_Weight'],
      // json['Is_HotProduct'],
      // json['Is_Stock_Available'],
      // json['Is_ToSellingProduct'],
      // json['StockStatus'],
      // json['Product_Rating'],
      // json['StockCount'],
      // json['Created_On'],
      // json['Counter'],
      // json['StockCounterAmount'],
      // json['Product_SEO_Name'],
      // json['Custom_Rating_Message'],
      // json['ProductCategory'],
    );
  }
}

// class Product {
//   int productId;
//   String productName;
//   String productCode;
//   String productThumbnail;
//
//   Product(this.productId, this.productName, this.productCode, this.productThumbnail);
//
//   // Convert a Map to a Product object
//   factory Product.fromJson(Map<String, dynamic> json) {
//     return Product(
//       json['Product_Id'],
//       json['Product_Name'],
//       json['Product_Code'],
//       json['Product_Thumbnail']
//     );
//   }
// }
