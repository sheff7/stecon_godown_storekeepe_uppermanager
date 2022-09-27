import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/get_comapany_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class GetComapanyEntity {

	String? response;
	List<GetComapanyUpperproductionmanagerlist>? upperproductionmanagerlist;
  
  GetComapanyEntity();

  factory GetComapanyEntity.fromJson(Map<String, dynamic> json) => $GetComapanyEntityFromJson(json);

  Map<String, dynamic> toJson() => $GetComapanyEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GetComapanyUpperproductionmanagerlist {

	int? id;
	String? name;
	String? dob;
	String? age;
	String? address;
	String? contactno;
	String? adharno;
	String? country;
	String? state;
	String? district;
	String? city;
	String? nationality;
	String? idcardno;
	String? idproofurl;
	String? joiningdate;
	String? resignationdate;
	String? username;
	String? loginid;
	String? status;
	String? createddate;
	String? email;
	String? pincode;
	String? designation;
  
  GetComapanyUpperproductionmanagerlist();

  factory GetComapanyUpperproductionmanagerlist.fromJson(Map<String, dynamic> json) => $GetComapanyUpperproductionmanagerlistFromJson(json);

  Map<String, dynamic> toJson() => $GetComapanyUpperproductionmanagerlistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}