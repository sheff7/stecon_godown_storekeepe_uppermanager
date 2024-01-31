import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/Godown/viewOrderGD/model/orders_list_view_entity.dart';

ViewOrdersListViewEntity $ViewOrdersListViewEntityFromJson(Map<String, dynamic> json) {
	final ViewOrdersListViewEntity viewOrdersListViewEntity = ViewOrdersListViewEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		viewOrdersListViewEntity.response = response;
	}
	final List<ViewOrdersListViewOrderlist>? orderlist = jsonConvert.convertListNotNull<ViewOrdersListViewOrderlist>(json['orderlist']);
	if (orderlist != null) {
		viewOrdersListViewEntity.orderlist = orderlist;
	}
	return viewOrdersListViewEntity;
}

Map<String, dynamic> $ViewOrdersListViewEntityToJson(ViewOrdersListViewEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['orderlist'] =  entity.orderlist?.map((v) => v.toJson()).toList();
	return data;
}

ViewOrdersListViewOrderlist $ViewOrdersListViewOrderlistFromJson(Map<String, dynamic> json) {
	final ViewOrdersListViewOrderlist viewOrdersListViewOrderlist = ViewOrdersListViewOrderlist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		viewOrdersListViewOrderlist.id = id;
	}
	final String? orderno = jsonConvert.convert<String>(json['orderno']);
	if (orderno != null) {
		viewOrdersListViewOrderlist.orderno = orderno;
	}
	final String? areacode = jsonConvert.convert<String>(json['areacode']);
	if (areacode != null) {
		viewOrdersListViewOrderlist.areacode = areacode;
	}
	final String? distributorname = jsonConvert.convert<String>(json['distributorname']);
	if (distributorname != null) {
		viewOrdersListViewOrderlist.distributorname = distributorname;
	}
	final String? distributorid = jsonConvert.convert<String>(json['distributorid']);
	if (distributorid != null) {
		viewOrdersListViewOrderlist.distributorid = distributorid;
	}
	final String? representativename = jsonConvert.convert<String>(json['representativename']);
	if (representativename != null) {
		viewOrdersListViewOrderlist.representativename = representativename;
	}
	final String? representativeid = jsonConvert.convert<String>(json['representativeid']);
	if (representativeid != null) {
		viewOrdersListViewOrderlist.representativeid = representativeid;
	}
	final String? ordertakenby = jsonConvert.convert<String>(json['ordertakenby']);
	if (ordertakenby != null) {
		viewOrdersListViewOrderlist.ordertakenby = ordertakenby;
	}
	final String? deliverydate = jsonConvert.convert<String>(json['deliverydate']);
	if (deliverydate != null) {
		viewOrdersListViewOrderlist.deliverydate = deliverydate;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		viewOrdersListViewOrderlist.status = status;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		viewOrdersListViewOrderlist.createddate = createddate;
	}
	final dynamic ordercancelledby = jsonConvert.convert<dynamic>(json['ordercancelledby']);
	if (ordercancelledby != null) {
		viewOrdersListViewOrderlist.ordercancelledby = ordercancelledby;
	}
	return viewOrdersListViewOrderlist;
}

Map<String, dynamic> $ViewOrdersListViewOrderlistToJson(ViewOrdersListViewOrderlist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['orderno'] = entity.orderno;
	data['areacode'] = entity.areacode;
	data['distributorname'] = entity.distributorname;
	data['distributorid'] = entity.distributorid;
	data['representativename'] = entity.representativename;
	data['representativeid'] = entity.representativeid;
	data['ordertakenby'] = entity.ordertakenby;
	data['deliverydate'] = entity.deliverydate;
	data['status'] = entity.status;
	data['createddate'] = entity.createddate;
	data['ordercancelledby'] = entity.ordercancelledby;
	return data;
}