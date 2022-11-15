import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/get_upper_count_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class GetUpperCountEntity {

	String? response;
	List<GetUpperCountOrdercountlist>? ordercountlist;
	List<GetUpperCountReceivedcountlist>? receivedcountlist;
	List<int>? sizelist;
  
  GetUpperCountEntity();

  factory GetUpperCountEntity.fromJson(Map<String, dynamic> json) => $GetUpperCountEntityFromJson(json);

  Map<String, dynamic> toJson() => $GetUpperCountEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GetUpperCountOrdercountlist {

	int? id;
	String? companyid;
	String? porderid;
	String? companyplanno;
	String? planno;
	String? artno;
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
	String? totalpairs;
	String? status;
	String? status1;
	String? createddate;
	String? orderno;
	String? cutofdate;
	String? note;
	String? artnoname;
  
  GetUpperCountOrdercountlist();

  factory GetUpperCountOrdercountlist.fromJson(Map<String, dynamic> json) => $GetUpperCountOrdercountlistFromJson(json);

  Map<String, dynamic> toJson() => $GetUpperCountOrdercountlistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GetUpperCountReceivedcountlist {

	int? id;
	String? orderno;
	String? companyplanno;
	String? planno;
	String? countid;
	String? artnumber;
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
	String? createddate;
  
  GetUpperCountReceivedcountlist();

  factory GetUpperCountReceivedcountlist.fromJson(Map<String, dynamic> json) => $GetUpperCountReceivedcountlistFromJson(json);

  Map<String, dynamic> toJson() => $GetUpperCountReceivedcountlistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}