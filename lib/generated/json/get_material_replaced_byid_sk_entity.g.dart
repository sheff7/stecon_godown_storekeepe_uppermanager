import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/StoreKeeper/MaterialReplacedDetailsSK/Model/get_material_replaced_byid_sk_entity.dart';

GetMaterialReplacedByidSkEntity $GetMaterialReplacedByidSkEntityFromJson(Map<String, dynamic> json) {
	final GetMaterialReplacedByidSkEntity getMaterialReplacedByidSkEntity = GetMaterialReplacedByidSkEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		getMaterialReplacedByidSkEntity.response = response;
	}
	final List<GetMaterialReplacedByidSkMaterialreplacedlist>? materialreplacedlist = jsonConvert.convertListNotNull<GetMaterialReplacedByidSkMaterialreplacedlist>(json['materialreplacedlist']);
	if (materialreplacedlist != null) {
		getMaterialReplacedByidSkEntity.materialreplacedlist = materialreplacedlist;
	}
	return getMaterialReplacedByidSkEntity;
}

Map<String, dynamic> $GetMaterialReplacedByidSkEntityToJson(GetMaterialReplacedByidSkEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['materialreplacedlist'] =  entity.materialreplacedlist?.map((v) => v.toJson()).toList();
	return data;
}

GetMaterialReplacedByidSkMaterialreplacedlist $GetMaterialReplacedByidSkMaterialreplacedlistFromJson(Map<String, dynamic> json) {
	final GetMaterialReplacedByidSkMaterialreplacedlist getMaterialReplacedByidSkMaterialreplacedlist = GetMaterialReplacedByidSkMaterialreplacedlist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		getMaterialReplacedByidSkMaterialreplacedlist.id = id;
	}
	final String? issueno = jsonConvert.convert<String>(json['issueno']);
	if (issueno != null) {
		getMaterialReplacedByidSkMaterialreplacedlist.issueno = issueno;
	}
	final String? department = jsonConvert.convert<String>(json['department']);
	if (department != null) {
		getMaterialReplacedByidSkMaterialreplacedlist.department = department;
	}
	final String? item = jsonConvert.convert<String>(json['item']);
	if (item != null) {
		getMaterialReplacedByidSkMaterialreplacedlist.item = item;
	}
	final String? company = jsonConvert.convert<String>(json['company']);
	if (company != null) {
		getMaterialReplacedByidSkMaterialreplacedlist.company = company;
	}
	final String? quantity = jsonConvert.convert<String>(json['quantity']);
	if (quantity != null) {
		getMaterialReplacedByidSkMaterialreplacedlist.quantity = quantity;
	}
	final String? type = jsonConvert.convert<String>(json['type']);
	if (type != null) {
		getMaterialReplacedByidSkMaterialreplacedlist.type = type;
	}
	final String? comments = jsonConvert.convert<String>(json['comments']);
	if (comments != null) {
		getMaterialReplacedByidSkMaterialreplacedlist.comments = comments;
	}
	final String? date = jsonConvert.convert<String>(json['date']);
	if (date != null) {
		getMaterialReplacedByidSkMaterialreplacedlist.date = date;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		getMaterialReplacedByidSkMaterialreplacedlist.createddate = createddate;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		getMaterialReplacedByidSkMaterialreplacedlist.status = status;
	}
	final int? replacedno = jsonConvert.convert<int>(json['replacedno']);
	if (replacedno != null) {
		getMaterialReplacedByidSkMaterialreplacedlist.replacedno = replacedno;
	}
	final String? departmentname = jsonConvert.convert<String>(json['departmentname']);
	if (departmentname != null) {
		getMaterialReplacedByidSkMaterialreplacedlist.departmentname = departmentname;
	}
	final String? itemnanme = jsonConvert.convert<String>(json['itemnanme']);
	if (itemnanme != null) {
		getMaterialReplacedByidSkMaterialreplacedlist.itemnanme = itemnanme;
	}
	final String? companyname = jsonConvert.convert<String>(json['companyname']);
	if (companyname != null) {
		getMaterialReplacedByidSkMaterialreplacedlist.companyname = companyname;
	}
	return getMaterialReplacedByidSkMaterialreplacedlist;
}

Map<String, dynamic> $GetMaterialReplacedByidSkMaterialreplacedlistToJson(GetMaterialReplacedByidSkMaterialreplacedlist entity) {
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