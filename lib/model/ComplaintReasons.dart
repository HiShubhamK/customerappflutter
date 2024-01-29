class ComplaintReasons {
  int id;
  String name;
  // String subType;

  ComplaintReasons(
      this.id,
      this.name,
      // this.subType,
      );

  factory ComplaintReasons.fromJson(Map<String, dynamic> json) {
    return ComplaintReasons(
      json['Id'],
      json['Name'],
      // json['SubType'],
    );
  }
}
