import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperReturnCount/Model/get_upper_return_single_entity.dart';

GetUpperReturnSingleEntity $GetUpperReturnSingleEntityFromJson(Map<String, dynamic> json) {
	final GetUpperReturnSingleEntity getUpperReturnSingleEntity = GetUpperReturnSingleEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		getUpperReturnSingleEntity.response = response;
	}
	final List<GetUpperReturnSingleUpperreturnlist>? upperreturnlist = jsonConvert.convertListNotNull<GetUpperReturnSingleUpperreturnlist>(json['upperreturnlist']);
	if (upperreturnlist != null) {
		getUpperReturnSingleEntity.upperreturnlist = upperreturnlist;
	}
	final List<GetUpperReturnSingleUpperreturncountlist>? upperreturncountlist = jsonConvert.convertListNotNull<GetUpperReturnSingleUpperreturncountlist>(json['upperreturncountlist']);
	if (upperreturncountlist != null) {
		getUpperReturnSingleEntity.upperreturncountlist = upperreturncountlist;
	}
	final List<GetUpperReturnSingleUpperreturncountstafflist>? upperreturncountstafflist = jsonConvert.convertListNotNull<GetUpperReturnSingleUpperreturncountstafflist>(json['upperreturncountstafflist']);
	if (upperreturncountstafflist != null) {
		getUpperReturnSingleEntity.upperreturncountstafflist = upperreturncountstafflist;
	}
	return getUpperReturnSingleEntity;
}

Map<String, dynamic> $GetUpperReturnSingleEntityToJson(GetUpperReturnSingleEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['upperreturnlist'] =  entity.upperreturnlist?.map((v) => v.toJson()).toList();
	data['upperreturncountlist'] =  entity.upperreturncountlist?.map((v) => v.toJson()).toList();
	data['upperreturncountstafflist'] =  entity.upperreturncountstafflist?.map((v) => v.toJson()).toList();
	return data;
}

GetUpperReturnSingleUpperreturnlist $GetUpperReturnSingleUpperreturnlistFromJson(Map<String, dynamic> json) {
	final GetUpperReturnSingleUpperreturnlist getUpperReturnSingleUpperreturnlist = GetUpperReturnSingleUpperreturnlist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		getUpperReturnSingleUpperreturnlist.id = id;
	}
	final String? supplierid = jsonConvert.convert<String>(json['supplierid']);
	if (supplierid != null) {
		getUpperReturnSingleUpperreturnlist.supplierid = supplierid;
	}
	final String? orderno = jsonConvert.convert<String>(json['orderno']);
	if (orderno != null) {
		getUpperReturnSingleUpperreturnlist.orderno = orderno;
	}
	final String? orderid = jsonConvert.convert<String>(json['orderid']);
	if (orderid != null) {
		getUpperReturnSingleUpperreturnlist.orderid = orderid;
	}
	final String? productid = jsonConvert.convert<String>(json['productid']);
	if (productid != null) {
		getUpperReturnSingleUpperreturnlist.productid = productid;
	}
	final String? mrno = jsonConvert.convert<String>(json['mrno']);
	if (mrno != null) {
		getUpperReturnSingleUpperreturnlist.mrno = mrno;
	}
	final String? companyplanno = jsonConvert.convert<String>(json['companyplanno']);
	if (companyplanno != null) {
		getUpperReturnSingleUpperreturnlist.companyplanno = companyplanno;
	}
	final String? planno = jsonConvert.convert<String>(json['planno']);
	if (planno != null) {
		getUpperReturnSingleUpperreturnlist.planno = planno;
	}
	final String? date = jsonConvert.convert<String>(json['date']);
	if (date != null) {
		getUpperReturnSingleUpperreturnlist.date = date;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		getUpperReturnSingleUpperreturnlist.status = status;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		getUpperReturnSingleUpperreturnlist.createddate = createddate;
	}
	final String? type = jsonConvert.convert<String>(json['type']);
	if (type != null) {
		getUpperReturnSingleUpperreturnlist.type = type;
	}
	final String? countid = jsonConvert.convert<String>(json['countid']);
	if (countid != null) {
		getUpperReturnSingleUpperreturnlist.countid = countid;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		getUpperReturnSingleUpperreturnlist.name = name;
	}
	final String? artno = jsonConvert.convert<String>(json['artno']);
	if (artno != null) {
		getUpperReturnSingleUpperreturnlist.artno = artno;
	}
	return getUpperReturnSingleUpperreturnlist;
}

Map<String, dynamic> $GetUpperReturnSingleUpperreturnlistToJson(GetUpperReturnSingleUpperreturnlist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['supplierid'] = entity.supplierid;
	data['orderno'] = entity.orderno;
	data['orderid'] = entity.orderid;
	data['productid'] = entity.productid;
	data['mrno'] = entity.mrno;
	data['companyplanno'] = entity.companyplanno;
	data['planno'] = entity.planno;
	data['date'] = entity.date;
	data['status'] = entity.status;
	data['createddate'] = entity.createddate;
	data['type'] = entity.type;
	data['countid'] = entity.countid;
	data['name'] = entity.name;
	data['artno'] = entity.artno;
	return data;
}

GetUpperReturnSingleUpperreturncountlist $GetUpperReturnSingleUpperreturncountlistFromJson(Map<String, dynamic> json) {
	final GetUpperReturnSingleUpperreturncountlist getUpperReturnSingleUpperreturncountlist = GetUpperReturnSingleUpperreturncountlist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		getUpperReturnSingleUpperreturncountlist.id = id;
	}
	final String? rid = jsonConvert.convert<String>(json['rid']);
	if (rid != null) {
		getUpperReturnSingleUpperreturncountlist.rid = rid;
	}
	final String? supplierid = jsonConvert.convert<String>(json['supplierid']);
	if (supplierid != null) {
		getUpperReturnSingleUpperreturncountlist.supplierid = supplierid;
	}
	final String? orderid = jsonConvert.convert<String>(json['orderid']);
	if (orderid != null) {
		getUpperReturnSingleUpperreturncountlist.orderid = orderid;
	}
	final String? orderno = jsonConvert.convert<String>(json['orderno']);
	if (orderno != null) {
		getUpperReturnSingleUpperreturncountlist.orderno = orderno;
	}
	final String? productid = jsonConvert.convert<String>(json['productid']);
	if (productid != null) {
		getUpperReturnSingleUpperreturncountlist.productid = productid;
	}
	final String? planno = jsonConvert.convert<String>(json['planno']);
	if (planno != null) {
		getUpperReturnSingleUpperreturncountlist.planno = planno;
	}
	final String? s1 = jsonConvert.convert<String>(json['s1']);
	if (s1 != null) {
		getUpperReturnSingleUpperreturncountlist.s1 = s1;
	}
	final String? s2 = jsonConvert.convert<String>(json['s2']);
	if (s2 != null) {
		getUpperReturnSingleUpperreturncountlist.s2 = s2;
	}
	final String? s3 = jsonConvert.convert<String>(json['s3']);
	if (s3 != null) {
		getUpperReturnSingleUpperreturncountlist.s3 = s3;
	}
	final String? s4 = jsonConvert.convert<String>(json['s4']);
	if (s4 != null) {
		getUpperReturnSingleUpperreturncountlist.s4 = s4;
	}
	final String? s5 = jsonConvert.convert<String>(json['s5']);
	if (s5 != null) {
		getUpperReturnSingleUpperreturncountlist.s5 = s5;
	}
	final String? s6 = jsonConvert.convert<String>(json['s6']);
	if (s6 != null) {
		getUpperReturnSingleUpperreturncountlist.s6 = s6;
	}
	final String? s7 = jsonConvert.convert<String>(json['s7']);
	if (s7 != null) {
		getUpperReturnSingleUpperreturncountlist.s7 = s7;
	}
	final String? s8 = jsonConvert.convert<String>(json['s8']);
	if (s8 != null) {
		getUpperReturnSingleUpperreturncountlist.s8 = s8;
	}
	final String? s9 = jsonConvert.convert<String>(json['s9']);
	if (s9 != null) {
		getUpperReturnSingleUpperreturncountlist.s9 = s9;
	}
	final String? s10 = jsonConvert.convert<String>(json['s10']);
	if (s10 != null) {
		getUpperReturnSingleUpperreturncountlist.s10 = s10;
	}
	final String? s11 = jsonConvert.convert<String>(json['s11']);
	if (s11 != null) {
		getUpperReturnSingleUpperreturncountlist.s11 = s11;
	}
	final String? s12 = jsonConvert.convert<String>(json['s12']);
	if (s12 != null) {
		getUpperReturnSingleUpperreturncountlist.s12 = s12;
	}
	final String? s13 = jsonConvert.convert<String>(json['s13']);
	if (s13 != null) {
		getUpperReturnSingleUpperreturncountlist.s13 = s13;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		getUpperReturnSingleUpperreturncountlist.status = status;
	}
	final String? date = jsonConvert.convert<String>(json['date']);
	if (date != null) {
		getUpperReturnSingleUpperreturncountlist.date = date;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		getUpperReturnSingleUpperreturncountlist.createddate = createddate;
	}
	return getUpperReturnSingleUpperreturncountlist;
}

Map<String, dynamic> $GetUpperReturnSingleUpperreturncountlistToJson(GetUpperReturnSingleUpperreturncountlist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['rid'] = entity.rid;
	data['supplierid'] = entity.supplierid;
	data['orderid'] = entity.orderid;
	data['orderno'] = entity.orderno;
	data['productid'] = entity.productid;
	data['planno'] = entity.planno;
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
	data['status'] = entity.status;
	data['date'] = entity.date;
	data['createddate'] = entity.createddate;
	return data;
}

GetUpperReturnSingleUpperreturncountstafflist $GetUpperReturnSingleUpperreturncountstafflistFromJson(Map<String, dynamic> json) {
	final GetUpperReturnSingleUpperreturncountstafflist getUpperReturnSingleUpperreturncountstafflist = GetUpperReturnSingleUpperreturncountstafflist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		getUpperReturnSingleUpperreturncountstafflist.id = id;
	}
	final String? rid = jsonConvert.convert<String>(json['rid']);
	if (rid != null) {
		getUpperReturnSingleUpperreturncountstafflist.rid = rid;
	}
	final String? supplierid = jsonConvert.convert<String>(json['supplierid']);
	if (supplierid != null) {
		getUpperReturnSingleUpperreturncountstafflist.supplierid = supplierid;
	}
	final String? orderid = jsonConvert.convert<String>(json['orderid']);
	if (orderid != null) {
		getUpperReturnSingleUpperreturncountstafflist.orderid = orderid;
	}
	final String? staffid = jsonConvert.convert<String>(json['staffid']);
	if (staffid != null) {
		getUpperReturnSingleUpperreturncountstafflist.staffid = staffid;
	}
	final String? date = jsonConvert.convert<String>(json['date']);
	if (date != null) {
		getUpperReturnSingleUpperreturncountstafflist.date = date;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		getUpperReturnSingleUpperreturncountstafflist.createddate = createddate;
	}
	final String? staffname = jsonConvert.convert<String>(json['staffname']);
	if (staffname != null) {
		getUpperReturnSingleUpperreturncountstafflist.staffname = staffname;
	}
	final String? idcardno = jsonConvert.convert<String>(json['idcardno']);
	if (idcardno != null) {
		getUpperReturnSingleUpperreturncountstafflist.idcardno = idcardno;
	}
	final String? deaprtment = jsonConvert.convert<String>(json['deaprtment']);
	if (deaprtment != null) {
		getUpperReturnSingleUpperreturncountstafflist.deaprtment = deaprtment;
	}
	final String? departmentname = jsonConvert.convert<String>(json['departmentname']);
	if (departmentname != null) {
		getUpperReturnSingleUpperreturncountstafflist.departmentname = departmentname;
	}
	return getUpperReturnSingleUpperreturncountstafflist;
}

Map<String, dynamic> $GetUpperReturnSingleUpperreturncountstafflistToJson(GetUpperReturnSingleUpperreturncountstafflist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['rid'] = entity.rid;
	data['supplierid'] = entity.supplierid;
	data['orderid'] = entity.orderid;
	data['staffid'] = entity.staffid;
	data['date'] = entity.date;
	data['createddate'] = entity.createddate;
	data['staffname'] = entity.staffname;
	data['idcardno'] = entity.idcardno;
	data['deaprtment'] = entity.deaprtment;
	data['departmentname'] = entity.departmentname;
	return data;
}