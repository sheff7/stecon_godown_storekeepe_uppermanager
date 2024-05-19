import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/Godown/OrderTaken/Model/order_taken_single_entity.dart';

OrderTakenSingleEntity $OrderTakenSingleEntityFromJson(Map<String, dynamic> json) {
	final OrderTakenSingleEntity orderTakenSingleEntity = OrderTakenSingleEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		orderTakenSingleEntity.response = response;
	}
	final List<OrderTakenSingleDeliveryschedule>? deliveryschedule = jsonConvert.convertListNotNull<OrderTakenSingleDeliveryschedule>(json['deliveryschedule']);
	if (deliveryschedule != null) {
		orderTakenSingleEntity.deliveryschedule = deliveryschedule;
	}
	return orderTakenSingleEntity;
}

Map<String, dynamic> $OrderTakenSingleEntityToJson(OrderTakenSingleEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['deliveryschedule'] =  entity.deliveryschedule?.map((v) => v.toJson()).toList();
	return data;
}

OrderTakenSingleDeliveryschedule $OrderTakenSingleDeliveryscheduleFromJson(Map<String, dynamic> json) {
	final OrderTakenSingleDeliveryschedule orderTakenSingleDeliveryschedule = OrderTakenSingleDeliveryschedule();
	final int? packedid = jsonConvert.convert<int>(json['packedid']);
	if (packedid != null) {
		orderTakenSingleDeliveryschedule.packedid = packedid;
	}
	final String? packeddate = jsonConvert.convert<String>(json['packeddate']);
	if (packeddate != null) {
		orderTakenSingleDeliveryschedule.packeddate = packeddate;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		orderTakenSingleDeliveryschedule.status = status;
	}
	final String? deliverybox = jsonConvert.convert<String>(json['deliverybox']);
	if (deliverybox != null) {
		orderTakenSingleDeliveryschedule.deliverybox = deliverybox;
	}
	final String? distributorid = jsonConvert.convert<String>(json['distributorid']);
	if (distributorid != null) {
		orderTakenSingleDeliveryschedule.distributorid = distributorid;
	}
	final String? productid = jsonConvert.convert<String>(json['productid']);
	if (productid != null) {
		orderTakenSingleDeliveryschedule.productid = productid;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		orderTakenSingleDeliveryschedule.id = id;
	}
	final String? orderno = jsonConvert.convert<String>(json['orderno']);
	if (orderno != null) {
		orderTakenSingleDeliveryschedule.orderno = orderno;
	}
	final String? orderid = jsonConvert.convert<String>(json['orderid']);
	if (orderid != null) {
		orderTakenSingleDeliveryschedule.orderid = orderid;
	}
	final String? artno = jsonConvert.convert<String>(json['artno']);
	if (artno != null) {
		orderTakenSingleDeliveryschedule.artno = artno;
	}
	final String? category = jsonConvert.convert<String>(json['category']);
	if (category != null) {
		orderTakenSingleDeliveryschedule.category = category;
	}
	final String? color = jsonConvert.convert<String>(json['color']);
	if (color != null) {
		orderTakenSingleDeliveryschedule.color = color;
	}
	final String? size = jsonConvert.convert<String>(json['size']);
	if (size != null) {
		orderTakenSingleDeliveryschedule.size = size;
	}
	final String? pair = jsonConvert.convert<String>(json['pair']);
	if (pair != null) {
		orderTakenSingleDeliveryschedule.pair = pair;
	}
	final String? box = jsonConvert.convert<String>(json['box']);
	if (box != null) {
		orderTakenSingleDeliveryschedule.box = box;
	}
	final String? remainingbox = jsonConvert.convert<String>(json['remainingbox']);
	if (remainingbox != null) {
		orderTakenSingleDeliveryschedule.remainingbox = remainingbox;
	}
	final String? s1 = jsonConvert.convert<String>(json['s1']);
	if (s1 != null) {
		orderTakenSingleDeliveryschedule.s1 = s1;
	}
	final String? s2 = jsonConvert.convert<String>(json['s2']);
	if (s2 != null) {
		orderTakenSingleDeliveryschedule.s2 = s2;
	}
	final String? s3 = jsonConvert.convert<String>(json['s3']);
	if (s3 != null) {
		orderTakenSingleDeliveryschedule.s3 = s3;
	}
	final String? s4 = jsonConvert.convert<String>(json['s4']);
	if (s4 != null) {
		orderTakenSingleDeliveryschedule.s4 = s4;
	}
	final String? s5 = jsonConvert.convert<String>(json['s5']);
	if (s5 != null) {
		orderTakenSingleDeliveryschedule.s5 = s5;
	}
	final String? s6 = jsonConvert.convert<String>(json['s6']);
	if (s6 != null) {
		orderTakenSingleDeliveryschedule.s6 = s6;
	}
	final String? s7 = jsonConvert.convert<String>(json['s7']);
	if (s7 != null) {
		orderTakenSingleDeliveryschedule.s7 = s7;
	}
	final String? s8 = jsonConvert.convert<String>(json['s8']);
	if (s8 != null) {
		orderTakenSingleDeliveryschedule.s8 = s8;
	}
	final String? s9 = jsonConvert.convert<String>(json['s9']);
	if (s9 != null) {
		orderTakenSingleDeliveryschedule.s9 = s9;
	}
	final String? s10 = jsonConvert.convert<String>(json['s10']);
	if (s10 != null) {
		orderTakenSingleDeliveryschedule.s10 = s10;
	}
	final String? s11 = jsonConvert.convert<String>(json['s11']);
	if (s11 != null) {
		orderTakenSingleDeliveryschedule.s11 = s11;
	}
	final String? s12 = jsonConvert.convert<String>(json['s12']);
	if (s12 != null) {
		orderTakenSingleDeliveryschedule.s12 = s12;
	}
	final String? s13 = jsonConvert.convert<String>(json['s13']);
	if (s13 != null) {
		orderTakenSingleDeliveryschedule.s13 = s13;
	}
	final String? ordertakenby = jsonConvert.convert<String>(json['ordertakenby']);
	if (ordertakenby != null) {
		orderTakenSingleDeliveryschedule.ordertakenby = ordertakenby;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		orderTakenSingleDeliveryschedule.createddate = createddate;
	}
	final String? cancelleddate = jsonConvert.convert<String>(json['cancelleddate']);
	if (cancelleddate != null) {
		orderTakenSingleDeliveryschedule.cancelleddate = cancelleddate;
	}
	final String? sizename = jsonConvert.convert<String>(json['sizename']);
	if (sizename != null) {
		orderTakenSingleDeliveryschedule.sizename = sizename;
	}
	final String? customername = jsonConvert.convert<String>(json['customername']);
	if (customername != null) {
		orderTakenSingleDeliveryschedule.customername = customername;
	}
	final String? areacode = jsonConvert.convert<String>(json['areacode']);
	if (areacode != null) {
		orderTakenSingleDeliveryschedule.areacode = areacode;
	}
	final String? repname = jsonConvert.convert<String>(json['repname']);
	if (repname != null) {
		orderTakenSingleDeliveryschedule.repname = repname;
	}
	final String? representativename = jsonConvert.convert<String>(json['representativename']);
	if (representativename != null) {
		orderTakenSingleDeliveryschedule.representativename = representativename;
	}
	final String? productname = jsonConvert.convert<String>(json['productname']);
	if (productname != null) {
		orderTakenSingleDeliveryschedule.productname = productname;
	}
	final String? categoryname = jsonConvert.convert<String>(json['categoryname']);
	if (categoryname != null) {
		orderTakenSingleDeliveryschedule.categoryname = categoryname;
	}
	final String? colorname = jsonConvert.convert<String>(json['colorname']);
	if (colorname != null) {
		orderTakenSingleDeliveryschedule.colorname = colorname;
	}
	return orderTakenSingleDeliveryschedule;
}

Map<String, dynamic> $OrderTakenSingleDeliveryscheduleToJson(OrderTakenSingleDeliveryschedule entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['packedid'] = entity.packedid;
	data['packeddate'] = entity.packeddate;
	data['status'] = entity.status;
	data['deliverybox'] = entity.deliverybox;
	data['distributorid'] = entity.distributorid;
	data['productid'] = entity.productid;
	data['id'] = entity.id;
	data['orderno'] = entity.orderno;
	data['orderid'] = entity.orderid;
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
	data['ordertakenby'] = entity.ordertakenby;
	data['createddate'] = entity.createddate;
	data['cancelleddate'] = entity.cancelleddate;
	data['sizename'] = entity.sizename;
	data['customername'] = entity.customername;
	data['areacode'] = entity.areacode;
	data['repname'] = entity.repname;
	data['representativename'] = entity.representativename;
	data['productname'] = entity.productname;
	data['categoryname'] = entity.categoryname;
	data['colorname'] = entity.colorname;
	return data;
}