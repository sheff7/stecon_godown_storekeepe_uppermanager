import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/StoreKeeper/IssuedMaterialSkFn/Model/get_issued_material_by_id_entity.dart';

GetIssuedMaterialByIdEntity $GetIssuedMaterialByIdEntityFromJson(Map<String, dynamic> json) {
	final GetIssuedMaterialByIdEntity getIssuedMaterialByIdEntity = GetIssuedMaterialByIdEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		getIssuedMaterialByIdEntity.response = response;
	}
	final List<GetIssuedMaterialByIdMaterialitemslist>? materialitemslist = jsonConvert.convertListNotNull<GetIssuedMaterialByIdMaterialitemslist>(json['materialitemslist']);
	if (materialitemslist != null) {
		getIssuedMaterialByIdEntity.materialitemslist = materialitemslist;
	}
	return getIssuedMaterialByIdEntity;
}

Map<String, dynamic> $GetIssuedMaterialByIdEntityToJson(GetIssuedMaterialByIdEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['materialitemslist'] =  entity.materialitemslist?.map((v) => v.toJson()).toList();
	return data;
}

GetIssuedMaterialByIdMaterialitemslist $GetIssuedMaterialByIdMaterialitemslistFromJson(Map<String, dynamic> json) {
	final GetIssuedMaterialByIdMaterialitemslist getIssuedMaterialByIdMaterialitemslist = GetIssuedMaterialByIdMaterialitemslist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		getIssuedMaterialByIdMaterialitemslist.id = id;
	}
	final String? department = jsonConvert.convert<String>(json['department']);
	if (department != null) {
		getIssuedMaterialByIdMaterialitemslist.department = department;
	}
	final String? item = jsonConvert.convert<String>(json['item']);
	if (item != null) {
		getIssuedMaterialByIdMaterialitemslist.item = item;
	}
	final String? company = jsonConvert.convert<String>(json['company']);
	if (company != null) {
		getIssuedMaterialByIdMaterialitemslist.company = company;
	}
	final String? quantity = jsonConvert.convert<String>(json['quantity']);
	if (quantity != null) {
		getIssuedMaterialByIdMaterialitemslist.quantity = quantity;
	}
	final String? type = jsonConvert.convert<String>(json['type']);
	if (type != null) {
		getIssuedMaterialByIdMaterialitemslist.type = type;
	}
	final String? comments = jsonConvert.convert<String>(json['comments']);
	if (comments != null) {
		getIssuedMaterialByIdMaterialitemslist.comments = comments;
	}
	final String? date = jsonConvert.convert<String>(json['date']);
	if (date != null) {
		getIssuedMaterialByIdMaterialitemslist.date = date;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		getIssuedMaterialByIdMaterialitemslist.status = status;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		getIssuedMaterialByIdMaterialitemslist.createddate = createddate;
	}
	final int? issuedno = jsonConvert.convert<int>(json['issuedno']);
	if (issuedno != null) {
		getIssuedMaterialByIdMaterialitemslist.issuedno = issuedno;
	}
	final String? departmentname = jsonConvert.convert<String>(json['departmentname']);
	if (departmentname != null) {
		getIssuedMaterialByIdMaterialitemslist.departmentname = departmentname;
	}
	final String? itemnanme = jsonConvert.convert<String>(json['itemnanme']);
	if (itemnanme != null) {
		getIssuedMaterialByIdMaterialitemslist.itemnanme = itemnanme;
	}
	final String? companyname = jsonConvert.convert<String>(json['companyname']);
	if (companyname != null) {
		getIssuedMaterialByIdMaterialitemslist.companyname = companyname;
	}
	return getIssuedMaterialByIdMaterialitemslist;
}

Map<String, dynamic> $GetIssuedMaterialByIdMaterialitemslistToJson(GetIssuedMaterialByIdMaterialitemslist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['department'] = entity.department;
	data['item'] = entity.item;
	data['company'] = entity.company;
	data['quantity'] = entity.quantity;
	data['type'] = entity.type;
	data['comments'] = entity.comments;
	data['date'] = entity.date;
	data['status'] = entity.status;
	data['createddate'] = entity.createddate;
	data['issuedno'] = entity.issuedno;
	data['departmentname'] = entity.departmentname;
	data['itemnanme'] = entity.itemnanme;
	data['companyname'] = entity.companyname;
	return data;
}