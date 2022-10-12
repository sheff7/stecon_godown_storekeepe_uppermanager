import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/StoreKeeper/MaterialReplacedDetailsSK/Model/get_material_replaced_sk_entity.dart';

GetMaterialReplacedSkEntity $GetMaterialReplacedSkEntityFromJson(Map<String, dynamic> json) {
	final GetMaterialReplacedSkEntity getMaterialReplacedSkEntity = GetMaterialReplacedSkEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		getMaterialReplacedSkEntity.response = response;
	}
	final List<GetMaterialReplacedSkMaterialreplacedlist>? materialreplacedlist = jsonConvert.convertListNotNull<GetMaterialReplacedSkMaterialreplacedlist>(json['materialreplacedlist']);
	if (materialreplacedlist != null) {
		getMaterialReplacedSkEntity.materialreplacedlist = materialreplacedlist;
	}
	return getMaterialReplacedSkEntity;
}

Map<String, dynamic> $GetMaterialReplacedSkEntityToJson(GetMaterialReplacedSkEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['materialreplacedlist'] =  entity.materialreplacedlist?.map((v) => v.toJson()).toList();
	return data;
}

GetMaterialReplacedSkMaterialreplacedlist $GetMaterialReplacedSkMaterialreplacedlistFromJson(Map<String, dynamic> json) {
	final GetMaterialReplacedSkMaterialreplacedlist getMaterialReplacedSkMaterialreplacedlist = GetMaterialReplacedSkMaterialreplacedlist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		getMaterialReplacedSkMaterialreplacedlist.id = id;
	}
	final String? issueno = jsonConvert.convert<String>(json['issueno']);
	if (issueno != null) {
		getMaterialReplacedSkMaterialreplacedlist.issueno = issueno;
	}
	final String? department = jsonConvert.convert<String>(json['department']);
	if (department != null) {
		getMaterialReplacedSkMaterialreplacedlist.department = department;
	}
	final String? item = jsonConvert.convert<String>(json['item']);
	if (item != null) {
		getMaterialReplacedSkMaterialreplacedlist.item = item;
	}
	final String? company = jsonConvert.convert<String>(json['company']);
	if (company != null) {
		getMaterialReplacedSkMaterialreplacedlist.company = company;
	}
	final String? quantity = jsonConvert.convert<String>(json['quantity']);
	if (quantity != null) {
		getMaterialReplacedSkMaterialreplacedlist.quantity = quantity;
	}
	final String? type = jsonConvert.convert<String>(json['type']);
	if (type != null) {
		getMaterialReplacedSkMaterialreplacedlist.type = type;
	}
	final String? comments = jsonConvert.convert<String>(json['comments']);
	if (comments != null) {
		getMaterialReplacedSkMaterialreplacedlist.comments = comments;
	}
	final String? date = jsonConvert.convert<String>(json['date']);
	if (date != null) {
		getMaterialReplacedSkMaterialreplacedlist.date = date;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		getMaterialReplacedSkMaterialreplacedlist.createddate = createddate;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		getMaterialReplacedSkMaterialreplacedlist.status = status;
	}
	final int? replacedno = jsonConvert.convert<int>(json['replacedno']);
	if (replacedno != null) {
		getMaterialReplacedSkMaterialreplacedlist.replacedno = replacedno;
	}
	final String? departmentname = jsonConvert.convert<String>(json['departmentname']);
	if (departmentname != null) {
		getMaterialReplacedSkMaterialreplacedlist.departmentname = departmentname;
	}
	final String? itemnanme = jsonConvert.convert<String>(json['itemnanme']);
	if (itemnanme != null) {
		getMaterialReplacedSkMaterialreplacedlist.itemnanme = itemnanme;
	}
	final String? companyname = jsonConvert.convert<String>(json['companyname']);
	if (companyname != null) {
		getMaterialReplacedSkMaterialreplacedlist.companyname = companyname;
	}
	return getMaterialReplacedSkMaterialreplacedlist;
}

Map<String, dynamic> $GetMaterialReplacedSkMaterialreplacedlistToJson(GetMaterialReplacedSkMaterialreplacedlist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['issueno'] = entity.issueno;
	data['department'] = entity.department;
	data['item'] = entity.item;
	data['company'] = entity.company;
	data['quantity'] = entity.quantity;
	data['type'] = entity.type;
	data['comments'] = entity.comments;
	data['date'] = entity.date;
	data['createddate'] = entity.createddate;
	data['status'] = entity.status;
	data['replacedno'] = entity.replacedno;
	data['departmentname'] = entity.departmentname;
	data['itemnanme'] = entity.itemnanme;
	data['companyname'] = entity.companyname;
	return data;
}