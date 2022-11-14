import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/StoreKeeper/Material Received/Model/get_material_order_entity.dart';

GetMaterialOrderEntity $GetMaterialOrderEntityFromJson(Map<String, dynamic> json) {
	final GetMaterialOrderEntity getMaterialOrderEntity = GetMaterialOrderEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		getMaterialOrderEntity.response = response;
	}
	final List<GetMaterialOrderMaterialorderlist>? materialorderlist = jsonConvert.convertListNotNull<GetMaterialOrderMaterialorderlist>(json['materialorderlist']);
	if (materialorderlist != null) {
		getMaterialOrderEntity.materialorderlist = materialorderlist;
	}
	return getMaterialOrderEntity;
}

Map<String, dynamic> $GetMaterialOrderEntityToJson(GetMaterialOrderEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['materialorderlist'] =  entity.materialorderlist?.map((v) => v.toJson()).toList();
	return data;
}

GetMaterialOrderMaterialorderlist $GetMaterialOrderMaterialorderlistFromJson(Map<String, dynamic> json) {
	final GetMaterialOrderMaterialorderlist getMaterialOrderMaterialorderlist = GetMaterialOrderMaterialorderlist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		getMaterialOrderMaterialorderlist.id = id;
	}
	final String? departmentid = jsonConvert.convert<String>(json['departmentid']);
	if (departmentid != null) {
		getMaterialOrderMaterialorderlist.departmentid = departmentid;
	}
	final String? itemid = jsonConvert.convert<String>(json['itemid']);
	if (itemid != null) {
		getMaterialOrderMaterialorderlist.itemid = itemid;
	}
	final String? companyid = jsonConvert.convert<String>(json['companyid']);
	if (companyid != null) {
		getMaterialOrderMaterialorderlist.companyid = companyid;
	}
	final String? qty = jsonConvert.convert<String>(json['qty']);
	if (qty != null) {
		getMaterialOrderMaterialorderlist.qty = qty;
	}
	final String? type = jsonConvert.convert<String>(json['type']);
	if (type != null) {
		getMaterialOrderMaterialorderlist.type = type;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		getMaterialOrderMaterialorderlist.createddate = createddate;
	}
	final String? materialorderno = jsonConvert.convert<String>(json['materialorderno']);
	if (materialorderno != null) {
		getMaterialOrderMaterialorderlist.materialorderno = materialorderno;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		getMaterialOrderMaterialorderlist.status = status;
	}
	final String? orderdate = jsonConvert.convert<String>(json['orderdate']);
	if (orderdate != null) {
		getMaterialOrderMaterialorderlist.orderdate = orderdate;
	}
	final String? remarks = jsonConvert.convert<String>(json['remarks']);
	if (remarks != null) {
		getMaterialOrderMaterialorderlist.remarks = remarks;
	}
	final String? status1 = jsonConvert.convert<String>(json['status1']);
	if (status1 != null) {
		getMaterialOrderMaterialorderlist.status1 = status1;
	}
	final String? price = jsonConvert.convert<String>(json['price']);
	if (price != null) {
		getMaterialOrderMaterialorderlist.price = price;
	}
	final String? departmentname = jsonConvert.convert<String>(json['departmentname']);
	if (departmentname != null) {
		getMaterialOrderMaterialorderlist.departmentname = departmentname;
	}
	final String? itemname = jsonConvert.convert<String>(json['itemname']);
	if (itemname != null) {
		getMaterialOrderMaterialorderlist.itemname = itemname;
	}
	final String? category = jsonConvert.convert<String>(json['category']);
	if (category != null) {
		getMaterialOrderMaterialorderlist.category = category;
	}
	final String? categoryname = jsonConvert.convert<String>(json['categoryname']);
	if (categoryname != null) {
		getMaterialOrderMaterialorderlist.categoryname = categoryname;
	}
	final String? companyname = jsonConvert.convert<String>(json['companyname']);
	if (companyname != null) {
		getMaterialOrderMaterialorderlist.companyname = companyname;
	}
	return getMaterialOrderMaterialorderlist;
}

Map<String, dynamic> $GetMaterialOrderMaterialorderlistToJson(GetMaterialOrderMaterialorderlist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['departmentid'] = entity.departmentid;
	data['itemid'] = entity.itemid;
	data['companyid'] = entity.companyid;
	data['qty'] = entity.qty;
	data['type'] = entity.type;
	data['createddate'] = entity.createddate;
	data['materialorderno'] = entity.materialorderno;
	data['status'] = entity.status;
	data['orderdate'] = entity.orderdate;
	data['remarks'] = entity.remarks;
	data['status1'] = entity.status1;
	data['price'] = entity.price;
	data['departmentname'] = entity.departmentname;
	data['itemname'] = entity.itemname;
	data['category'] = entity.category;
	data['categoryname'] = entity.categoryname;
	data['companyname'] = entity.companyname;
	return data;
}