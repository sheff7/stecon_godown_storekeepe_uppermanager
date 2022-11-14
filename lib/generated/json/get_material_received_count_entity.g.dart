import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/StoreKeeper/Material Received/Model/get_material_received_count_entity.dart';

GetMaterialReceivedCountEntity $GetMaterialReceivedCountEntityFromJson(Map<String, dynamic> json) {
	final GetMaterialReceivedCountEntity getMaterialReceivedCountEntity = GetMaterialReceivedCountEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		getMaterialReceivedCountEntity.response = response;
	}
	final List<GetMaterialReceivedCountMaterialrecievedlist>? materialrecievedlist = jsonConvert.convertListNotNull<GetMaterialReceivedCountMaterialrecievedlist>(json['materialrecievedlist']);
	if (materialrecievedlist != null) {
		getMaterialReceivedCountEntity.materialrecievedlist = materialrecievedlist;
	}
	return getMaterialReceivedCountEntity;
}

Map<String, dynamic> $GetMaterialReceivedCountEntityToJson(GetMaterialReceivedCountEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['materialrecievedlist'] =  entity.materialrecievedlist?.map((v) => v.toJson()).toList();
	return data;
}

GetMaterialReceivedCountMaterialrecievedlist $GetMaterialReceivedCountMaterialrecievedlistFromJson(Map<String, dynamic> json) {
	final GetMaterialReceivedCountMaterialrecievedlist getMaterialReceivedCountMaterialrecievedlist = GetMaterialReceivedCountMaterialrecievedlist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		getMaterialReceivedCountMaterialrecievedlist.id = id;
	}
	final String? orderid = jsonConvert.convert<String>(json['orderid']);
	if (orderid != null) {
		getMaterialReceivedCountMaterialrecievedlist.orderid = orderid;
	}
	final String? orderno = jsonConvert.convert<String>(json['orderno']);
	if (orderno != null) {
		getMaterialReceivedCountMaterialrecievedlist.orderno = orderno;
	}
	final String? itemid = jsonConvert.convert<String>(json['itemid']);
	if (itemid != null) {
		getMaterialReceivedCountMaterialrecievedlist.itemid = itemid;
	}
	final String? category = jsonConvert.convert<String>(json['category']);
	if (category != null) {
		getMaterialReceivedCountMaterialrecievedlist.category = category;
	}
	final String? companyid = jsonConvert.convert<String>(json['companyid']);
	if (companyid != null) {
		getMaterialReceivedCountMaterialrecievedlist.companyid = companyid;
	}
	final String? type = jsonConvert.convert<String>(json['type']);
	if (type != null) {
		getMaterialReceivedCountMaterialrecievedlist.type = type;
	}
	final String? oc = jsonConvert.convert<String>(json['oc']);
	if (oc != null) {
		getMaterialReceivedCountMaterialrecievedlist.oc = oc;
	}
	final String? rc = jsonConvert.convert<String>(json['rc']);
	if (rc != null) {
		getMaterialReceivedCountMaterialrecievedlist.rc = rc;
	}
	final String? dc = jsonConvert.convert<String>(json['dc']);
	if (dc != null) {
		getMaterialReceivedCountMaterialrecievedlist.dc = dc;
	}
	final String? note = jsonConvert.convert<String>(json['note']);
	if (note != null) {
		getMaterialReceivedCountMaterialrecievedlist.note = note;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		getMaterialReceivedCountMaterialrecievedlist.createddate = createddate;
	}
	final String? date = jsonConvert.convert<String>(json['date']);
	if (date != null) {
		getMaterialReceivedCountMaterialrecievedlist.date = date;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		getMaterialReceivedCountMaterialrecievedlist.status = status;
	}
	final String? itemname = jsonConvert.convert<String>(json['itemname']);
	if (itemname != null) {
		getMaterialReceivedCountMaterialrecievedlist.itemname = itemname;
	}
	final String? companyname = jsonConvert.convert<String>(json['companyname']);
	if (companyname != null) {
		getMaterialReceivedCountMaterialrecievedlist.companyname = companyname;
	}
	return getMaterialReceivedCountMaterialrecievedlist;
}

Map<String, dynamic> $GetMaterialReceivedCountMaterialrecievedlistToJson(GetMaterialReceivedCountMaterialrecievedlist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['orderid'] = entity.orderid;
	data['orderno'] = entity.orderno;
	data['itemid'] = entity.itemid;
	data['category'] = entity.category;
	data['companyid'] = entity.companyid;
	data['type'] = entity.type;
	data['oc'] = entity.oc;
	data['rc'] = entity.rc;
	data['dc'] = entity.dc;
	data['note'] = entity.note;
	data['createddate'] = entity.createddate;
	data['date'] = entity.date;
	data['status'] = entity.status;
	data['itemname'] = entity.itemname;
	data['companyname'] = entity.companyname;
	return data;
}