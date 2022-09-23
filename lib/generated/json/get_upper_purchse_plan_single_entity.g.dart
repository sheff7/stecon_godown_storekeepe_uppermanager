import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperPurchaseOrder/Model/get_upper_purchse_plan_single_entity.dart';

GetUpperPurchsePlanSingleEntity $GetUpperPurchsePlanSingleEntityFromJson(Map<String, dynamic> json) {
	final GetUpperPurchsePlanSingleEntity getUpperPurchsePlanSingleEntity = GetUpperPurchsePlanSingleEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		getUpperPurchsePlanSingleEntity.response = response;
	}
	final List<GetUpperPurchsePlanSinglePurchaseplanlist>? purchaseplanlist = jsonConvert.convertListNotNull<GetUpperPurchsePlanSinglePurchaseplanlist>(json['purchaseplanlist']);
	if (purchaseplanlist != null) {
		getUpperPurchsePlanSingleEntity.purchaseplanlist = purchaseplanlist;
	}
	final List<GetUpperPurchsePlanSinglePurchaseproductlist>? purchaseproductlist = jsonConvert.convertListNotNull<GetUpperPurchsePlanSinglePurchaseproductlist>(json['purchaseproductlist']);
	if (purchaseproductlist != null) {
		getUpperPurchsePlanSingleEntity.purchaseproductlist = purchaseproductlist;
	}
	return getUpperPurchsePlanSingleEntity;
}

Map<String, dynamic> $GetUpperPurchsePlanSingleEntityToJson(GetUpperPurchsePlanSingleEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['purchaseplanlist'] =  entity.purchaseplanlist?.map((v) => v.toJson()).toList();
	data['purchaseproductlist'] =  entity.purchaseproductlist?.map((v) => v.toJson()).toList();
	return data;
}

GetUpperPurchsePlanSinglePurchaseplanlist $GetUpperPurchsePlanSinglePurchaseplanlistFromJson(Map<String, dynamic> json) {
	final GetUpperPurchsePlanSinglePurchaseplanlist getUpperPurchsePlanSinglePurchaseplanlist = GetUpperPurchsePlanSinglePurchaseplanlist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		getUpperPurchsePlanSinglePurchaseplanlist.id = id;
	}
	final String? orderno = jsonConvert.convert<String>(json['orderno']);
	if (orderno != null) {
		getUpperPurchsePlanSinglePurchaseplanlist.orderno = orderno;
	}
	final String? companyid = jsonConvert.convert<String>(json['companyid']);
	if (companyid != null) {
		getUpperPurchsePlanSinglePurchaseplanlist.companyid = companyid;
	}
	final String? companyplanno = jsonConvert.convert<String>(json['companyplanno']);
	if (companyplanno != null) {
		getUpperPurchsePlanSinglePurchaseplanlist.companyplanno = companyplanno;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		getUpperPurchsePlanSinglePurchaseplanlist.status = status;
	}
	final String? status1 = jsonConvert.convert<String>(json['status1']);
	if (status1 != null) {
		getUpperPurchsePlanSinglePurchaseplanlist.status1 = status1;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		getUpperPurchsePlanSinglePurchaseplanlist.createddate = createddate;
	}
	final String? orderdate = jsonConvert.convert<String>(json['orderdate']);
	if (orderdate != null) {
		getUpperPurchsePlanSinglePurchaseplanlist.orderdate = orderdate;
	}
	final String? ordertakenby = jsonConvert.convert<String>(json['ordertakenby']);
	if (ordertakenby != null) {
		getUpperPurchsePlanSinglePurchaseplanlist.ordertakenby = ordertakenby;
	}
	final String? ordertakenbyid = jsonConvert.convert<String>(json['ordertakenbyid']);
	if (ordertakenbyid != null) {
		getUpperPurchsePlanSinglePurchaseplanlist.ordertakenbyid = ordertakenbyid;
	}
	final String? companyname = jsonConvert.convert<String>(json['companyname']);
	if (companyname != null) {
		getUpperPurchsePlanSinglePurchaseplanlist.companyname = companyname;
	}
	return getUpperPurchsePlanSinglePurchaseplanlist;
}

Map<String, dynamic> $GetUpperPurchsePlanSinglePurchaseplanlistToJson(GetUpperPurchsePlanSinglePurchaseplanlist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['orderno'] = entity.orderno;
	data['companyid'] = entity.companyid;
	data['companyplanno'] = entity.companyplanno;
	data['status'] = entity.status;
	data['status1'] = entity.status1;
	data['createddate'] = entity.createddate;
	data['orderdate'] = entity.orderdate;
	data['ordertakenby'] = entity.ordertakenby;
	data['ordertakenbyid'] = entity.ordertakenbyid;
	data['companyname'] = entity.companyname;
	return data;
}

GetUpperPurchsePlanSinglePurchaseproductlist $GetUpperPurchsePlanSinglePurchaseproductlistFromJson(Map<String, dynamic> json) {
	final GetUpperPurchsePlanSinglePurchaseproductlist getUpperPurchsePlanSinglePurchaseproductlist = GetUpperPurchsePlanSinglePurchaseproductlist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		getUpperPurchsePlanSinglePurchaseproductlist.id = id;
	}
	final String? companyid = jsonConvert.convert<String>(json['companyid']);
	if (companyid != null) {
		getUpperPurchsePlanSinglePurchaseproductlist.companyid = companyid;
	}
	final String? porderid = jsonConvert.convert<String>(json['porderid']);
	if (porderid != null) {
		getUpperPurchsePlanSinglePurchaseproductlist.porderid = porderid;
	}
	final String? companyplanno = jsonConvert.convert<String>(json['companyplanno']);
	if (companyplanno != null) {
		getUpperPurchsePlanSinglePurchaseproductlist.companyplanno = companyplanno;
	}
	final String? planno = jsonConvert.convert<String>(json['planno']);
	if (planno != null) {
		getUpperPurchsePlanSinglePurchaseproductlist.planno = planno;
	}
	final String? artno = jsonConvert.convert<String>(json['artno']);
	if (artno != null) {
		getUpperPurchsePlanSinglePurchaseproductlist.artno = artno;
	}
	final String? s1 = jsonConvert.convert<String>(json['s1']);
	if (s1 != null) {
		getUpperPurchsePlanSinglePurchaseproductlist.s1 = s1;
	}
	final String? s2 = jsonConvert.convert<String>(json['s2']);
	if (s2 != null) {
		getUpperPurchsePlanSinglePurchaseproductlist.s2 = s2;
	}
	final String? s3 = jsonConvert.convert<String>(json['s3']);
	if (s3 != null) {
		getUpperPurchsePlanSinglePurchaseproductlist.s3 = s3;
	}
	final String? s4 = jsonConvert.convert<String>(json['s4']);
	if (s4 != null) {
		getUpperPurchsePlanSinglePurchaseproductlist.s4 = s4;
	}
	final String? s5 = jsonConvert.convert<String>(json['s5']);
	if (s5 != null) {
		getUpperPurchsePlanSinglePurchaseproductlist.s5 = s5;
	}
	final String? s6 = jsonConvert.convert<String>(json['s6']);
	if (s6 != null) {
		getUpperPurchsePlanSinglePurchaseproductlist.s6 = s6;
	}
	final String? s7 = jsonConvert.convert<String>(json['s7']);
	if (s7 != null) {
		getUpperPurchsePlanSinglePurchaseproductlist.s7 = s7;
	}
	final String? s8 = jsonConvert.convert<String>(json['s8']);
	if (s8 != null) {
		getUpperPurchsePlanSinglePurchaseproductlist.s8 = s8;
	}
	final String? s9 = jsonConvert.convert<String>(json['s9']);
	if (s9 != null) {
		getUpperPurchsePlanSinglePurchaseproductlist.s9 = s9;
	}
	final String? s10 = jsonConvert.convert<String>(json['s10']);
	if (s10 != null) {
		getUpperPurchsePlanSinglePurchaseproductlist.s10 = s10;
	}
	final String? s11 = jsonConvert.convert<String>(json['s11']);
	if (s11 != null) {
		getUpperPurchsePlanSinglePurchaseproductlist.s11 = s11;
	}
	final String? s12 = jsonConvert.convert<String>(json['s12']);
	if (s12 != null) {
		getUpperPurchsePlanSinglePurchaseproductlist.s12 = s12;
	}
	final String? s13 = jsonConvert.convert<String>(json['s13']);
	if (s13 != null) {
		getUpperPurchsePlanSinglePurchaseproductlist.s13 = s13;
	}
	final String? totalpairs = jsonConvert.convert<String>(json['totalpairs']);
	if (totalpairs != null) {
		getUpperPurchsePlanSinglePurchaseproductlist.totalpairs = totalpairs;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		getUpperPurchsePlanSinglePurchaseproductlist.status = status;
	}
	final String? status1 = jsonConvert.convert<String>(json['status1']);
	if (status1 != null) {
		getUpperPurchsePlanSinglePurchaseproductlist.status1 = status1;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		getUpperPurchsePlanSinglePurchaseproductlist.createddate = createddate;
	}
	final String? orderno = jsonConvert.convert<String>(json['orderno']);
	if (orderno != null) {
		getUpperPurchsePlanSinglePurchaseproductlist.orderno = orderno;
	}
	final String? cutofdate = jsonConvert.convert<String>(json['cutofdate']);
	if (cutofdate != null) {
		getUpperPurchsePlanSinglePurchaseproductlist.cutofdate = cutofdate;
	}
	final String? note = jsonConvert.convert<String>(json['note']);
	if (note != null) {
		getUpperPurchsePlanSinglePurchaseproductlist.note = note;
	}
	final String? companyname = jsonConvert.convert<String>(json['companyname']);
	if (companyname != null) {
		getUpperPurchsePlanSinglePurchaseproductlist.companyname = companyname;
	}
	final String? artnoname = jsonConvert.convert<String>(json['artnoname']);
	if (artnoname != null) {
		getUpperPurchsePlanSinglePurchaseproductlist.artnoname = artnoname;
	}
	final String? categoryname = jsonConvert.convert<String>(json['categoryname']);
	if (categoryname != null) {
		getUpperPurchsePlanSinglePurchaseproductlist.categoryname = categoryname;
	}
	final String? colorname = jsonConvert.convert<String>(json['colorname']);
	if (colorname != null) {
		getUpperPurchsePlanSinglePurchaseproductlist.colorname = colorname;
	}
	return getUpperPurchsePlanSinglePurchaseproductlist;
}

Map<String, dynamic> $GetUpperPurchsePlanSinglePurchaseproductlistToJson(GetUpperPurchsePlanSinglePurchaseproductlist entity) {
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