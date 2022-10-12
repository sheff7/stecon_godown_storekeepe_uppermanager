import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/StoreKeeper/DamagedMaterialDetailsSkFn/Model/get_damaged_material_list_sk_entity.dart';

GetDamagedMaterialListSkEntity $GetDamagedMaterialListSkEntityFromJson(Map<String, dynamic> json) {
	final GetDamagedMaterialListSkEntity getDamagedMaterialListSkEntity = GetDamagedMaterialListSkEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		getDamagedMaterialListSkEntity.response = response;
	}
	final List<GetDamagedMaterialListSkMaterialdamagedlist>? materialdamagedlist = jsonConvert.convertListNotNull<GetDamagedMaterialListSkMaterialdamagedlist>(json['materialdamagedlist']);
	if (materialdamagedlist != null) {
		getDamagedMaterialListSkEntity.materialdamagedlist = materialdamagedlist;
	}
	return getDamagedMaterialListSkEntity;
}

Map<String, dynamic> $GetDamagedMaterialListSkEntityToJson(GetDamagedMaterialListSkEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['materialdamagedlist'] =  entity.materialdamagedlist?.map((v) => v.toJson()).toList();
	return data;
}

GetDamagedMaterialListSkMaterialdamagedlist $GetDamagedMaterialListSkMaterialdamagedlistFromJson(Map<String, dynamic> json) {
	final GetDamagedMaterialListSkMaterialdamagedlist getDamagedMaterialListSkMaterialdamagedlist = GetDamagedMaterialListSkMaterialdamagedlist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		getDamagedMaterialListSkMaterialdamagedlist.id = id;
	}
	final String? issueno = jsonConvert.convert<String>(json['issueno']);
	if (issueno != null) {
		getDamagedMaterialListSkMaterialdamagedlist.issueno = issueno;
	}
	final String? department = jsonConvert.convert<String>(json['department']);
	if (department != null) {
		getDamagedMaterialListSkMaterialdamagedlist.department = department;
	}
	final String? item = jsonConvert.convert<String>(json['item']);
	if (item != null) {
		getDamagedMaterialListSkMaterialdamagedlist.item = item;
	}
	final String? company = jsonConvert.convert<String>(json['company']);
	if (company != null) {
		getDamagedMaterialListSkMaterialdamagedlist.company = company;
	}
	final String? quantity = jsonConvert.convert<String>(json['quantity']);
	if (quantity != null) {
		getDamagedMaterialListSkMaterialdamagedlist.quantity = quantity;
	}
	final String? type = jsonConvert.convert<String>(json['type']);
	if (type != null) {
		getDamagedMaterialListSkMaterialdamagedlist.type = type;
	}
	final String? comments = jsonConvert.convert<String>(json['comments']);
	if (comments != null) {
		getDamagedMaterialListSkMaterialdamagedlist.comments = comments;
	}
	final String? date = jsonConvert.convert<String>(json['date']);
	if (date != null) {
		getDamagedMaterialListSkMaterialdamagedlist.date = date;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		getDamagedMaterialListSkMaterialdamagedlist.createddate = createddate;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		getDamagedMaterialListSkMaterialdamagedlist.status = status;
	}
	final int? damagedno = jsonConvert.convert<int>(json['damagedno']);
	if (damagedno != null) {
		getDamagedMaterialListSkMaterialdamagedlist.damagedno = damagedno;
	}
	final String? departmentname = jsonConvert.convert<String>(json['departmentname']);
	if (departmentname != null) {
		getDamagedMaterialListSkMaterialdamagedlist.departmentname = departmentname;
	}
	final String? itemnanme = jsonConvert.convert<String>(json['itemnanme']);
	if (itemnanme != null) {
		getDamagedMaterialListSkMaterialdamagedlist.itemnanme = itemnanme;
	}
	final String? companyname = jsonConvert.convert<String>(json['companyname']);
	if (companyname != null) {
		getDamagedMaterialListSkMaterialdamagedlist.companyname = companyname;
	}
	return getDamagedMaterialListSkMaterialdamagedlist;
}

Map<String, dynamic> $GetDamagedMaterialListSkMaterialdamagedlistToJson(GetDamagedMaterialListSkMaterialdamagedlist entity) {
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
	data['damagedno'] = entity.damagedno;
	data['departmentname'] = entity.departmentname;
	data['itemnanme'] = entity.itemnanme;
	data['companyname'] = entity.companyname;
	return data;
}