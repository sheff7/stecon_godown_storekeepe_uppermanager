import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/StoreKeeper/IssuedMaterialSkFn/Model/get_issued_material_list_entity.dart';

GetIssuedMaterialListEntity $GetIssuedMaterialListEntityFromJson(Map<String, dynamic> json) {
	final GetIssuedMaterialListEntity getIssuedMaterialListEntity = GetIssuedMaterialListEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		getIssuedMaterialListEntity.response = response;
	}
	final List<GetIssuedMaterialListMaterialitemslist>? materialitemslist = jsonConvert.convertListNotNull<GetIssuedMaterialListMaterialitemslist>(json['materialitemslist']);
	if (materialitemslist != null) {
		getIssuedMaterialListEntity.materialitemslist = materialitemslist;
	}
	return getIssuedMaterialListEntity;
}

Map<String, dynamic> $GetIssuedMaterialListEntityToJson(GetIssuedMaterialListEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['materialitemslist'] =  entity.materialitemslist?.map((v) => v.toJson()).toList();
	return data;
}

GetIssuedMaterialListMaterialitemslist $GetIssuedMaterialListMaterialitemslistFromJson(Map<String, dynamic> json) {
	final GetIssuedMaterialListMaterialitemslist getIssuedMaterialListMaterialitemslist = GetIssuedMaterialListMaterialitemslist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		getIssuedMaterialListMaterialitemslist.id = id;
	}
	final String? department = jsonConvert.convert<String>(json['department']);
	if (department != null) {
		getIssuedMaterialListMaterialitemslist.department = department;
	}
	final String? item = jsonConvert.convert<String>(json['item']);
	if (item != null) {
		getIssuedMaterialListMaterialitemslist.item = item;
	}
	final String? company = jsonConvert.convert<String>(json['company']);
	if (company != null) {
		getIssuedMaterialListMaterialitemslist.company = company;
	}
	final String? quantity = jsonConvert.convert<String>(json['quantity']);
	if (quantity != null) {
		getIssuedMaterialListMaterialitemslist.quantity = quantity;
	}
	final String? type = jsonConvert.convert<String>(json['type']);
	if (type != null) {
		getIssuedMaterialListMaterialitemslist.type = type;
	}
	final String? comments = jsonConvert.convert<String>(json['comments']);
	if (comments != null) {
		getIssuedMaterialListMaterialitemslist.comments = comments;
	}
	final String? date = jsonConvert.convert<String>(json['date']);
	if (date != null) {
		getIssuedMaterialListMaterialitemslist.date = date;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		getIssuedMaterialListMaterialitemslist.status = status;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		getIssuedMaterialListMaterialitemslist.createddate = createddate;
	}
	final int? issuedno = jsonConvert.convert<int>(json['issuedno']);
	if (issuedno != null) {
		getIssuedMaterialListMaterialitemslist.issuedno = issuedno;
	}
	final String? departmentname = jsonConvert.convert<String>(json['departmentname']);
	if (departmentname != null) {
		getIssuedMaterialListMaterialitemslist.departmentname = departmentname;
	}
	final String? itemnanme = jsonConvert.convert<String>(json['itemnanme']);
	if (itemnanme != null) {
		getIssuedMaterialListMaterialitemslist.itemnanme = itemnanme;
	}
	final String? companyname = jsonConvert.convert<String>(json['companyname']);
	if (companyname != null) {
		getIssuedMaterialListMaterialitemslist.companyname = companyname;
	}
	return getIssuedMaterialListMaterialitemslist;
}

Map<String, dynamic> $GetIssuedMaterialListMaterialitemslistToJson(GetIssuedMaterialListMaterialitemslist entity) {
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