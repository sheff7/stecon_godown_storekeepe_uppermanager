import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/um_profile_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class UmProfileEntity {

	String? response;
	List<UmProfileRepresentativelist>? representativelist;
  
  UmProfileEntity();

  factory UmProfileEntity.fromJson(Map<String, dynamic> json) => $UmProfileEntityFromJson(json);

  Map<String, dynamic> toJson() => $UmProfileEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class UmProfileRepresentativelist {

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
	String? countryname;
	String? statename;
	String? districtname;
  
  UmProfileRepresentativelist();

  factory UmProfileRepresentativelist.fromJson(Map<String, dynamic> json) => $UmProfileRepresentativelistFromJson(json);

  Map<String, dynamic> toJson() => $UmProfileRepresentativelistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}