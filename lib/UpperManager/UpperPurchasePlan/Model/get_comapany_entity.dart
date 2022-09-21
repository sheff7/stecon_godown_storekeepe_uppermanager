import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/get_comapany_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class GetComapanyEntity {

	String? response;
	List<GetComapanyCompanylist>? companylist;
  
  GetComapanyEntity();

  factory GetComapanyEntity.fromJson(Map<String, dynamic> json) => $GetComapanyEntityFromJson(json);

  Map<String, dynamic> toJson() => $GetComapanyEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GetComapanyCompanylist {

	int? id;
	String? companyname;
	String? address;
	String? category;
	String? contactno;
	String? email;
	String? country;
	String? state;
	String? district;
	String? city;
	String? pincode;
	String? status;
	String? createddate;
	String? countryname;
	String? statename;
	String? districtname;
	String? categoryname;
  
  GetComapanyCompanylist();

  factory GetComapanyCompanylist.fromJson(Map<String, dynamic> json) => $GetComapanyCompanylistFromJson(json);

  Map<String, dynamic> toJson() => $GetComapanyCompanylistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}