import 'dart:convert';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/profile_sk_entity.g.dart';

@JsonSerializable()
class ProfileSkEntity {

	String? response;
	List<ProfileSkStorekeeperlist>? storekeeperlist;
  
  ProfileSkEntity();

  factory ProfileSkEntity.fromJson(Map<String, dynamic> json) => $ProfileSkEntityFromJson(json);

  Map<String, dynamic> toJson() => $ProfileSkEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ProfileSkStorekeeperlist {

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
	dynamic resignationdate;
	String? username;
	String? loginid;
	String? status;
	String? createddate;
	String? email;
	String? pincode;
	String? designation;
	String? countryname;
	String? statename;
	String? districtname;
  
  ProfileSkStorekeeperlist();

  factory ProfileSkStorekeeperlist.fromJson(Map<String, dynamic> json) => $ProfileSkStorekeeperlistFromJson(json);

  Map<String, dynamic> toJson() => $ProfileSkStorekeeperlistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}