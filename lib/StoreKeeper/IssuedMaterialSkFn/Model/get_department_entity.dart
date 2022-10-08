import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/get_department_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class GetDepartmentEntity {

	String? response;
	List<GetDepartmentDepartmentlist>? departmentlist;
  
  GetDepartmentEntity();

  factory GetDepartmentEntity.fromJson(Map<String, dynamic> json) => $GetDepartmentEntityFromJson(json);

  Map<String, dynamic> toJson() => $GetDepartmentEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GetDepartmentDepartmentlist {

	int? id;
	String? departmentname;
	String? status;
	String? createddate;
  
  GetDepartmentDepartmentlist();

  factory GetDepartmentDepartmentlist.fromJson(Map<String, dynamic> json) => $GetDepartmentDepartmentlistFromJson(json);

  Map<String, dynamic> toJson() => $GetDepartmentDepartmentlistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}