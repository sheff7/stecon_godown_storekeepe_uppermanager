import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/get_upper_purchase_plan_for_count_single_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class GetUpperPurchasePlanForCountSingleEntity {

	String? response;
	List<GetUpperPurchasePlanForCountSinglePurchaseplanlist>? purchaseplanlist;
	List<GetUpperPurchasePlanForCountSinglePurchaseproductlist>? purchaseproductlist;
  
  GetUpperPurchasePlanForCountSingleEntity();

  factory GetUpperPurchasePlanForCountSingleEntity.fromJson(Map<String, dynamic> json) => $GetUpperPurchasePlanForCountSingleEntityFromJson(json);

  Map<String, dynamic> toJson() => $GetUpperPurchasePlanForCountSingleEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GetUpperPurchasePlanForCountSinglePurchaseplanlist {

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
  
  GetUpperPurchasePlanForCountSinglePurchaseplanlist();

  factory GetUpperPurchasePlanForCountSinglePurchaseplanlist.fromJson(Map<String, dynamic> json) => $GetUpperPurchasePlanForCountSinglePurchaseplanlistFromJson(json);

  Map<String, dynamic> toJson() => $GetUpperPurchasePlanForCountSinglePurchaseplanlistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GetUpperPurchasePlanForCountSinglePurchaseproductlist {

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
  
  GetUpperPurchasePlanForCountSinglePurchaseproductlist();

  factory GetUpperPurchasePlanForCountSinglePurchaseproductlist.fromJson(Map<String, dynamic> json) => $GetUpperPurchasePlanForCountSinglePurchaseproductlistFromJson(json);

  Map<String, dynamic> toJson() => $GetUpperPurchasePlanForCountSinglePurchaseproductlistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}