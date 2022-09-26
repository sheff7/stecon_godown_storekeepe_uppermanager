import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/get_upper_plan_count_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class GetUpperPlanCountEntity {

	String? response;
	List<GetUpperPlanCountPurchaseproductlist>? purchaseproductlist;
  
  GetUpperPlanCountEntity();

  factory GetUpperPlanCountEntity.fromJson(Map<String, dynamic> json) => $GetUpperPlanCountEntityFromJson(json);

  Map<String, dynamic> toJson() => $GetUpperPlanCountEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GetUpperPlanCountPurchaseproductlist {

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
  
  GetUpperPlanCountPurchaseproductlist();

  factory GetUpperPlanCountPurchaseproductlist.fromJson(Map<String, dynamic> json) => $GetUpperPlanCountPurchaseproductlistFromJson(json);

  Map<String, dynamic> toJson() => $GetUpperPlanCountPurchaseproductlistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}