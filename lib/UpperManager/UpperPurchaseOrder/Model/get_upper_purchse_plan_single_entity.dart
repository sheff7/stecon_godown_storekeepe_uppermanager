import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/get_upper_purchse_plan_single_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class GetUpperPurchsePlanSingleEntity {

	String? response;
	List<GetUpperPurchsePlanSinglePurchaseplanlist>? purchaseplanlist;
	List<GetUpperPurchsePlanSinglePurchaseproductlist>? purchaseproductlist;
  
  GetUpperPurchsePlanSingleEntity();

  factory GetUpperPurchsePlanSingleEntity.fromJson(Map<String, dynamic> json) => $GetUpperPurchsePlanSingleEntityFromJson(json);

  Map<String, dynamic> toJson() => $GetUpperPurchsePlanSingleEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GetUpperPurchsePlanSinglePurchaseplanlist {

	int? id;
	String? orderno;
	String? companyid;
	String? companyplanno;
	String? status;
	String? status1;
	String? createddate;
	String? orderdate;
	String? ordertakenby;
	String? ordertakenbyid;
	String? companyname;
  
  GetUpperPurchsePlanSinglePurchaseplanlist();

  factory GetUpperPurchsePlanSinglePurchaseplanlist.fromJson(Map<String, dynamic> json) => $GetUpperPurchsePlanSinglePurchaseplanlistFromJson(json);

  Map<String, dynamic> toJson() => $GetUpperPurchsePlanSinglePurchaseplanlistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GetUpperPurchsePlanSinglePurchaseproductlist {

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
	String? companyname;
	String? artnoname;
	String? categoryname;
	String? colorname;
  
  GetUpperPurchsePlanSinglePurchaseproductlist();

  factory GetUpperPurchsePlanSinglePurchaseproductlist.fromJson(Map<String, dynamic> json) => $GetUpperPurchsePlanSinglePurchaseproductlistFromJson(json);

  Map<String, dynamic> toJson() => $GetUpperPurchsePlanSinglePurchaseproductlistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}