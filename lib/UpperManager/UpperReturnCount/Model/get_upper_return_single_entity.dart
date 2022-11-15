import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/get_upper_return_single_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class GetUpperReturnSingleEntity {

	String? response;
	List<GetUpperReturnSingleUpperreturnlist>? upperreturnlist;
	List<GetUpperReturnSingleUpperreturncountlist>? upperreturncountlist;
	List<GetUpperReturnSingleUpperreturncountstafflist>? upperreturncountstafflist;
  
  GetUpperReturnSingleEntity();

  factory GetUpperReturnSingleEntity.fromJson(Map<String, dynamic> json) => $GetUpperReturnSingleEntityFromJson(json);

  Map<String, dynamic> toJson() => $GetUpperReturnSingleEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GetUpperReturnSingleUpperreturnlist {

	int? id;
	String? supplierid;
	String? orderno;
	String? orderid;
	String? productid;
	String? mrno;
	String? companyplanno;
	String? planno;
	String? date;
	String? status;
	String? createddate;
	String? type;
	String? countid;
	String? name;
	String? artno;
  
  GetUpperReturnSingleUpperreturnlist();

  factory GetUpperReturnSingleUpperreturnlist.fromJson(Map<String, dynamic> json) => $GetUpperReturnSingleUpperreturnlistFromJson(json);

  Map<String, dynamic> toJson() => $GetUpperReturnSingleUpperreturnlistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GetUpperReturnSingleUpperreturncountlist {

	int? id;
	String? rid;
	String? supplierid;
	String? orderid;
	String? orderno;
	String? productid;
	String? planno;
	String? s1;
	String? s2;
	String? s3;
	String? s4;
	String? s5;
	String? s6;
	String? s7;
	String? s8;
	String? s9;
	String? s10;
	String? s11;
	String? s12;
	String? s13;
	String? status;
	String? date;
	String? createddate;
  
  GetUpperReturnSingleUpperreturncountlist();

  factory GetUpperReturnSingleUpperreturncountlist.fromJson(Map<String, dynamic> json) => $GetUpperReturnSingleUpperreturncountlistFromJson(json);

  Map<String, dynamic> toJson() => $GetUpperReturnSingleUpperreturncountlistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GetUpperReturnSingleUpperreturncountstafflist {

	int? id;
	String? rid;
	String? supplierid;
	String? orderid;
	String? staffid;
	String? date;
	String? createddate;
	String? staffname;
	String? idcardno;
  
  GetUpperReturnSingleUpperreturncountstafflist();

  factory GetUpperReturnSingleUpperreturncountstafflist.fromJson(Map<String, dynamic> json) => $GetUpperReturnSingleUpperreturncountstafflistFromJson(json);

  Map<String, dynamic> toJson() => $GetUpperReturnSingleUpperreturncountstafflistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}