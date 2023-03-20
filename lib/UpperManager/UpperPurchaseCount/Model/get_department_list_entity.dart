import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/get_department_list_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class GetDepartmentListEntity {

	String? response;
	List<GetDepartmentListDepartmentlist>? departmentlist;
  
  GetDepartmentListEntity();

  factory GetDepartmentListEntity.fromJson(Map<String, dynamic> json) => $GetDepartmentListEntityFromJson(json);

  Map<String, dynamic> toJson() => $GetDepartmentListEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GetDepartmentListDepartmentlist {

	int? id;
	String? departmentname;
	String? status;
	String? createddate;
  
  GetDepartmentListDepartmentlist();

  factory GetDepartmentListDepartmentlist.fromJson(Map<String, dynamic> json) => $GetDepartmentListDepartmentlistFromJson(json);

  Map<String, dynamic> toJson() => $GetDepartmentListDepartmentlistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}