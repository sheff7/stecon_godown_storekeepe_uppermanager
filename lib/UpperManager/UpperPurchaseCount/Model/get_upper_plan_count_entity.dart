import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/get_upper_plan_count_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class GetUpperPlanCountEntity {

	String? response;
	List<GetUpperPlanCountPurchaseproductlist>? purchaseproductlist;
	List<GetUpperPlanCountUppercountlist>? uppercountlist;
	List<GetUpperPlanCountDamagedcountlist>? damagedcountlist;
	List<GetUpperPlanCountReceivedcountlist>? receivedcountlist;
	List<GetUpperPlanCountRecivedsupliercount>? recivedsupliercount;
	List<GetUpperPlanCountStaffcountlist>? staffcountlist;
	List<GetUpperPlanCountShortagelist>? shortagelist;
	List<GetUpperPlanCountBalancelist>? balancelist;
  
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

@JsonSerializable()
class GetUpperPlanCountUppercountlist {

	int? id;
	String? orderno;
	String? companyplano;
	String? upperorderid;
	String? companyid;
	String? dateofcounting;
	String? comments;
	String? plannoid;
	String? createddate;
	String? receivedcount;
  
  GetUpperPlanCountUppercountlist();

  factory GetUpperPlanCountUppercountlist.fromJson(Map<String, dynamic> json) => $GetUpperPlanCountUppercountlistFromJson(json);

  Map<String, dynamic> toJson() => $GetUpperPlanCountUppercountlistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GetUpperPlanCountDamagedcountlist {

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
  
  GetUpperPlanCountDamagedcountlist();

  factory GetUpperPlanCountDamagedcountlist.fromJson(Map<String, dynamic> json) => $GetUpperPlanCountDamagedcountlistFromJson(json);

  Map<String, dynamic> toJson() => $GetUpperPlanCountDamagedcountlistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GetUpperPlanCountReceivedcountlist {

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
  
  GetUpperPlanCountReceivedcountlist();

  factory GetUpperPlanCountReceivedcountlist.fromJson(Map<String, dynamic> json) => $GetUpperPlanCountReceivedcountlistFromJson(json);

  Map<String, dynamic> toJson() => $GetUpperPlanCountReceivedcountlistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GetUpperPlanCountRecivedsupliercount {

	int? id;
	String? orderno;
	String? companyplanno;
	String? planno;
	String? countid;
	String? supplierid;
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
  
  GetUpperPlanCountRecivedsupliercount();

  factory GetUpperPlanCountRecivedsupliercount.fromJson(Map<String, dynamic> json) => $GetUpperPlanCountRecivedsupliercountFromJson(json);

  Map<String, dynamic> toJson() => $GetUpperPlanCountRecivedsupliercountToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GetUpperPlanCountStaffcountlist {

	int? id;
	String? staffid;
	String? createddate;
	String? countid;
	String? orderno;
	String? planno;
	String? staffname;
	String? idcardno;
	String? deaprtment;
	String? departmentname;
  
  GetUpperPlanCountStaffcountlist();

  factory GetUpperPlanCountStaffcountlist.fromJson(Map<String, dynamic> json) => $GetUpperPlanCountStaffcountlistFromJson(json);

  Map<String, dynamic> toJson() => $GetUpperPlanCountStaffcountlistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GetUpperPlanCountShortagelist {

	int? id;
	String? orderno;
	String? companyplanno;
	String? planno;
	String? countid;
	String? supplierid;
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
  
  GetUpperPlanCountShortagelist();

  factory GetUpperPlanCountShortagelist.fromJson(Map<String, dynamic> json) => $GetUpperPlanCountShortagelistFromJson(json);

  Map<String, dynamic> toJson() => $GetUpperPlanCountShortagelistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GetUpperPlanCountBalancelist {

	int? id;
	String? orderno;
	String? companyplanno;
	String? planno;
	String? countid;
	String? supplierid;
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
  
  GetUpperPlanCountBalancelist();

  factory GetUpperPlanCountBalancelist.fromJson(Map<String, dynamic> json) => $GetUpperPlanCountBalancelistFromJson(json);

  Map<String, dynamic> toJson() => $GetUpperPlanCountBalancelistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}