import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperPurchaseCount/Model/get_department_list_entity.dart';

GetDepartmentListEntity $GetDepartmentListEntityFromJson(Map<String, dynamic> json) {
	final GetDepartmentListEntity getDepartmentListEntity = GetDepartmentListEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		getDepartmentListEntity.response = response;
	}
	final List<GetDepartmentListDepartmentlist>? departmentlist = jsonConvert.convertListNotNull<GetDepartmentListDepartmentlist>(json['departmentlist']);
	if (departmentlist != null) {
		getDepartmentListEntity.departmentlist = departmentlist;
	}
	return getDepartmentListEntity;
}

Map<String, dynamic> $GetDepartmentListEntityToJson(GetDepartmentListEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['departmentlist'] =  entity.departmentlist?.map((v) => v.toJson()).toList();
	return data;
}

GetDepartmentListDepartmentlist $GetDepartmentListDepartmentlistFromJson(Map<String, dynamic> json) {
	final GetDepartmentListDepartmentlist getDepartmentListDepartmentlist = GetDepartmentListDepartmentlist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		getDepartmentListDepartmentlist.id = id;
	}
	final String? departmentname = jsonConvert.convert<String>(json['departmentname']);
	if (departmentname != null) {
		getDepartmentListDepartmentlist.departmentname = departmentname;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		getDepartmentListDepartmentlist.status = status;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		getDepartmentListDepartmentlist.createddate = createddate;
	}
	return getDepartmentListDepartmentlist;
}

Map<String, dynamic> $GetDepartmentListDepartmentlistToJson(GetDepartmentListDepartmentlist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['departmentname'] = entity.departmentname;
	data['status'] = entity.status;
	data['createddate'] = entity.createddate;
	return data;
}