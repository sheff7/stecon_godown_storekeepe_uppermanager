import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UppeOrder/Model/order_list_entity.dart';

OrderListEntity $OrderListEntityFromJson(Map<String, dynamic> json) {
	final OrderListEntity orderListEntity = OrderListEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		orderListEntity.response = response;
	}
	final List<OrderListOrderlist>? orderlist = jsonConvert.convertListNotNull<OrderListOrderlist>(json['orderlist']);
	if (orderlist != null) {
		orderListEntity.orderlist = orderlist;
	}
	return orderListEntity;
}

Map<String, dynamic> $OrderListEntityToJson(OrderListEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['orderlist'] =  entity.orderlist?.map((v) => v.toJson()).toList();
	return data;
}

OrderListOrderlist $OrderListOrderlistFromJson(Map<String, dynamic> json) {
	final OrderListOrderlist orderListOrderlist = OrderListOrderlist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		orderListOrderlist.id = id;
	}
	final String? orderno = jsonConvert.convert<String>(json['orderno']);
	if (orderno != null) {
		orderListOrderlist.orderno = orderno;
	}
	final String? areacode = jsonConvert.convert<String>(json['areacode']);
	if (areacode != null) {
		orderListOrderlist.areacode = areacode;
	}
	final String? distributorname = jsonConvert.convert<String>(json['distributorname']);
	if (distributorname != null) {
		orderListOrderlist.distributorname = distributorname;
	}
	final int? distributorid = jsonConvert.convert<int>(json['distributorid']);
	if (distributorid != null) {
		orderListOrderlist.distributorid = distributorid;
	}
	final String? representativename = jsonConvert.convert<String>(json['representativename']);
	if (representativename != null) {
		orderListOrderlist.representativename = representativename;
	}
	final String? representativeid = jsonConvert.convert<String>(json['representativeid']);
	if (representativeid != null) {
		orderListOrderlist.representativeid = representativeid;
	}
	final String? ordertakenby = jsonConvert.convert<String>(json['ordertakenby']);
	if (ordertakenby != null) {
		orderListOrderlist.ordertakenby = ordertakenby;
	}
	final String? deliverydate = jsonConvert.convert<String>(json['deliverydate']);
	if (deliverydate != null) {
		orderListOrderlist.deliverydate = deliverydate;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		orderListOrderlist.status = status;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		orderListOrderlist.createddate = createddate;
	}
	final String? ordercancelledby = jsonConvert.convert<String>(json['ordercancelledby']);
	if (ordercancelledby != null) {
		orderListOrderlist.ordercancelledby = ordercancelledby;
	}
	return orderListOrderlist;
}

Map<String, dynamic> $OrderListOrderlistToJson(OrderListOrderlist entity) {
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