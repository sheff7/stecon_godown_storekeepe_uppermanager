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
	final List<GetUpperPlanCountUppercountlist>? uppercountlist = jsonConvert.convertListNotNull<GetUpperPlanCountUppercountlist>(json['uppercountlist']);
	if (uppercountlist != null) {
		getUpperPlanCountEntity.uppercountlist = uppercountlist;
	}
	final List<GetUpperPlanCountDamagedcountlist>? damagedcountlist = jsonConvert.convertListNotNull<GetUpperPlanCountDamagedcountlist>(json['damagedcountlist']);
	if (damagedcountlist != null) {
		getUpperPlanCountEntity.damagedcountlist = damagedcountlist;
	}
	final List<GetUpperPlanCountReceivedcountlist>? receivedcountlist = jsonConvert.convertListNotNull<GetUpperPlanCountReceivedcountlist>(json['receivedcountlist']);
	if (receivedcountlist != null) {
		getUpperPlanCountEntity.receivedcountlist = receivedcountlist;
	}
	final List<GetUpperPlanCountRecivedsupliercount>? recivedsupliercount = jsonConvert.convertListNotNull<GetUpperPlanCountRecivedsupliercount>(json['recivedsupliercount']);
	if (recivedsupliercount != null) {
		getUpperPlanCountEntity.recivedsupliercount = recivedsupliercount;
	}
	final List<GetUpperPlanCountStaffcountlist>? staffcountlist = jsonConvert.convertListNotNull<GetUpperPlanCountStaffcountlist>(json['staffcountlist']);
	if (staffcountlist != null) {
		getUpperPlanCountEntity.staffcountlist = staffcountlist;
	}
	final List<GetUpperPlanCountShortagelist>? shortagelist = jsonConvert.convertListNotNull<GetUpperPlanCountShortagelist>(json['shortagelist']);
	if (shortagelist != null) {
		getUpperPlanCountEntity.shortagelist = shortagelist;
	}
	final List<GetUpperPlanCountBalancelist>? balancelist = jsonConvert.convertListNotNull<GetUpperPlanCountBalancelist>(json['balancelist']);
	if (balancelist != null) {
		getUpperPlanCountEntity.balancelist = balancelist;
	}
	return getUpperPlanCountEntity;
}

Map<String, dynamic> $GetUpperPlanCountEntityToJson(GetUpperPlanCountEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['purchaseproductlist'] =  entity.purchaseproductlist?.map((v) => v.toJson()).toList();
	data['uppercountlist'] =  entity.uppercountlist?.map((v) => v.toJson()).toList();
	data['damagedcountlist'] =  entity.damagedcountlist?.map((v) => v.toJson()).toList();
	data['receivedcountlist'] =  entity.receivedcountlist?.map((v) => v.toJson()).toList();
	data['recivedsupliercount'] =  entity.recivedsupliercount?.map((v) => v.toJson()).toList();
	data['staffcountlist'] =  entity.staffcountlist?.map((v) => v.toJson()).toList();
	data['shortagelist'] =  entity.shortagelist?.map((v) => v.toJson()).toList();
	data['balancelist'] =  entity.balancelist?.map((v) => v.toJson()).toList();
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

GetUpperPlanCountUppercountlist $GetUpperPlanCountUppercountlistFromJson(Map<String, dynamic> json) {
	final GetUpperPlanCountUppercountlist getUpperPlanCountUppercountlist = GetUpperPlanCountUppercountlist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		getUpperPlanCountUppercountlist.id = id;
	}
	final String? orderno = jsonConvert.convert<String>(json['orderno']);
	if (orderno != null) {
		getUpperPlanCountUppercountlist.orderno = orderno;
	}
	final String? companyplano = jsonConvert.convert<String>(json['companyplano']);
	if (companyplano != null) {
		getUpperPlanCountUppercountlist.companyplano = companyplano;
	}
	final String? upperorderid = jsonConvert.convert<String>(json['upperorderid']);
	if (upperorderid != null) {
		getUpperPlanCountUppercountlist.upperorderid = upperorderid;
	}
	final String? companyid = jsonConvert.convert<String>(json['companyid']);
	if (companyid != null) {
		getUpperPlanCountUppercountlist.companyid = companyid;
	}
	final String? dateofcounting = jsonConvert.convert<String>(json['dateofcounting']);
	if (dateofcounting != null) {
		getUpperPlanCountUppercountlist.dateofcounting = dateofcounting;
	}
	final String? comments = jsonConvert.convert<String>(json['comments']);
	if (comments != null) {
		getUpperPlanCountUppercountlist.comments = comments;
	}
	final String? plannoid = jsonConvert.convert<String>(json['plannoid']);
	if (plannoid != null) {
		getUpperPlanCountUppercountlist.plannoid = plannoid;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		getUpperPlanCountUppercountlist.createddate = createddate;
	}
	final String? receivedcount = jsonConvert.convert<String>(json['receivedcount']);
	if (receivedcount != null) {
		getUpperPlanCountUppercountlist.receivedcount = receivedcount;
	}
	return getUpperPlanCountUppercountlist;
}

Map<String, dynamic> $GetUpperPlanCountUppercountlistToJson(GetUpperPlanCountUppercountlist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['orderno'] = entity.orderno;
	data['companyplano'] = entity.companyplano;
	data['upperorderid'] = entity.upperorderid;
	data['companyid'] = entity.companyid;
	data['dateofcounting'] = entity.dateofcounting;
	data['comments'] = entity.comments;
	data['plannoid'] = entity.plannoid;
	data['createddate'] = entity.createddate;
	data['receivedcount'] = entity.receivedcount;
	return data;
}

GetUpperPlanCountDamagedcountlist $GetUpperPlanCountDamagedcountlistFromJson(Map<String, dynamic> json) {
	final GetUpperPlanCountDamagedcountlist getUpperPlanCountDamagedcountlist = GetUpperPlanCountDamagedcountlist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		getUpperPlanCountDamagedcountlist.id = id;
	}
	final String? orderno = jsonConvert.convert<String>(json['orderno']);
	if (orderno != null) {
		getUpperPlanCountDamagedcountlist.orderno = orderno;
	}
	final String? companyplanno = jsonConvert.convert<String>(json['companyplanno']);
	if (companyplanno != null) {
		getUpperPlanCountDamagedcountlist.companyplanno = companyplanno;
	}
	final String? planno = jsonConvert.convert<String>(json['planno']);
	if (planno != null) {
		getUpperPlanCountDamagedcountlist.planno = planno;
	}
	final String? countid = jsonConvert.convert<String>(json['countid']);
	if (countid != null) {
		getUpperPlanCountDamagedcountlist.countid = countid;
	}
	final String? artnumber = jsonConvert.convert<String>(json['artnumber']);
	if (artnumber != null) {
		getUpperPlanCountDamagedcountlist.artnumber = artnumber;
	}
	final String? s1 = jsonConvert.convert<String>(json['s1']);
	if (s1 != null) {
		getUpperPlanCountDamagedcountlist.s1 = s1;
	}
	final String? s2 = jsonConvert.convert<String>(json['s2']);
	if (s2 != null) {
		getUpperPlanCountDamagedcountlist.s2 = s2;
	}
	final String? s3 = jsonConvert.convert<String>(json['s3']);
	if (s3 != null) {
		getUpperPlanCountDamagedcountlist.s3 = s3;
	}
	final String? s4 = jsonConvert.convert<String>(json['s4']);
	if (s4 != null) {
		getUpperPlanCountDamagedcountlist.s4 = s4;
	}
	final String? s5 = jsonConvert.convert<String>(json['s5']);
	if (s5 != null) {
		getUpperPlanCountDamagedcountlist.s5 = s5;
	}
	final String? s6 = jsonConvert.convert<String>(json['s6']);
	if (s6 != null) {
		getUpperPlanCountDamagedcountlist.s6 = s6;
	}
	final String? s7 = jsonConvert.convert<String>(json['s7']);
	if (s7 != null) {
		getUpperPlanCountDamagedcountlist.s7 = s7;
	}
	final String? s8 = jsonConvert.convert<String>(json['s8']);
	if (s8 != null) {
		getUpperPlanCountDamagedcountlist.s8 = s8;
	}
	final String? s9 = jsonConvert.convert<String>(json['s9']);
	if (s9 != null) {
		getUpperPlanCountDamagedcountlist.s9 = s9;
	}
	final String? s10 = jsonConvert.convert<String>(json['s10']);
	if (s10 != null) {
		getUpperPlanCountDamagedcountlist.s10 = s10;
	}
	final String? s11 = jsonConvert.convert<String>(json['s11']);
	if (s11 != null) {
		getUpperPlanCountDamagedcountlist.s11 = s11;
	}
	final String? s12 = jsonConvert.convert<String>(json['s12']);
	if (s12 != null) {
		getUpperPlanCountDamagedcountlist.s12 = s12;
	}
	final String? s13 = jsonConvert.convert<String>(json['s13']);
	if (s13 != null) {
		getUpperPlanCountDamagedcountlist.s13 = s13;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		getUpperPlanCountDamagedcountlist.createddate = createddate;
	}
	return getUpperPlanCountDamagedcountlist;
}

Map<String, dynamic> $GetUpperPlanCountDamagedcountlistToJson(GetUpperPlanCountDamagedcountlist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['orderno'] = entity.orderno;
	data['companyplanno'] = entity.companyplanno;
	data['planno'] = entity.planno;
	data['countid'] = entity.countid;
	data['artnumber'] = entity.artnumber;
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
	data['createddate'] = entity.createddate;
	return data;
}

GetUpperPlanCountReceivedcountlist $GetUpperPlanCountReceivedcountlistFromJson(Map<String, dynamic> json) {
	final GetUpperPlanCountReceivedcountlist getUpperPlanCountReceivedcountlist = GetUpperPlanCountReceivedcountlist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		getUpperPlanCountReceivedcountlist.id = id;
	}
	final String? orderno = jsonConvert.convert<String>(json['orderno']);
	if (orderno != null) {
		getUpperPlanCountReceivedcountlist.orderno = orderno;
	}
	final String? companyplanno = jsonConvert.convert<String>(json['companyplanno']);
	if (companyplanno != null) {
		getUpperPlanCountReceivedcountlist.companyplanno = companyplanno;
	}
	final String? planno = jsonConvert.convert<String>(json['planno']);
	if (planno != null) {
		getUpperPlanCountReceivedcountlist.planno = planno;
	}
	final String? countid = jsonConvert.convert<String>(json['countid']);
	if (countid != null) {
		getUpperPlanCountReceivedcountlist.countid = countid;
	}
	final String? artnumber = jsonConvert.convert<String>(json['artnumber']);
	if (artnumber != null) {
		getUpperPlanCountReceivedcountlist.artnumber = artnumber;
	}
	final String? s1 = jsonConvert.convert<String>(json['s1']);
	if (s1 != null) {
		getUpperPlanCountReceivedcountlist.s1 = s1;
	}
	final String? s2 = jsonConvert.convert<String>(json['s2']);
	if (s2 != null) {
		getUpperPlanCountReceivedcountlist.s2 = s2;
	}
	final String? s3 = jsonConvert.convert<String>(json['s3']);
	if (s3 != null) {
		getUpperPlanCountReceivedcountlist.s3 = s3;
	}
	final String? s4 = jsonConvert.convert<String>(json['s4']);
	if (s4 != null) {
		getUpperPlanCountReceivedcountlist.s4 = s4;
	}
	final String? s5 = jsonConvert.convert<String>(json['s5']);
	if (s5 != null) {
		getUpperPlanCountReceivedcountlist.s5 = s5;
	}
	final String? s6 = jsonConvert.convert<String>(json['s6']);
	if (s6 != null) {
		getUpperPlanCountReceivedcountlist.s6 = s6;
	}
	final String? s7 = jsonConvert.convert<String>(json['s7']);
	if (s7 != null) {
		getUpperPlanCountReceivedcountlist.s7 = s7;
	}
	final String? s8 = jsonConvert.convert<String>(json['s8']);
	if (s8 != null) {
		getUpperPlanCountReceivedcountlist.s8 = s8;
	}
	final String? s9 = jsonConvert.convert<String>(json['s9']);
	if (s9 != null) {
		getUpperPlanCountReceivedcountlist.s9 = s9;
	}
	final String? s10 = jsonConvert.convert<String>(json['s10']);
	if (s10 != null) {
		getUpperPlanCountReceivedcountlist.s10 = s10;
	}
	final String? s11 = jsonConvert.convert<String>(json['s11']);
	if (s11 != null) {
		getUpperPlanCountReceivedcountlist.s11 = s11;
	}
	final String? s12 = jsonConvert.convert<String>(json['s12']);
	if (s12 != null) {
		getUpperPlanCountReceivedcountlist.s12 = s12;
	}
	final String? s13 = jsonConvert.convert<String>(json['s13']);
	if (s13 != null) {
		getUpperPlanCountReceivedcountlist.s13 = s13;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		getUpperPlanCountReceivedcountlist.createddate = createddate;
	}
	return getUpperPlanCountReceivedcountlist;
}

Map<String, dynamic> $GetUpperPlanCountReceivedcountlistToJson(GetUpperPlanCountReceivedcountlist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['orderno'] = entity.orderno;
	data['companyplanno'] = entity.companyplanno;
	data['planno'] = entity.planno;
	data['countid'] = entity.countid;
	data['artnumber'] = entity.artnumber;
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
	data['createddate'] = entity.createddate;
	return data;
}

GetUpperPlanCountRecivedsupliercount $GetUpperPlanCountRecivedsupliercountFromJson(Map<String, dynamic> json) {
	final GetUpperPlanCountRecivedsupliercount getUpperPlanCountRecivedsupliercount = GetUpperPlanCountRecivedsupliercount();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		getUpperPlanCountRecivedsupliercount.id = id;
	}
	final String? orderno = jsonConvert.convert<String>(json['orderno']);
	if (orderno != null) {
		getUpperPlanCountRecivedsupliercount.orderno = orderno;
	}
	final String? companyplanno = jsonConvert.convert<String>(json['companyplanno']);
	if (companyplanno != null) {
		getUpperPlanCountRecivedsupliercount.companyplanno = companyplanno;
	}
	final String? planno = jsonConvert.convert<String>(json['planno']);
	if (planno != null) {
		getUpperPlanCountRecivedsupliercount.planno = planno;
	}
	final String? countid = jsonConvert.convert<String>(json['countid']);
	if (countid != null) {
		getUpperPlanCountRecivedsupliercount.countid = countid;
	}
	final String? supplierid = jsonConvert.convert<String>(json['supplierid']);
	if (supplierid != null) {
		getUpperPlanCountRecivedsupliercount.supplierid = supplierid;
	}
	final String? artnumber = jsonConvert.convert<String>(json['artnumber']);
	if (artnumber != null) {
		getUpperPlanCountRecivedsupliercount.artnumber = artnumber;
	}
	final String? s1 = jsonConvert.convert<String>(json['s1']);
	if (s1 != null) {
		getUpperPlanCountRecivedsupliercount.s1 = s1;
	}
	final String? s2 = jsonConvert.convert<String>(json['s2']);
	if (s2 != null) {
		getUpperPlanCountRecivedsupliercount.s2 = s2;
	}
	final String? s3 = jsonConvert.convert<String>(json['s3']);
	if (s3 != null) {
		getUpperPlanCountRecivedsupliercount.s3 = s3;
	}
	final String? s4 = jsonConvert.convert<String>(json['s4']);
	if (s4 != null) {
		getUpperPlanCountRecivedsupliercount.s4 = s4;
	}
	final String? s5 = jsonConvert.convert<String>(json['s5']);
	if (s5 != null) {
		getUpperPlanCountRecivedsupliercount.s5 = s5;
	}
	final String? s6 = jsonConvert.convert<String>(json['s6']);
	if (s6 != null) {
		getUpperPlanCountRecivedsupliercount.s6 = s6;
	}
	final String? s7 = jsonConvert.convert<String>(json['s7']);
	if (s7 != null) {
		getUpperPlanCountRecivedsupliercount.s7 = s7;
	}
	final String? s8 = jsonConvert.convert<String>(json['s8']);
	if (s8 != null) {
		getUpperPlanCountRecivedsupliercount.s8 = s8;
	}
	final String? s9 = jsonConvert.convert<String>(json['s9']);
	if (s9 != null) {
		getUpperPlanCountRecivedsupliercount.s9 = s9;
	}
	final String? s10 = jsonConvert.convert<String>(json['s10']);
	if (s10 != null) {
		getUpperPlanCountRecivedsupliercount.s10 = s10;
	}
	final String? s11 = jsonConvert.convert<String>(json['s11']);
	if (s11 != null) {
		getUpperPlanCountRecivedsupliercount.s11 = s11;
	}
	final String? s12 = jsonConvert.convert<String>(json['s12']);
	if (s12 != null) {
		getUpperPlanCountRecivedsupliercount.s12 = s12;
	}
	final String? s13 = jsonConvert.convert<String>(json['s13']);
	if (s13 != null) {
		getUpperPlanCountRecivedsupliercount.s13 = s13;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		getUpperPlanCountRecivedsupliercount.createddate = createddate;
	}
	return getUpperPlanCountRecivedsupliercount;
}

Map<String, dynamic> $GetUpperPlanCountRecivedsupliercountToJson(GetUpperPlanCountRecivedsupliercount entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['orderno'] = entity.orderno;
	data['companyplanno'] = entity.companyplanno;
	data['planno'] = entity.planno;
	data['countid'] = entity.countid;
	data['supplierid'] = entity.supplierid;
	data['artnumber'] = entity.artnumber;
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
	data['createddate'] = entity.createddate;
	return data;
}

GetUpperPlanCountStaffcountlist $GetUpperPlanCountStaffcountlistFromJson(Map<String, dynamic> json) {
	final GetUpperPlanCountStaffcountlist getUpperPlanCountStaffcountlist = GetUpperPlanCountStaffcountlist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		getUpperPlanCountStaffcountlist.id = id;
	}
	final String? staffid = jsonConvert.convert<String>(json['staffid']);
	if (staffid != null) {
		getUpperPlanCountStaffcountlist.staffid = staffid;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		getUpperPlanCountStaffcountlist.createddate = createddate;
	}
	final String? countid = jsonConvert.convert<String>(json['countid']);
	if (countid != null) {
		getUpperPlanCountStaffcountlist.countid = countid;
	}
	final String? orderno = jsonConvert.convert<String>(json['orderno']);
	if (orderno != null) {
		getUpperPlanCountStaffcountlist.orderno = orderno;
	}
	final String? planno = jsonConvert.convert<String>(json['planno']);
	if (planno != null) {
		getUpperPlanCountStaffcountlist.planno = planno;
	}
	final String? staffname = jsonConvert.convert<String>(json['staffname']);
	if (staffname != null) {
		getUpperPlanCountStaffcountlist.staffname = staffname;
	}
	final String? idcardno = jsonConvert.convert<String>(json['idcardno']);
	if (idcardno != null) {
		getUpperPlanCountStaffcountlist.idcardno = idcardno;
	}
	final String? deaprtment = jsonConvert.convert<String>(json['deaprtment']);
	if (deaprtment != null) {
		getUpperPlanCountStaffcountlist.deaprtment = deaprtment;
	}
	final String? departmentname = jsonConvert.convert<String>(json['departmentname']);
	if (departmentname != null) {
		getUpperPlanCountStaffcountlist.departmentname = departmentname;
	}
	return getUpperPlanCountStaffcountlist;
}

Map<String, dynamic> $GetUpperPlanCountStaffcountlistToJson(GetUpperPlanCountStaffcountlist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['staffid'] = entity.staffid;
	data['createddate'] = entity.createddate;
	data['countid'] = entity.countid;
	data['orderno'] = entity.orderno;
	data['planno'] = entity.planno;
	data['staffname'] = entity.staffname;
	data['idcardno'] = entity.idcardno;
	data['deaprtment'] = entity.deaprtment;
	data['departmentname'] = entity.departmentname;
	return data;
}

GetUpperPlanCountShortagelist $GetUpperPlanCountShortagelistFromJson(Map<String, dynamic> json) {
	final GetUpperPlanCountShortagelist getUpperPlanCountShortagelist = GetUpperPlanCountShortagelist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		getUpperPlanCountShortagelist.id = id;
	}
	final String? orderno = jsonConvert.convert<String>(json['orderno']);
	if (orderno != null) {
		getUpperPlanCountShortagelist.orderno = orderno;
	}
	final String? companyplanno = jsonConvert.convert<String>(json['companyplanno']);
	if (companyplanno != null) {
		getUpperPlanCountShortagelist.companyplanno = companyplanno;
	}
	final String? planno = jsonConvert.convert<String>(json['planno']);
	if (planno != null) {
		getUpperPlanCountShortagelist.planno = planno;
	}
	final String? countid = jsonConvert.convert<String>(json['countid']);
	if (countid != null) {
		getUpperPlanCountShortagelist.countid = countid;
	}
	final String? supplierid = jsonConvert.convert<String>(json['supplierid']);
	if (supplierid != null) {
		getUpperPlanCountShortagelist.supplierid = supplierid;
	}
	final String? artnumber = jsonConvert.convert<String>(json['artnumber']);
	if (artnumber != null) {
		getUpperPlanCountShortagelist.artnumber = artnumber;
	}
	final String? s1 = jsonConvert.convert<String>(json['s1']);
	if (s1 != null) {
		getUpperPlanCountShortagelist.s1 = s1;
	}
	final String? s2 = jsonConvert.convert<String>(json['s2']);
	if (s2 != null) {
		getUpperPlanCountShortagelist.s2 = s2;
	}
	final String? s3 = jsonConvert.convert<String>(json['s3']);
	if (s3 != null) {
		getUpperPlanCountShortagelist.s3 = s3;
	}
	final String? s4 = jsonConvert.convert<String>(json['s4']);
	if (s4 != null) {
		getUpperPlanCountShortagelist.s4 = s4;
	}
	final String? s5 = jsonConvert.convert<String>(json['s5']);
	if (s5 != null) {
		getUpperPlanCountShortagelist.s5 = s5;
	}
	final String? s6 = jsonConvert.convert<String>(json['s6']);
	if (s6 != null) {
		getUpperPlanCountShortagelist.s6 = s6;
	}
	final String? s7 = jsonConvert.convert<String>(json['s7']);
	if (s7 != null) {
		getUpperPlanCountShortagelist.s7 = s7;
	}
	final String? s8 = jsonConvert.convert<String>(json['s8']);
	if (s8 != null) {
		getUpperPlanCountShortagelist.s8 = s8;
	}
	final String? s9 = jsonConvert.convert<String>(json['s9']);
	if (s9 != null) {
		getUpperPlanCountShortagelist.s9 = s9;
	}
	final String? s10 = jsonConvert.convert<String>(json['s10']);
	if (s10 != null) {
		getUpperPlanCountShortagelist.s10 = s10;
	}
	final String? s11 = jsonConvert.convert<String>(json['s11']);
	if (s11 != null) {
		getUpperPlanCountShortagelist.s11 = s11;
	}
	final String? s12 = jsonConvert.convert<String>(json['s12']);
	if (s12 != null) {
		getUpperPlanCountShortagelist.s12 = s12;
	}
	final String? s13 = jsonConvert.convert<String>(json['s13']);
	if (s13 != null) {
		getUpperPlanCountShortagelist.s13 = s13;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		getUpperPlanCountShortagelist.createddate = createddate;
	}
	return getUpperPlanCountShortagelist;
}

Map<String, dynamic> $GetUpperPlanCountShortagelistToJson(GetUpperPlanCountShortagelist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['orderno'] = entity.orderno;
	data['companyplanno'] = entity.companyplanno;
	data['planno'] = entity.planno;
	data['countid'] = entity.countid;
	data['supplierid'] = entity.supplierid;
	data['artnumber'] = entity.artnumber;
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
	data['createddate'] = entity.createddate;
	return data;
}

GetUpperPlanCountBalancelist $GetUpperPlanCountBalancelistFromJson(Map<String, dynamic> json) {
	final GetUpperPlanCountBalancelist getUpperPlanCountBalancelist = GetUpperPlanCountBalancelist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		getUpperPlanCountBalancelist.id = id;
	}
	final String? orderno = jsonConvert.convert<String>(json['orderno']);
	if (orderno != null) {
		getUpperPlanCountBalancelist.orderno = orderno;
	}
	final String? companyplanno = jsonConvert.convert<String>(json['companyplanno']);
	if (companyplanno != null) {
		getUpperPlanCountBalancelist.companyplanno = companyplanno;
	}
	final String? planno = jsonConvert.convert<String>(json['planno']);
	if (planno != null) {
		getUpperPlanCountBalancelist.planno = planno;
	}
	final String? countid = jsonConvert.convert<String>(json['countid']);
	if (countid != null) {
		getUpperPlanCountBalancelist.countid = countid;
	}
	final String? supplierid = jsonConvert.convert<String>(json['supplierid']);
	if (supplierid != null) {
		getUpperPlanCountBalancelist.supplierid = supplierid;
	}
	final String? artnumber = jsonConvert.convert<String>(json['artnumber']);
	if (artnumber != null) {
		getUpperPlanCountBalancelist.artnumber = artnumber;
	}
	final String? s1 = jsonConvert.convert<String>(json['s1']);
	if (s1 != null) {
		getUpperPlanCountBalancelist.s1 = s1;
	}
	final String? s2 = jsonConvert.convert<String>(json['s2']);
	if (s2 != null) {
		getUpperPlanCountBalancelist.s2 = s2;
	}
	final String? s3 = jsonConvert.convert<String>(json['s3']);
	if (s3 != null) {
		getUpperPlanCountBalancelist.s3 = s3;
	}
	final String? s4 = jsonConvert.convert<String>(json['s4']);
	if (s4 != null) {
		getUpperPlanCountBalancelist.s4 = s4;
	}
	final String? s5 = jsonConvert.convert<String>(json['s5']);
	if (s5 != null) {
		getUpperPlanCountBalancelist.s5 = s5;
	}
	final String? s6 = jsonConvert.convert<String>(json['s6']);
	if (s6 != null) {
		getUpperPlanCountBalancelist.s6 = s6;
	}
	final String? s7 = jsonConvert.convert<String>(json['s7']);
	if (s7 != null) {
		getUpperPlanCountBalancelist.s7 = s7;
	}
	final String? s8 = jsonConvert.convert<String>(json['s8']);
	if (s8 != null) {
		getUpperPlanCountBalancelist.s8 = s8;
	}
	final String? s9 = jsonConvert.convert<String>(json['s9']);
	if (s9 != null) {
		getUpperPlanCountBalancelist.s9 = s9;
	}
	final String? s10 = jsonConvert.convert<String>(json['s10']);
	if (s10 != null) {
		getUpperPlanCountBalancelist.s10 = s10;
	}
	final String? s11 = jsonConvert.convert<String>(json['s11']);
	if (s11 != null) {
		getUpperPlanCountBalancelist.s11 = s11;
	}
	final String? s12 = jsonConvert.convert<String>(json['s12']);
	if (s12 != null) {
		getUpperPlanCountBalancelist.s12 = s12;
	}
	final String? s13 = jsonConvert.convert<String>(json['s13']);
	if (s13 != null) {
		getUpperPlanCountBalancelist.s13 = s13;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		getUpperPlanCountBalancelist.createddate = createddate;
	}
	return getUpperPlanCountBalancelist;
}

Map<String, dynamic> $GetUpperPlanCountBalancelistToJson(GetUpperPlanCountBalancelist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['orderno'] = entity.orderno;
	data['companyplanno'] = entity.companyplanno;
	data['planno'] = entity.planno;
	data['countid'] = entity.countid;
	data['supplierid'] = entity.supplierid;
	data['artnumber'] = entity.artnumber;
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
	data['createddate'] = entity.createddate;
	return data;
}