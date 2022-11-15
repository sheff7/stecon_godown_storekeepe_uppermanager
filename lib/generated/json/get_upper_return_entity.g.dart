import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperReturnCount/Model/get_upper_return_entity.dart';

GetUpperReturnEntity $GetUpperReturnEntityFromJson(Map<String, dynamic> json) {
	final GetUpperReturnEntity getUpperReturnEntity = GetUpperReturnEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		getUpperReturnEntity.response = response;
	}
	final List<GetUpperReturnUpperreturnlist>? upperreturnlist = jsonConvert.convertListNotNull<GetUpperReturnUpperreturnlist>(json['upperreturnlist']);
	if (upperreturnlist != null) {
		getUpperReturnEntity.upperreturnlist = upperreturnlist;
	}
	return getUpperReturnEntity;
}

Map<String, dynamic> $GetUpperReturnEntityToJson(GetUpperReturnEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['upperreturnlist'] =  entity.upperreturnlist?.map((v) => v.toJson()).toList();
	return data;
}

GetUpperReturnUpperreturnlist $GetUpperReturnUpperreturnlistFromJson(Map<String, dynamic> json) {
	final GetUpperReturnUpperreturnlist getUpperReturnUpperreturnlist = GetUpperReturnUpperreturnlist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		getUpperReturnUpperreturnlist.id = id;
	}
	final String? supplierid = jsonConvert.convert<String>(json['supplierid']);
	if (supplierid != null) {
		getUpperReturnUpperreturnlist.supplierid = supplierid;
	}
	final String? orderno = jsonConvert.convert<String>(json['orderno']);
	if (orderno != null) {
		getUpperReturnUpperreturnlist.orderno = orderno;
	}
	final String? orderid = jsonConvert.convert<String>(json['orderid']);
	if (orderid != null) {
		getUpperReturnUpperreturnlist.orderid = orderid;
	}
	final String? productid = jsonConvert.convert<String>(json['productid']);
	if (productid != null) {
		getUpperReturnUpperreturnlist.productid = productid;
	}
	final String? mrno = jsonConvert.convert<String>(json['mrno']);
	if (mrno != null) {
		getUpperReturnUpperreturnlist.mrno = mrno;
	}
	final String? companyplanno = jsonConvert.convert<String>(json['companyplanno']);
	if (companyplanno != null) {
		getUpperReturnUpperreturnlist.companyplanno = companyplanno;
	}
	final String? planno = jsonConvert.convert<String>(json['planno']);
	if (planno != null) {
		getUpperReturnUpperreturnlist.planno = planno;
	}
	final String? date = jsonConvert.convert<String>(json['date']);
	if (date != null) {
		getUpperReturnUpperreturnlist.date = date;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		getUpperReturnUpperreturnlist.status = status;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		getUpperReturnUpperreturnlist.createddate = createddate;
	}
	final String? type = jsonConvert.convert<String>(json['type']);
	if (type != null) {
		getUpperReturnUpperreturnlist.type = type;
	}
	final String? countid = jsonConvert.convert<String>(json['countid']);
	if (countid != null) {
		getUpperReturnUpperreturnlist.countid = countid;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		getUpperReturnUpperreturnlist.name = name;
	}
	final String? artno = jsonConvert.convert<String>(json['artno']);
	if (artno != null) {
		getUpperReturnUpperreturnlist.artno = artno;
	}
	return getUpperReturnUpperreturnlist;
}

Map<String, dynamic> $GetUpperReturnUpperreturnlistToJson(GetUpperReturnUpperreturnlist entity) {
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