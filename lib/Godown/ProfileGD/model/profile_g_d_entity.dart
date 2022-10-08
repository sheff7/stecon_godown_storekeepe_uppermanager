import 'dart:convert';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/profile_g_d_entity.g.dart';

@JsonSerializable()
class ProfileGDEntity {

	String? response;
	List<ProfileGDStorekeeperlist>? storekeeperlist;
  
  ProfileGDEntity();

  factory ProfileGDEntity.fromJson(Map<String, dynamic> json) => $ProfileGDEntityFromJson(json);

  Map<String, dynamic> toJson() => $ProfileGDEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ProfileGDStorekeeperlist {

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
	dynamic idproofurl;
	String? joiningdate;
	dynamic resignationdate;
	String? designation;
	String? username;
	String? loginid;
	String? status;
	String? createddate;
	String? email;
	String? pincode;
	String? countryname;
	String? statename;
	String? districtname;
  
  ProfileGDStorekeeperlist();

  factory ProfileGDStorekeeperlist.fromJson(Map<String, dynamic> json) => $ProfileGDStorekeeperlistFromJson(json);

  Map<String, dynamic> toJson() => $ProfileGDStorekeeperlistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}