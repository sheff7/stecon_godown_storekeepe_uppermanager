import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/get_uppper_plan_no_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class GetUppperPlanNoEntity {

	String? response;
	String? upperplanno;
  
  GetUppperPlanNoEntity();

  factory GetUppperPlanNoEntity.fromJson(Map<String, dynamic> json) => $GetUppperPlanNoEntityFromJson(json);

  Map<String, dynamic> toJson() => $GetUppperPlanNoEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}