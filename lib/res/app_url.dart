class AppUrl{
  static var baseUrl='https://connect.hicare.in/mobileapi/api/';
  static var validateAccount=baseUrl+'Account/ValidateAccount';
  static var getotp=baseUrl+'SMS/SendOTP';
  static var GetAccountReferralCode=baseUrl+'Account/GetAccountReferralCode';
  static var getdashboard=baseUrl+'Dashboard/GetDashboard';
  static var productbaseurl='https://connect.hicare.in/product/api/mobile/';
  static var productlistbypincode=productbaseurl+'Product/GetProductListByPincode';
  static var GetProductCountInCart=productbaseurl+'Cart/GetProductCountInCart';
  static var GetCartSummary=productbaseurl+'Cart/GetCartSummary';
  static var getslot=baseUrl+'Slot/GetSlot';
}