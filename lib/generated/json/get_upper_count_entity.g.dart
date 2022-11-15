import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperReturnCount/Model/get_upper_count_entity.dart';

GetUpperCountEntity $GetUpperCountEntityFromJson(Map<String, dynamic> json) {
	final GetUpperCountEntity getUpperCountEntity = GetUpperCountEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		getUpperCountEntity.response = response;
	}
	final List<GetUpperCountOrdercountlist>? ordercountlist = jsonConvert.convertListNotNull<GetUpperCountOrdercountlist>(json['ordercountlist']);
	if (ordercountlist != null) {
		getUpperCountEntity.ordercountlist = ordercountlist;
	}
	final List<GetUpperCountReceivedcountlist>? receivedcountlist = jsonConvert.convertListNotNull<GetUpperCountReceivedcountlist>(json['receivedcountlist']);
	if (receivedcountlist != null) {
		getUpperCountEntity.receivedcountlist = receivedcountlist;
	}
	final List<int>? sizelist = jsonConvert.convertListNotNull<int>(json['sizelist']);
	if (sizelist != null) {
		getUpperCountEntity.sizelist = sizelist;
	}
	return getUpperCountEntity;
}

Map<String, dynamic> $GetUpperCountEntityToJson(GetUpperCountEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['ordercountlist'] =  entity.ordercountlist?.map((v) => v.toJson()).toList();
	data['receivedcountlist'] =  entity.receivedcountlist?.map((v) => v.toJson()).toList();
	data['sizelist'] =  entity.sizelist;
	return data;
}

GetUpperCountOrdercountlist $GetUpperCountOrdercountlistFromJson(Map<String, dynamic> json) {
	final GetUpperCountOrdercountlist getUpperCountOrdercountlist = GetUpperCountOrdercountlist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		getUpperCountOrdercountlist.id = id;
	}
	final String? companyid = jsonConvert.convert<String>(json['companyid']);
	if (companyid != null) {
		getUpperCountOrdercountlist.companyid = companyid;
	}
	final String? porderid = jsonConvert.convert<String>(json['porderid']);
	if (porderid != null) {
		getUpperCountOrdercountlist.porderid = porderid;
	}
	final String? companyplanno = jsonConvert.convert<String>(json['companyplanno']);
	if (companyplanno != null) {
		getUpperCountOrdercountlist.companyplanno = companyplanno;
	}
	final String? planno = jsonConvert.convert<String>(json['planno']);
	if (planno != null) {
		getUpperCountOrdercountlist.planno = planno;
	}
	final String? artno = jsonConvert.convert<String>(json['artno']);
	if (artno != null) {
		getUpperCountOrdercountlist.artno = artno;
	}
	final String? s1 = jsonConvert.convert<String>(json['s1']);
	if (s1 != null) {
		getUpperCountOrdercountlist.s1 = s1;
	}
	final String? s2 = jsonConvert.convert<String>(json['s2']);
	if (s2 != null) {
		getUpperCountOrdercountlist.s2 = s2;
	}
	final String? s3 = jsonConvert.convert<String>(json['s3']);
	if (s3 != null) {
		getUpperCountOrdercountlist.s3 = s3;
	}
	final String? s4 = jsonConvert.convert<String>(json['s4']);
	if (s4 != null) {
		getUpperCountOrdercountlist.s4 = s4;
	}
	final String? s5 = jsonConvert.convert<String>(json['s5']);
	if (s5 != null) {
		getUpperCountOrdercountlist.s5 = s5;
	}
	final String? s6 = jsonConvert.convert<String>(json['s6']);
	if (s6 != null) {
		getUpperCountOrdercountlist.s6 = s6;
	}
	final String? s7 = jsonConvert.convert<String>(json['s7']);
	if (s7 != null) {
		getUpperCountOrdercountlist.s7 = s7;
	}
	final String? s8 = jsonConvert.convert<String>(json['s8']);
	if (s8 != null) {
		getUpperCountOrdercountlist.s8 = s8;
	}
	final String? s9 = jsonConvert.convert<String>(json['s9']);
	if (s9 != null) {
		getUpperCountOrdercountlist.s9 = s9;
	}
	final String? s10 = jsonConvert.convert<String>(json['s10']);
	if (s10 != null) {
		getUpperCountOrdercountlist.s10 = s10;
	}
	final String? s11 = jsonConvert.convert<String>(json['s11']);
	if (s11 != null) {
		getUpperCountOrdercountlist.s11 = s11;
	}
	final String? s12 = jsonConvert.convert<String>(json['s12']);
	if (s12 != null) {
		getUpperCountOrdercountlist.s12 = s12;
	}
	final String? s13 = jsonConvert.convert<String>(json['s13']);
	if (s13 != null) {
		getUpperCountOrdercountlist.s13 = s13;
	}
	final String? totalpairs = jsonConvert.convert<String>(json['totalpairs']);
	if (totalpairs != null) {
		getUpperCountOrdercountlist.totalpairs = totalpairs;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		getUpperCountOrdercountlist.status = status;
	}
	final String? status1 = jsonConvert.convert<String>(json['status1']);
	if (status1 != null) {
		getUpperCountOrdercountlist.status1 = status1;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		getUpperCountOrdercountlist.createddate = createddate;
	}
	final String? orderno = jsonConvert.convert<String>(json['orderno']);
	if (orderno != null) {
		getUpperCountOrdercountlist.orderno = orderno;
	}
	final String? cutofdate = jsonConvert.convert<String>(json['cutofdate']);
	if (cutofdate != null) {
		getUpperCountOrdercountlist.cutofdate = cutofdate;
	}
	final String? note = jsonConvert.convert<String>(json['note']);
	if (note != null) {
		getUpperCountOrdercountlist.note = note;
	}
	final String? artnoname = jsonConvert.convert<String>(json['artnoname']);
	if (artnoname != null) {
		getUpperCountOrdercountlist.artnoname = artnoname;
	}
	return getUpperCountOrdercountlist;
}

Map<String, dynamic> $GetUpperCountOrdercountlistToJson(GetUpperCountOrdercountlist entity) {
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
	data['artnoname'] = entity.artnoname;
	return data;
}

GetUpperCountReceivedcountlist $GetUpperCountReceivedcountlistFromJson(Map<String, dynamic> json) {
	final GetUpperCountReceivedcountlist getUpperCountReceivedcountlist = GetUpperCountReceivedcountlist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		getUpperCountReceivedcountlist.id = id;
	}
	final String? orderno = jsonConvert.convert<String>(json['orderno']);
	if (orderno != null) {
		getUpperCountReceivedcountlist.orderno = orderno;
	}
	final String? companyplanno = jsonConvert.convert<String>(json['companyplanno']);
	if (companyplanno != null) {
		getUpperCountReceivedcountlist.companyplanno = companyplanno;
	}
	final String? planno = jsonConvert.convert<String>(json['planno']);
	if (planno != null) {
		getUpperCountReceivedcountlist.planno = planno;
	}
	final String? countid = jsonConvert.convert<String>(json['countid']);
	if (countid != null) {
		getUpperCountReceivedcountlist.countid = countid;
	}
	final String? artnumber = jsonConvert.convert<String>(json['artnumber']);
	if (artnumber != null) {
		getUpperCountReceivedcountlist.artnumber = artnumber;
	}
	final String? s1 = jsonConvert.convert<String>(json['s1']);
	if (s1 != null) {
		getUpperCountReceivedcountlist.s1 = s1;
	}
	final String? s2 = jsonConvert.convert<String>(json['s2']);
	if (s2 != null) {
		getUpperCountReceivedcountlist.s2 = s2;
	}
	final String? s3 = jsonConvert.convert<String>(json['s3']);
	if (s3 != null) {
		getUpperCountReceivedcountlist.s3 = s3;
	}
	final String? s4 = jsonConvert.convert<String>(json['s4']);
	if (s4 != null) {
		getUpperCountReceivedcountlist.s4 = s4;
	}
	final String? s5 = jsonConvert.convert<String>(json['s5']);
	if (s5 != null) {
		getUpperCountReceivedcountlist.s5 = s5;
	}
	final String? s6 = jsonConvert.convert<String>(json['s6']);
	if (s6 != null) {
		getUpperCountReceivedcountlist.s6 = s6;
	}
	final String? s7 = jsonConvert.convert<String>(json['s7']);
	if (s7 != null) {
		getUpperCountReceivedcountlist.s7 = s7;
	}
	final String? s8 = jsonConvert.convert<String>(json['s8']);
	if (s8 != null) {
		getUpperCountReceivedcountlist.s8 = s8;
	}
	final String? s9 = jsonConvert.convert<String>(json['s9']);
	if (s9 != null) {
		getUpperCountReceivedcountlist.s9 = s9;
	}
	final String? s10 = jsonConvert.convert<String>(json['s10']);
	if (s10 != null) {
		getUpperCountReceivedcountlist.s10 = s10;
	}
	final String? s11 = jsonConvert.convert<String>(json['s11']);
	if (s11 != null) {
		getUpperCountReceivedcountlist.s11 = s11;
	}
	final String? s12 = jsonConvert.convert<String>(json['s12']);
	if (s12 != null) {
		getUpperCountReceivedcountlist.s12 = s12;
	}
	final String? s13 = jsonConvert.convert<String>(json['s13']);
	if (s13 != null) {
		getUpperCountReceivedcountlist.s13 = s13;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		getUpperCountReceivedcountlist.createddate = createddate;
	}
	return getUpperCountReceivedcountlist;
}

Map<String, dynamic> $GetUpperCountReceivedcountlistToJson(GetUpperCountReceivedcountlist entity) {
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