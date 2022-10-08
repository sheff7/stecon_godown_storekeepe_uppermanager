import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/StoreKeeper/IssuedMaterialSkFn/Model/get_department_entity.dart';

GetDepartmentEntity $GetDepartmentEntityFromJson(Map<String, dynamic> json) {
	final GetDepartmentEntity getDepartmentEntity = GetDepartmentEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		getDepartmentEntity.response = response;
	}
	final List<GetDepartmentDepartmentlist>? departmentlist = jsonConvert.convertListNotNull<GetDepartmentDepartmentlist>(json['departmentlist']);
	if (departmentlist != null) {
		getDepartmentEntity.departmentlist = departmentlist;
	}
	return getDepartmentEntity;
}

Map<String, dynamic> $GetDepartmentEntityToJson(GetDepartmentEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['departmentlist'] =  entity.departmentlist?.map((v) => v.toJson()).toList();
	return data;
}

GetDepartmentDepartmentlist $GetDepartmentDepartmentlistFromJson(Map<String, dynamic> json) {
	final GetDepartmentDepartmentlist getDepartmentDepartmentlist = GetDepartmentDepartmentlist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		getDepartmentDepartmentlist.id = id;
	}
	final String? departmentname = jsonConvert.convert<String>(json['departmentname']);
	if (departmentname != null) {
		getDepartmentDepartmentlist.departmentname = departmentname;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		getDepartmentDepartmentlist.status = status;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		getDepartmentDepartmentlist.createddate = createddate;
	}
	return getDepartmentDepartmentlist;
}

Map<String, dynamic> $GetDepartmentDepartmentlistToJson(GetDepartmentDepartmentlist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['departmentname'] = entity.departmentname;
	data['status'] = entity.status;
	data['createddate'] = entity.createddate;
	return data;
}