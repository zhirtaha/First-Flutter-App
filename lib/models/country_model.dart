import 'dart:convert';



class CountryModel {
  final String countryName;
  final String countryFlag;
  final String countryDetail;

  CountryModel({
    required this.countryName,
    required this.countryFlag,
    required this.countryDetail,
  });
 

  CountryModel copyWith({
    String? countryName,
    String? countryFlag,
    String? countryDetail,
  }) {
    return CountryModel(
      countryName: countryName ?? this.countryName,
      countryFlag: countryFlag ?? this.countryFlag,
      countryDetail: countryDetail ?? this.countryDetail,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'countryName': countryName,
      'countryFlag': countryFlag,
      'countryDetail': countryDetail,
    };
  }

  factory CountryModel.fromMap(Map<String, dynamic> map) {
    return CountryModel(
      countryName: map['countryName'] ,
      countryFlag: map['countryFlag'],
      countryDetail: map['countryDetail'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CountryModel.fromJson(String source) => CountryModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'CountryModel(countryName: $countryName, countryFlag: $countryFlag, countryDetail: $countryDetail)';

}
