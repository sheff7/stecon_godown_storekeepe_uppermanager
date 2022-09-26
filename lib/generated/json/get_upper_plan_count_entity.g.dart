import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperPurchaseCount/Model/get_upper_plan_count_entity.dart';

GetUpperPlanCountEntity $GetUpperPlanCountEntityFromJson(Map<String, dynamic> json) {
	final GetUpperPlanCountEntity getUpperPlanCountEntity = GetUpperPlanCountEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		getUpperPlanCountEntity.response = response;
	}
	final List<GetUpperPlanCountPurchaseproductlist>? purchaseproductlist = jsonConvert.convertListNotNull<GetUpperPlanCountPurchaseproductlist>(json['purchaseproductlist']);
	if (purchaseproductlist != null) {
		getUpperPlanCountEntity.purchaseproductlist = purchaseproductlist;
	}
	return getUpperPlanCountEntity;
}

Map<String, dynamic> $GetUpperPlanCountEntityToJson(GetUpperPlanCountEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['purchaseproductlist'] =  entity.purchaseproductlist?.map((v) => v.toJson()).toList();
	return data;
}

GetUpperPlanCountPurchaseproductlist $GetUpperPlanCountPurchaseproductlistFromJson(Map<String, dynamic> json) {
	final GetUpperPlanCountPurchaseproductlist getUpperPlanCountPurchaseproductlist = GetUpperPlanCountPurchaseproductlist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		getUpperPlanCountPurchaseproductlist.id = id;
	}
	final String? companyid = jsonConvert.convert<String>(json['companyid']);
	if (companyid != null) {
		getUpperPlanCountPurchaseproductlist.companyid = companyid;
	}
	final String? porderid = jsonConvert.convert<String>(json['porderid']);
	if (porderid != null) {
		getUpperPlanCountPurchaseproductlist.porderid = porderid;
	}
	final String? companyplanno = jsonConvert.convert<String>(json['companyplanno']);
	if (companyplanno != null) {
		getUpperPlanCountPurchaseproductlist.companyplanno = companyplanno;
	}
	final String? planno = jsonConvert.convert<String>(json['planno']);
	if (planno != null) {
		getUpperPlanCountPurchaseproductlist.planno = planno;
	}
	final String? artno = jsonConvert.convert<String>(json['artno']);
	if (artno != null) {
		getUpperPlanCountPurchaseproductlist.artno = artno;
	}
	final String? s1 = jsonConvert.convert<String>(json['s1']);
	if (s1 != null) {
		getUpperPlanCountPurchaseproductlist.s1 = s1;
	}
	final String? s2 = jsonConvert.convert<String>(json['s2']);
	if (s2 != null) {
		getUpperPlanCountPurchaseproductlist.s2 = s2;
	}
	final String? s3 = jsonConvert.convert<String>(json['s3']);
	if (s3 != null) {
		getUpperPlanCountPurchaseproductlist.s3 = s3;
	}
	final String? s4 = jsonConvert.convert<String>(json['s4']);
	if (s4 != null) {
		getUpperPlanCountPurchaseproductlist.s4 = s4;
	}
	final String? s5 = jsonConvert.convert<String>(json['s5']);
	if (s5 != null) {
		getUpperPlanCountPurchaseproductlist.s5 = s5;
	}
	final String? s6 = jsonConvert.convert<String>(json['s6']);
	if (s6 != null) {
		getUpperPlanCountPurchaseproductlist.s6 = s6;
	}
	final String? s7 = jsonConvert.convert<String>(json['s7']);
	if (s7 != null) {
		getUpperPlanCountPurchaseproductlist.s7 = s7;
	}
	final String? s8 = jsonConvert.convert<String>(json['s8']);
	if (s8 != null) {
		getUpperPlanCountPurchaseproductlist.s8 = s8;
	}
	final String? s9 = jsonConvert.convert<String>(json['s9']);
	if (s9 != null) {
		getUpperPlanCountPurchaseproductlist.s9 = s9;
	}
	final String? s10 = jsonConvert.convert<String>(json['s10']);
	if (s10 != null) {
		getUpperPlanCountPurchaseproductlist.s10 = s10;
	}
	final String? s11 = jsonConvert.convert<String>(json['s11']);
	if (s11 != null) {
		getUpperPlanCountPurchaseproductlist.s11 = s11;
	}
	final String? s12 = jsonConvert.convert<String>(json['s12']);
	if (s12 != null) {
		getUpperPlanCountPurchaseproductlist.s12 = s12;
	}
	final String? s13 = jsonConvert.convert<String>(json['s13']);
	if (s13 != null) {
		getUpperPlanCountPurchaseproductlist.s13 = s13;
	}
	final String? totalpairs = jsonConvert.convert<String>(json['totalpairs']);
	if (totalpairs != null) {
		getUpperPlanCountPurchaseproductlist.totalpairs = totalpairs;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		getUpperPlanCountPurchaseproductlist.status = status;
	}
	final String? status1 = jsonConvert.convert<String>(json['status1']);
	if (status1 != null) {
		getUpperPlanCountPurchaseproductlist.status1 = status1;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		getUpperPlanCountPurchaseproductlist.createddate = createddate;
	}
	final String? orderno = jsonConvert.convert<String>(json['orderno']);
	if (orderno != null) {
		getUpperPlanCountPurchaseproductlist.orderno = orderno;
	}
	final String? cutofdate = jsonConvert.convert<String>(json['cutofdate']);
	if (cutofdate != null) {
		getUpperPlanCountPurchaseproductlist.cutofdate = cutofdate;
	}
	final String? note = jsonConvert.convert<String>(json['note']);
	if (note != null) {
		getUpperPlanCountPurchaseproductlist.note = note;
	}
	final String? companyname = jsonConvert.convert<String>(json['companyname']);
	if (companyname != null) {
		getUpperPlanCountPurchaseproductlist.companyname = companyname;
	}
	final String? artnoname = jsonConvert.convert<String>(json['artnoname']);
	if (artnoname != null) {
		getUpperPlanCountPurchaseproductlist.artnoname = artnoname;
	}
	final String? categoryname = jsonConvert.convert<String>(json['categoryname']);
	if (categoryname != null) {
		getUpperPlanCountPurchaseproductlist.categoryname = categoryname;
	}
	final String? colorname = jsonConvert.convert<String>(json['colorname']);
	if (colorname != null) {
		getUpperPlanCountPurchaseproductlist.colorname = colorname;
	}
	return getUpperPlanCountPurchaseproductlist;
}

Map<String, dynamic> $GetUpperPlanCountPurchaseproductlistToJson(GetUpperPlanCountPurchaseproductlist entity) {
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