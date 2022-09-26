import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperPurchaseCount/Model/get_purchse_plan_entity.dart';

GetPurchsePlanEntity $GetPurchsePlanEntityFromJson(Map<String, dynamic> json) {
	final GetPurchsePlanEntity getPurchsePlanEntity = GetPurchsePlanEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		getPurchsePlanEntity.response = response;
	}
	final List<GetPurchsePlanPurchaseplanlist>? purchaseplanlist = jsonConvert.convertListNotNull<GetPurchsePlanPurchaseplanlist>(json['purchaseplanlist']);
	if (purchaseplanlist != null) {
		getPurchsePlanEntity.purchaseplanlist = purchaseplanlist;
	}
	return getPurchsePlanEntity;
}

Map<String, dynamic> $GetPurchsePlanEntityToJson(GetPurchsePlanEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['purchaseplanlist'] =  entity.purchaseplanlist?.map((v) => v.toJson()).toList();
	return data;
}

GetPurchsePlanPurchaseplanlist $GetPurchsePlanPurchaseplanlistFromJson(Map<String, dynamic> json) {
	final GetPurchsePlanPurchaseplanlist getPurchsePlanPurchaseplanlist = GetPurchsePlanPurchaseplanlist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		getPurchsePlanPurchaseplanlist.id = id;
	}
	final String? orderno = jsonConvert.convert<String>(json['orderno']);
	if (orderno != null) {
		getPurchsePlanPurchaseplanlist.orderno = orderno;
	}
	final String? companyid = jsonConvert.convert<String>(json['companyid']);
	if (companyid != null) {
		getPurchsePlanPurchaseplanlist.companyid = companyid;
	}
	final String? companyplanno = jsonConvert.convert<String>(json['companyplanno']);
	if (companyplanno != null) {
		getPurchsePlanPurchaseplanlist.companyplanno = companyplanno;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		getPurchsePlanPurchaseplanlist.status = status;
	}
	final String? status1 = jsonConvert.convert<String>(json['status1']);
	if (status1 != null) {
		getPurchsePlanPurchaseplanlist.status1 = status1;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		getPurchsePlanPurchaseplanlist.createddate = createddate;
	}
	final String? orderdate = jsonConvert.convert<String>(json['orderdate']);
	if (orderdate != null) {
		getPurchsePlanPurchaseplanlist.orderdate = orderdate;
	}
	final String? ordertakenby = jsonConvert.convert<String>(json['ordertakenby']);
	if (ordertakenby != null) {
		getPurchsePlanPurchaseplanlist.ordertakenby = ordertakenby;
	}
	final String? ordertakenbyid = jsonConvert.convert<String>(json['ordertakenbyid']);
	if (ordertakenbyid != null) {
		getPurchsePlanPurchaseplanlist.ordertakenbyid = ordertakenbyid;
	}
	final String? companyname = jsonConvert.convert<String>(json['companyname']);
	if (companyname != null) {
		getPurchsePlanPurchaseplanlist.companyname = companyname;
	}
	return getPurchsePlanPurchaseplanlist;
}

Map<String, dynamic> $GetPurchsePlanPurchaseplanlistToJson(GetPurchsePlanPurchaseplanlist entity) {
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