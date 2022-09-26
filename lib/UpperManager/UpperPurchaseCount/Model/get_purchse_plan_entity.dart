import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/get_purchse_plan_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class GetPurchsePlanEntity {

	String? response;
	List<GetPurchsePlanPurchaseplanlist>? purchaseplanlist;
  
  GetPurchsePlanEntity();

  factory GetPurchsePlanEntity.fromJson(Map<String, dynamic> json) => $GetPurchsePlanEntityFromJson(json);

  Map<String, dynamic> toJson() => $GetPurchsePlanEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GetPurchsePlanPurchaseplanlist {

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
  
  GetPurchsePlanPurchaseplanlist();

  factory GetPurchsePlanPurchaseplanlist.fromJson(Map<String, dynamic> json) => $GetPurchsePlanPurchaseplanlistFromJson(json);

  Map<String, dynamic> toJson() => $GetPurchsePlanPurchaseplanlistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}