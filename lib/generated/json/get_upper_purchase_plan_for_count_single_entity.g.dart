import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperPurchaseCount/Model/get_upper_purchase_plan_for_count_single_entity.dart';

GetUpperPurchasePlanForCountSingleEntity $GetUpperPurchasePlanForCountSingleEntityFromJson(Map<String, dynamic> json) {
	final GetUpperPurchasePlanForCountSingleEntity getUpperPurchasePlanForCountSingleEntity = GetUpperPurchasePlanForCountSingleEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		getUpperPurchasePlanForCountSingleEntity.response = response;
	}
	final List<GetUpperPurchasePlanForCountSinglePurchaseplanlist>? purchaseplanlist = jsonConvert.convertListNotNull<GetUpperPurchasePlanForCountSinglePurchaseplanlist>(json['purchaseplanlist']);
	if (purchaseplanlist != null) {
		getUpperPurchasePlanForCountSingleEntity.purchaseplanlist = purchaseplanlist;
	}
	final List<GetUpperPurchasePlanForCountSinglePurchaseproductlist>? purchaseproductlist = jsonConvert.convertListNotNull<GetUpperPurchasePlanForCountSinglePurchaseproductlist>(json['purchaseproductlist']);
	if (purchaseproductlist != null) {
		getUpperPurchasePlanForCountSingleEntity.purchaseproductlist = purchaseproductlist;
	}
	return getUpperPurchasePlanForCountSingleEntity;
}

Map<String, dynamic> $GetUpperPurchasePlanForCountSingleEntityToJson(GetUpperPurchasePlanForCountSingleEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['purchaseplanlist'] =  entity.purchaseplanlist?.map((v) => v.toJson()).toList();
	data['purchaseproductlist'] =  entity.purchaseproductlist?.map((v) => v.toJson()).toList();
	return data;
}

GetUpperPurchasePlanForCountSinglePurchaseplanlist $GetUpperPurchasePlanForCountSinglePurchaseplanlistFromJson(Map<String, dynamic> json) {
	final GetUpperPurchasePlanForCountSinglePurchaseplanlist getUpperPurchasePlanForCountSinglePurchaseplanlist = GetUpperPurchasePlanForCountSinglePurchaseplanlist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		getUpperPurchasePlanForCountSinglePurchaseplanlist.id = id;
	}
	final String? orderno = jsonConvert.convert<String>(json['orderno']);
	if (orderno != null) {
		getUpperPurchasePlanForCountSinglePurchaseplanlist.orderno = orderno;
	}
	final String? companyid = jsonConvert.convert<String>(json['companyid']);
	if (companyid != null) {
		getUpperPurchasePlanForCountSinglePurchaseplanlist.companyid = companyid;
	}
	final String? companyplanno = jsonConvert.convert<String>(json['companyplanno']);
	if (companyplanno != null) {
		getUpperPurchasePlanForCountSinglePurchaseplanlist.companyplanno = companyplanno;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		getUpperPurchasePlanForCountSinglePurchaseplanlist.status = status;
	}
	final String? status1 = jsonConvert.convert<String>(json['status1']);
	if (status1 != null) {
		getUpperPurchasePlanForCountSinglePurchaseplanlist.status1 = status1;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		getUpperPurchasePlanForCountSinglePurchaseplanlist.createddate = createddate;
	}
	final String? orderdate = jsonConvert.convert<String>(json['orderdate']);
	if (orderdate != null) {
		getUpperPurchasePlanForCountSinglePurchaseplanlist.orderdate = orderdate;
	}
	final String? ordertakenby = jsonConvert.convert<String>(json['ordertakenby']);
	if (ordertakenby != null) {
		getUpperPurchasePlanForCountSinglePurchaseplanlist.ordertakenby = ordertakenby;
	}
	final String? ordertakenbyid = jsonConvert.convert<String>(json['ordertakenbyid']);
	if (ordertakenbyid != null) {
		getUpperPurchasePlanForCountSinglePurchaseplanlist.ordertakenbyid = ordertakenbyid;
	}
	final String? companyname = jsonConvert.convert<String>(json['companyname']);
	if (companyname != null) {
		getUpperPurchasePlanForCountSinglePurchaseplanlist.companyname = companyname;
	}
	return getUpperPurchasePlanForCountSinglePurchaseplanlist;
}

Map<String, dynamic> $GetUpperPurchasePlanForCountSinglePurchaseplanlistToJson(GetUpperPurchasePlanForCountSinglePurchaseplanlist entity) {
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

GetUpperPurchasePlanForCountSinglePurchaseproductlist $GetUpperPurchasePlanForCountSinglePurchaseproductlistFromJson(Map<String, dynamic> json) {
	final GetUpperPurchasePlanForCountSinglePurchaseproductlist getUpperPurchasePlanForCountSinglePurchaseproductlist = GetUpperPurchasePlanForCountSinglePurchaseproductlist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		getUpperPurchasePlanForCountSinglePurchaseproductlist.id = id;
	}
	final String? companyid = jsonConvert.convert<String>(json['companyid']);
	if (companyid != null) {
		getUpperPurchasePlanForCountSinglePurchaseproductlist.companyid = companyid;
	}
	final String? porderid = jsonConvert.convert<String>(json['porderid']);
	if (porderid != null) {
		getUpperPurchasePlanForCountSinglePurchaseproductlist.porderid = porderid;
	}
	final String? companyplanno = jsonConvert.convert<String>(json['companyplanno']);
	if (companyplanno != null) {
		getUpperPurchasePlanForCountSinglePurchaseproductlist.companyplanno = companyplanno;
	}
	final String? planno = jsonConvert.convert<String>(json['planno']);
	if (planno != null) {
		getUpperPurchasePlanForCountSinglePurchaseproductlist.planno = planno;
	}
	final String? artno = jsonConvert.convert<String>(json['artno']);
	if (artno != null) {
		getUpperPurchasePlanForCountSinglePurchaseproductlist.artno = artno;
	}
	final String? s1 = jsonConvert.convert<String>(json['s1']);
	if (s1 != null) {
		getUpperPurchasePlanForCountSinglePurchaseproductlist.s1 = s1;
	}
	final String? s2 = jsonConvert.convert<String>(json['s2']);
	if (s2 != null) {
		getUpperPurchasePlanForCountSinglePurchaseproductlist.s2 = s2;
	}
	final String? s3 = jsonConvert.convert<String>(json['s3']);
	if (s3 != null) {
		getUpperPurchasePlanForCountSinglePurchaseproductlist.s3 = s3;
	}
	final String? s4 = jsonConvert.convert<String>(json['s4']);
	if (s4 != null) {
		getUpperPurchasePlanForCountSinglePurchaseproductlist.s4 = s4;
	}
	final String? s5 = jsonConvert.convert<String>(json['s5']);
	if (s5 != null) {
		getUpperPurchasePlanForCountSinglePurchaseproductlist.s5 = s5;
	}
	final String? s6 = jsonConvert.convert<String>(json['s6']);
	if (s6 != null) {
		getUpperPurchasePlanForCountSinglePurchaseproductlist.s6 = s6;
	}
	final String? s7 = jsonConvert.convert<String>(json['s7']);
	if (s7 != null) {
		getUpperPurchasePlanForCountSinglePurchaseproductlist.s7 = s7;
	}
	final String? s8 = jsonConvert.convert<String>(json['s8']);
	if (s8 != null) {
		getUpperPurchasePlanForCountSinglePurchaseproductlist.s8 = s8;
	}
	final String? s9 = jsonConvert.convert<String>(json['s9']);
	if (s9 != null) {
		getUpperPurchasePlanForCountSinglePurchaseproductlist.s9 = s9;
	}
	final String? s10 = jsonConvert.convert<String>(json['s10']);
	if (s10 != null) {
		getUpperPurchasePlanForCountSinglePurchaseproductlist.s10 = s10;
	}
	final String? s11 = jsonConvert.convert<String>(json['s11']);
	if (s11 != null) {
		getUpperPurchasePlanForCountSinglePurchaseproductlist.s11 = s11;
	}
	final String? s12 = jsonConvert.convert<String>(json['s12']);
	if (s12 != null) {
		getUpperPurchasePlanForCountSinglePurchaseproductlist.s12 = s12;
	}
	final String? s13 = jsonConvert.convert<String>(json['s13']);
	if (s13 != null) {
		getUpperPurchasePlanForCountSinglePurchaseproductlist.s13 = s13;
	}
	final String? totalpairs = jsonConvert.convert<String>(json['totalpairs']);
	if (totalpairs != null) {
		getUpperPurchasePlanForCountSinglePurchaseproductlist.totalpairs = totalpairs;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		getUpperPurchasePlanForCountSinglePurchaseproductlist.status = status;
	}
	final String? status1 = jsonConvert.convert<String>(json['status1']);
	if (status1 != null) {
		getUpperPurchasePlanForCountSinglePurchaseproductlist.status1 = status1;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		getUpperPurchasePlanForCountSinglePurchaseproductlist.createddate = createddate;
	}
	final String? orderno = jsonConvert.convert<String>(json['orderno']);
	if (orderno != null) {
		getUpperPurchasePlanForCountSinglePurchaseproductlist.orderno = orderno;
	}
	final String? cutofdate = jsonConvert.convert<String>(json['cutofdate']);
	if (cutofdate != null) {
		getUpperPurchasePlanForCountSinglePurchaseproductlist.cutofdate = cutofdate;
	}
	final String? note = jsonConvert.convert<String>(json['note']);
	if (note != null) {
		getUpperPurchasePlanForCountSinglePurchaseproductlist.note = note;
	}
	final String? companyname = jsonConvert.convert<String>(json['companyname']);
	if (companyname != null) {
		getUpperPurchasePlanForCountSinglePurchaseproductlist.companyname = companyname;
	}
	final String? artnoname = jsonConvert.convert<String>(json['artnoname']);
	if (artnoname != null) {
		getUpperPurchasePlanForCountSinglePurchaseproductlist.artnoname = artnoname;
	}
	final String? categoryname = jsonConvert.convert<String>(json['categoryname']);
	if (categoryname != null) {
		getUpperPurchasePlanForCountSinglePurchaseproductlist.categoryname = categoryname;
	}
	final String? colorname = jsonConvert.convert<String>(json['colorname']);
	if (colorname != null) {
		getUpperPurchasePlanForCountSinglePurchaseproductlist.colorname = colorname;
	}
	return getUpperPurchasePlanForCountSinglePurchaseproductlist;
}

Map<String, dynamic> $GetUpperPurchasePlanForCountSinglePurchaseproductlistToJson(GetUpperPurchasePlanForCountSinglePurchaseproductlist entity) {
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