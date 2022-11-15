import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/get_upper_plan_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class GetUpperPlanEntity {

	String? response;
	List<GetUpperPlanPlannolist>? plannolist;
  
  GetUpperPlanEntity();

  factory GetUpperPlanEntity.fromJson(Map<String, dynamic> json) => $GetUpperPlanEntityFromJson(json);

  Map<String, dynamic> toJson() => $GetUpperPlanEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GetUpperPlanPlannolist {

	int? id;
	String? companyplanno;
	String? planno;
  
  GetUpperPlanPlannolist();

  factory GetUpperPlanPlannolist.fromJson(Map<String, dynamic> json) => $GetUpperPlanPlannolistFromJson(json);

  Map<String, dynamic> toJson() => $GetUpperPlanPlannolistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}