import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperPurchasePlan/Model/pending_order_u_p_m_entity.dart';

PendingOrderUPMEntity $PendingOrderUPMEntityFromJson(Map<String, dynamic> json) {
	final PendingOrderUPMEntity pendingOrderUPMEntity = PendingOrderUPMEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		pendingOrderUPMEntity.response = response;
	}
	final List<PendingOrderUPMPendingorderslist>? pendingorderslist = jsonConvert.convertListNotNull<PendingOrderUPMPendingorderslist>(json['pendingorderslist']);
	if (pendingorderslist != null) {
		pendingOrderUPMEntity.pendingorderslist = pendingorderslist;
	}
	return pendingOrderUPMEntity;
}

Map<String, dynamic> $PendingOrderUPMEntityToJson(PendingOrderUPMEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['pendingorderslist'] =  entity.pendingorderslist?.map((v) => v.toJson()).toList();
	return data;
}

PendingOrderUPMPendingorderslist $PendingOrderUPMPendingorderslistFromJson(Map<String, dynamic> json) {
	final PendingOrderUPMPendingorderslist pendingOrderUPMPendingorderslist = PendingOrderUPMPendingorderslist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		pendingOrderUPMPendingorderslist.id = id;
	}
	final String? companyid = jsonConvert.convert<String>(json['companyid']);
	if (companyid != null) {
		pendingOrderUPMPendingorderslist.companyid = companyid;
	}
	final String? porderid = jsonConvert.convert<String>(json['porderid']);
	if (porderid != null) {
		pendingOrderUPMPendingorderslist.porderid = porderid;
	}
	final String? companyplanno = jsonConvert.convert<String>(json['companyplanno']);
	if (companyplanno != null) {
		pendingOrderUPMPendingorderslist.companyplanno = companyplanno;
	}
	final String? planno = jsonConvert.convert<String>(json['planno']);
	if (planno != null) {
		pendingOrderUPMPendingorderslist.planno = planno;
	}
	final String? artno = jsonConvert.convert<String>(json['artno']);
	if (artno != null) {
		pendingOrderUPMPendingorderslist.artno = artno;
	}
	final String? s1 = jsonConvert.convert<String>(json['s1']);
	if (s1 != null) {
		pendingOrderUPMPendingorderslist.s1 = s1;
	}
	final String? s2 = jsonConvert.convert<String>(json['s2']);
	if (s2 != null) {
		pendingOrderUPMPendingorderslist.s2 = s2;
	}
	final String? s3 = jsonConvert.convert<String>(json['s3']);
	if (s3 != null) {
		pendingOrderUPMPendingorderslist.s3 = s3;
	}
	final String? s4 = jsonConvert.convert<String>(json['s4']);
	if (s4 != null) {
		pendingOrderUPMPendingorderslist.s4 = s4;
	}
	final String? s5 = jsonConvert.convert<String>(json['s5']);
	if (s5 != null) {
		pendingOrderUPMPendingorderslist.s5 = s5;
	}
	final String? s6 = jsonConvert.convert<String>(json['s6']);
	if (s6 != null) {
		pendingOrderUPMPendingorderslist.s6 = s6;
	}
	final String? s7 = jsonConvert.convert<String>(json['s7']);
	if (s7 != null) {
		pendingOrderUPMPendingorderslist.s7 = s7;
	}
	final String? s8 = jsonConvert.convert<String>(json['s8']);
	if (s8 != null) {
		pendingOrderUPMPendingorderslist.s8 = s8;
	}
	final String? s9 = jsonConvert.convert<String>(json['s9']);
	if (s9 != null) {
		pendingOrderUPMPendingorderslist.s9 = s9;
	}
	final String? s10 = jsonConvert.convert<String>(json['s10']);
	if (s10 != null) {
		pendingOrderUPMPendingorderslist.s10 = s10;
	}
	final String? s11 = jsonConvert.convert<String>(json['s11']);
	if (s11 != null) {
		pendingOrderUPMPendingorderslist.s11 = s11;
	}
	final String? s12 = jsonConvert.convert<String>(json['s12']);
	if (s12 != null) {
		pendingOrderUPMPendingorderslist.s12 = s12;
	}
	final String? s13 = jsonConvert.convert<String>(json['s13']);
	if (s13 != null) {
		pendingOrderUPMPendingorderslist.s13 = s13;
	}
	final String? totalpairs = jsonConvert.convert<String>(json['totalpairs']);
	if (totalpairs != null) {
		pendingOrderUPMPendingorderslist.totalpairs = totalpairs;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		pendingOrderUPMPendingorderslist.status = status;
	}
	final String? status1 = jsonConvert.convert<String>(json['status1']);
	if (status1 != null) {
		pendingOrderUPMPendingorderslist.status1 = status1;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		pendingOrderUPMPendingorderslist.createddate = createddate;
	}
	final String? orderno = jsonConvert.convert<String>(json['orderno']);
	if (orderno != null) {
		pendingOrderUPMPendingorderslist.orderno = orderno;
	}
	final String? cutofdate = jsonConvert.convert<String>(json['cutofdate']);
	if (cutofdate != null) {
		pendingOrderUPMPendingorderslist.cutofdate = cutofdate;
	}
	final String? note = jsonConvert.convert<String>(json['note']);
	if (note != null) {
		pendingOrderUPMPendingorderslist.note = note;
	}
	final String? companyname = jsonConvert.convert<String>(json['companyname']);
	if (companyname != null) {
		pendingOrderUPMPendingorderslist.companyname = companyname;
	}
	final String? artnoname = jsonConvert.convert<String>(json['artnoname']);
	if (artnoname != null) {
		pendingOrderUPMPendingorderslist.artnoname = artnoname;
	}
	final String? categoryname = jsonConvert.convert<String>(json['categoryname']);
	if (categoryname != null) {
		pendingOrderUPMPendingorderslist.categoryname = categoryname;
	}
	final String? colorname = jsonConvert.convert<String>(json['colorname']);
	if (colorname != null) {
		pendingOrderUPMPendingorderslist.colorname = colorname;
	}
	return pendingOrderUPMPendingorderslist;
}

Map<String, dynamic> $PendingOrderUPMPendingorderslistToJson(PendingOrderUPMPendingorderslist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['companyid'] = entity.companyid;
	data['porderid'] = entity.porderid;
	data['companyplanno'] = entity.companyplanno;
	data['planno'] = entity.planno;
	data['artno'] = entity.artno;
	data['s1'] = entity.s1;
	data['s2'] = entity.s2;
	data['s3'] = entity.s3;
	data['s4'] = entity.s4;
	data['s5'] = entity.s5;
	data['s6'] = entity.s6;
	data['s7'] = entity.s7;
	data['s8'] = entity.s8;
	data['s9'] = entity.s9;
	data['s10'] = entity.s10;
	data['s11'] = entity.s11;
	data['s12'] = entity.s12;
	data['s13'] = entity.s13;
	data['totalpairs'] = entity.totalpairs;
	data['status'] = entity.status;
	data['status1'] = entity.status1;
	data['createddate'] = entity.createddate;
	data['orderno'] = entity.orderno;
	data['cutofdate'] = entity.cutofdate;
	data['note'] = entity.note;
	data['companyname'] = entity.companyname;
	data['artnoname'] = entity.artnoname;
	data['categoryname'] = entity.categoryname;
	data['colorname'] = entity.colorname;
	return data;
}