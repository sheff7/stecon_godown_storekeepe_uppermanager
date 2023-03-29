import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/get_distributor_list_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class GetDistributorListEntity {

	String? response;
	List<GetDistributorListDistributorslist>? distributorslist;
  
  GetDistributorListEntity();

  factory GetDistributorListEntity.fromJson(Map<String, dynamic> json) => $GetDistributorListEntityFromJson(json);

  Map<String, dynamic> toJson() => $GetDistributorListEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GetDistributorListDistributorslist {

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
	dynamic resignationdate;
	String? username;
	String? loginid;
	String? status;
	String? createddate;
	String? email;
	String? pincode;
	String? gstno;
	String? contactno2;
  
  GetDistributorListDistributorslist();

  factory GetDistributorListDistributorslist.fromJson(Map<String, dynamic> json) => $GetDistributorListDistributorslistFromJson(json);

  Map<String, dynamic> toJson() => $GetDistributorListDistributorslistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}