import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/Godown/viewOrderGD/model/orders_single_view_entity.dart';

OrdersSingleViewEntity $OrdersSingleViewEntityFromJson(Map<String, dynamic> json) {
	final OrdersSingleViewEntity ordersSingleViewEntity = OrdersSingleViewEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		ordersSingleViewEntity.response = response;
	}
	final List<OrdersSingleViewOrderlist>? orderlist = jsonConvert.convertListNotNull<OrdersSingleViewOrderlist>(json['orderlist']);
	if (orderlist != null) {
		ordersSingleViewEntity.orderlist = orderlist;
	}
	return ordersSingleViewEntity;
}

Map<String, dynamic> $OrdersSingleViewEntityToJson(OrdersSingleViewEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['orderlist'] =  entity.orderlist?.map((v) => v.toJson()).toList();
	return data;
}

OrdersSingleViewOrderlist $OrdersSingleViewOrderlistFromJson(Map<String, dynamic> json) {
	final OrdersSingleViewOrderlist ordersSingleViewOrderlist = OrdersSingleViewOrderlist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		ordersSingleViewOrderlist.id = id;
	}
	final String? orderno = jsonConvert.convert<String>(json['orderno']);
	if (orderno != null) {
		ordersSingleViewOrderlist.orderno = orderno;
	}
	final String? orderid = jsonConvert.convert<String>(json['orderid']);
	if (orderid != null) {
		ordersSingleViewOrderlist.orderid = orderid;
	}
	final String? distributorid = jsonConvert.convert<String>(json['distributorid']);
	if (distributorid != null) {
		ordersSingleViewOrderlist.distributorid = distributorid;
	}
	final String? artno = jsonConvert.convert<String>(json['artno']);
	if (artno != null) {
		ordersSingleViewOrderlist.artno = artno;
	}
	final String? category = jsonConvert.convert<String>(json['category']);
	if (category != null) {
		ordersSingleViewOrderlist.category = category;
	}
	final String? color = jsonConvert.convert<String>(json['color']);
	if (color != null) {
		ordersSingleViewOrderlist.color = color;
	}
	final String? size = jsonConvert.convert<String>(json['size']);
	if (size != null) {
		ordersSingleViewOrderlist.size = size;
	}
	final String? pair = jsonConvert.convert<String>(json['pair']);
	if (pair != null) {
		ordersSingleViewOrderlist.pair = pair;
	}
	final String? box = jsonConvert.convert<String>(json['box']);
	if (box != null) {
		ordersSingleViewOrderlist.box = box;
	}
	final String? remainingbox = jsonConvert.convert<String>(json['remainingbox']);
	if (remainingbox != null) {
		ordersSingleViewOrderlist.remainingbox = remainingbox;
	}
	final String? s1 = jsonConvert.convert<String>(json['s1']);
	if (s1 != null) {
		ordersSingleViewOrderlist.s1 = s1;
	}
	final String? s2 = jsonConvert.convert<String>(json['s2']);
	if (s2 != null) {
		ordersSingleViewOrderlist.s2 = s2;
	}
	final String? s3 = jsonConvert.convert<String>(json['s3']);
	if (s3 != null) {
		ordersSingleViewOrderlist.s3 = s3;
	}
	final String? s4 = jsonConvert.convert<String>(json['s4']);
	if (s4 != null) {
		ordersSingleViewOrderlist.s4 = s4;
	}
	final String? s5 = jsonConvert.convert<String>(json['s5']);
	if (s5 != null) {
		ordersSingleViewOrderlist.s5 = s5;
	}
	final String? s6 = jsonConvert.convert<String>(json['s6']);
	if (s6 != null) {
		ordersSingleViewOrderlist.s6 = s6;
	}
	final String? s7 = jsonConvert.convert<String>(json['s7']);
	if (s7 != null) {
		ordersSingleViewOrderlist.s7 = s7;
	}
	final String? s8 = jsonConvert.convert<String>(json['s8']);
	if (s8 != null) {
		ordersSingleViewOrderlist.s8 = s8;
	}
	final String? s9 = jsonConvert.convert<String>(json['s9']);
	if (s9 != null) {
		ordersSingleViewOrderlist.s9 = s9;
	}
	final String? s10 = jsonConvert.convert<String>(json['s10']);
	if (s10 != null) {
		ordersSingleViewOrderlist.s10 = s10;
	}
	final String? s11 = jsonConvert.convert<String>(json['s11']);
	if (s11 != null) {
		ordersSingleViewOrderlist.s11 = s11;
	}
	final String? s12 = jsonConvert.convert<String>(json['s12']);
	if (s12 != null) {
		ordersSingleViewOrderlist.s12 = s12;
	}
	final String? s13 = jsonConvert.convert<String>(json['s13']);
	if (s13 != null) {
		ordersSingleViewOrderlist.s13 = s13;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		ordersSingleViewOrderlist.status = status;
	}
	final String? ordertakenby = jsonConvert.convert<String>(json['ordertakenby']);
	if (ordertakenby != null) {
		ordersSingleViewOrderlist.ordertakenby = ordertakenby;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		ordersSingleViewOrderlist.createddate = createddate;
	}
	return ordersSingleViewOrderlist;
}

Map<String, dynamic> $OrdersSingleViewOrderlistToJson(OrdersSingleViewOrderlist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['orderno'] = entity.orderno;
	data['orderid'] = entity.orderid;
	data['distributorid'] = entity.distributorid;
	data['artno'] = entity.artno;
	data['category'] = entity.category;
	data['color'] = entity.color;
	data['size'] = entity.size;
	data['pair'] = entity.pair;
	data['box'] = entity.box;
	data['remainingbox'] = entity.remainingbox;
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
	data['ordertakenby'] = entity.ordertakenby;
	data['createddate'] = entity.createddate;
	return data;
}