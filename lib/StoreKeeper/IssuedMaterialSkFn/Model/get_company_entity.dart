import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/get_company_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class GetCompanyEntity {

	String? response;
	List<GetCompanyCompanylist>? companylist;
  
  GetCompanyEntity();

  factory GetCompanyEntity.fromJson(Map<String, dynamic> json) => $GetCompanyEntityFromJson(json);

  Map<String, dynamic> toJson() => $GetCompanyEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GetCompanyCompanylist {

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
  
  GetCompanyCompanylist();

  factory GetCompanyCompanylist.fromJson(Map<String, dynamic> json) => $GetCompanyCompanylistFromJson(json);

  Map<String, dynamic> toJson() => $GetCompanyCompanylistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}