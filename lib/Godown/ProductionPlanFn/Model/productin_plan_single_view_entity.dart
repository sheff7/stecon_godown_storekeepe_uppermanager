import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/productin_plan_single_view_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class ProductinPlanSingleViewEntity {

	String? response;
	List<ProductinPlanSingleViewProductionlist>? productionlist;
	List<ProductinPlanSingleViewProductionplanlist>? productionplanlist;
	List<ProductinPlanSingleViewTotalproductionlist>? totalproductionlist;
	List<ProductinPlanSingleViewTotalupperlist>? totalupperlist;
  
  ProductinPlanSingleViewEntity();

  factory ProductinPlanSingleViewEntity.fromJson(Map<String, dynamic> json) => $ProductinPlanSingleViewEntityFromJson(json);

  Map<String, dynamic> toJson() => $ProductinPlanSingleViewEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ProductinPlanSingleViewProductionlist {

	int? id;
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
	String? productionid;
	String? distributorid;
	String? totalpairs;
	String? box;
	String? createddate;
	String? date;
	String? status;
	String? orderno;
	String? orderid;
	String? artnoname;
	dynamic coverimageurl;
	String? distributorname;
  
  ProductinPlanSingleViewProductionlist();

  factory ProductinPlanSingleViewProductionlist.fromJson(Map<String, dynamic> json) => $ProductinPlanSingleViewProductionlistFromJson(json);

  Map<String, dynamic> toJson() => $ProductinPlanSingleViewProductionlistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ProductinPlanSingleViewProductionplanlist {

	int? id;
	String? artno;
	String? machineno;
	String? dateofproduction;
	String? status;
	String? status1;
	String? createddate;
	String? dieno;
	String? soulcolor;
	String? artnoname;
	String? coverimageurl;
	String? machinename;
	String? slno;
  
  ProductinPlanSingleViewProductionplanlist();

  factory ProductinPlanSingleViewProductionplanlist.fromJson(Map<String, dynamic> json) => $ProductinPlanSingleViewProductionplanlistFromJson(json);

  Map<String, dynamic> toJson() => $ProductinPlanSingleViewProductionplanlistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ProductinPlanSingleViewTotalproductionlist {

	String? s1;
	String? s2;
	String? s3;
	String? s4;
	int? s5;
	int? s6;
	int? s7;
	int? s8;
	int? s9;
	String? s10;
	String? s11;
	String? s12;
	String? s13;
  
  ProductinPlanSingleViewTotalproductionlist();

  factory ProductinPlanSingleViewTotalproductionlist.fromJson(Map<String, dynamic> json) => $ProductinPlanSingleViewTotalproductionlistFromJson(json);

  Map<String, dynamic> toJson() => $ProductinPlanSingleViewTotalproductionlistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ProductinPlanSingleViewTotalupperlist {

	String? s1;
	String? s2;
	String? s3;
	String? s4;
	int? s5;
	int? s6;
	int? s7;
	int? s8;
	int? s9;
	String? s10;
	String? s11;
	String? s12;
	String? s13;
  
  ProductinPlanSingleViewTotalupperlist();

  factory ProductinPlanSingleViewTotalupperlist.fromJson(Map<String, dynamic> json) => $ProductinPlanSingleViewTotalupperlistFromJson(json);

  Map<String, dynamic> toJson() => $ProductinPlanSingleViewTotalupperlistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}