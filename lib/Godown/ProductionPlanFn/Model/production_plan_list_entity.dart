import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/production_plan_list_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class ProductionPlanListEntity {

	String? response;
	List<ProductionPlanListProductionlist>? productionlist;
  
  ProductionPlanListEntity();

  factory ProductionPlanListEntity.fromJson(Map<String, dynamic> json) => $ProductionPlanListEntityFromJson(json);

  Map<String, dynamic> toJson() => $ProductionPlanListEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ProductionPlanListProductionlist {

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
	String? machinename;
	String? slno;
  
  ProductionPlanListProductionlist();

  factory ProductionPlanListProductionlist.fromJson(Map<String, dynamic> json) => $ProductionPlanListProductionlistFromJson(json);

  Map<String, dynamic> toJson() => $ProductionPlanListProductionlistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}