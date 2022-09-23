import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/get_upper_purchse_plan_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class GetUpperPurchsePlanEntity {

	String? response;
	List<GetUpperPurchsePlanPurchaseplanlist>? purchaseplanlist;
  
  GetUpperPurchsePlanEntity();

  factory GetUpperPurchsePlanEntity.fromJson(Map<String, dynamic> json) => $GetUpperPurchsePlanEntityFromJson(json);

  Map<String, dynamic> toJson() => $GetUpperPurchsePlanEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GetUpperPurchsePlanPurchaseplanlist {

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
  
  GetUpperPurchsePlanPurchaseplanlist();

  factory GetUpperPurchsePlanPurchaseplanlist.fromJson(Map<String, dynamic> json) => $GetUpperPurchsePlanPurchaseplanlistFromJson(json);

  Map<String, dynamic> toJson() => $GetUpperPurchsePlanPurchaseplanlistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}