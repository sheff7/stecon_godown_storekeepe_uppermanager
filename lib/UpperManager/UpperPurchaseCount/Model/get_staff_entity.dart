import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/get_staff_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class GetStaffEntity {

	String? response;
	List<GetStaffStafflist>? stafflist;
  
  GetStaffEntity();

  factory GetStaffEntity.fromJson(Map<String, dynamic> json) => $GetStaffEntityFromJson(json);

  Map<String, dynamic> toJson() => $GetStaffEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GetStaffStafflist {

	int? id;
	String? name;
	String? dob;
	String? age;
	String? contactno1;
	String? contactno2;
	String? address;
	String? email;
	String? adharno;
	String? city;
	String? state;
	String? district;
	String? country;
	String? nationality;
	String? pincode;
	String? idcardno;
	String? idproofurl;
	String? policestationdetails;
	String? deaprtment;
	String? section;
	String? profileurl;
	String? joiningdate;
	dynamic resigndate;
	String? staffidno;
	String? salary;
	String? createddate;
	String? status;
  
  GetStaffStafflist();

  factory GetStaffStafflist.fromJson(Map<String, dynamic> json) => $GetStaffStafflistFromJson(json);

  Map<String, dynamic> toJson() => $GetStaffStafflistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}