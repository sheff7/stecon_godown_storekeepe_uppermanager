import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/get_distributors_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class GetDistributorsEntity {

	String? response;
	List<GetDistributorsDistributorslist>? distributorslist;
  
  GetDistributorsEntity();

  factory GetDistributorsEntity.fromJson(Map<String, dynamic> json) => $GetDistributorsEntityFromJson(json);

  Map<String, dynamic> toJson() => $GetDistributorsEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GetDistributorsDistributorslist {

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
	String? repname;
	String? areacode;
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
	String? gstno;
  
  GetDistributorsDistributorslist();

  factory GetDistributorsDistributorslist.fromJson(Map<String, dynamic> json) => $GetDistributorsDistributorslistFromJson(json);

  Map<String, dynamic> toJson() => $GetDistributorsDistributorslistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}