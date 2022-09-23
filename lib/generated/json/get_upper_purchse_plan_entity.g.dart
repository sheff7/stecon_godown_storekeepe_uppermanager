import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperPurchaseOrder/Model/get_upper_purchse_plan_entity.dart';

GetUpperPurchsePlanEntity $GetUpperPurchsePlanEntityFromJson(Map<String, dynamic> json) {
	final GetUpperPurchsePlanEntity getUpperPurchsePlanEntity = GetUpperPurchsePlanEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		getUpperPurchsePlanEntity.response = response;
	}
	final List<GetUpperPurchsePlanPurchaseplanlist>? purchaseplanlist = jsonConvert.convertListNotNull<GetUpperPurchsePlanPurchaseplanlist>(json['purchaseplanlist']);
	if (purchaseplanlist != null) {
		getUpperPurchsePlanEntity.purchaseplanlist = purchaseplanlist;
	}
	return getUpperPurchsePlanEntity;
}

Map<String, dynamic> $GetUpperPurchsePlanEntityToJson(GetUpperPurchsePlanEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['purchaseplanlist'] =  entity.purchaseplanlist?.map((v) => v.toJson()).toList();
	return data;
}

GetUpperPurchsePlanPurchaseplanlist $GetUpperPurchsePlanPurchaseplanlistFromJson(Map<String, dynamic> json) {
	final GetUpperPurchsePlanPurchaseplanlist getUpperPurchsePlanPurchaseplanlist = GetUpperPurchsePlanPurchaseplanlist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		getUpperPurchsePlanPurchaseplanlist.id = id;
	}
	final String? orderno = jsonConvert.convert<String>(json['orderno']);
	if (orderno != null) {
		getUpperPurchsePlanPurchaseplanlist.orderno = orderno;
	}
	final String? companyid = jsonConvert.convert<String>(json['companyid']);
	if (companyid != null) {
		getUpperPurchsePlanPurchaseplanlist.companyid = companyid;
	}
	final String? companyplanno = jsonConvert.convert<String>(json['companyplanno']);
	if (companyplanno != null) {
		getUpperPurchsePlanPurchaseplanlist.companyplanno = companyplanno;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		getUpperPurchsePlanPurchaseplanlist.status = status;
	}
	final String? status1 = jsonConvert.convert<String>(json['status1']);
	if (status1 != null) {
		getUpperPurchsePlanPurchaseplanlist.status1 = status1;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		getUpperPurchsePlanPurchaseplanlist.createddate = createddate;
	}
	final String? orderdate = jsonConvert.convert<String>(json['orderdate']);
	if (orderdate != null) {
		getUpperPurchsePlanPurchaseplanlist.orderdate = orderdate;
	}
	final String? ordertakenby = jsonConvert.convert<String>(json['ordertakenby']);
	if (ordertakenby != null) {
		getUpperPurchsePlanPurchaseplanlist.ordertakenby = ordertakenby;
	}
	final String? ordertakenbyid = jsonConvert.convert<String>(json['ordertakenbyid']);
	if (ordertakenbyid != null) {
		getUpperPurchsePlanPurchaseplanlist.ordertakenbyid = ordertakenbyid;
	}
	final String? companyname = jsonConvert.convert<String>(json['companyname']);
	if (companyname != null) {
		getUpperPurchsePlanPurchaseplanlist.companyname = companyname;
	}
	return getUpperPurchsePlanPurchaseplanlist;
}

Map<String, dynamic> $GetUpperPurchsePlanPurchaseplanlistToJson(GetUpperPurchsePlanPurchaseplanlist entity) {
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