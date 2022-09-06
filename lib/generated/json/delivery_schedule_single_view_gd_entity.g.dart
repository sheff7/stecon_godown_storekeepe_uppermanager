import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/Godown/DeliverySchedulefn/Model/delivery_schedule_single_view_gd_entity.dart';

DeliveryScheduleSingleViewGdEntity $DeliveryScheduleSingleViewGdEntityFromJson(Map<String, dynamic> json) {
	final DeliveryScheduleSingleViewGdEntity deliveryScheduleSingleViewGdEntity = DeliveryScheduleSingleViewGdEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		deliveryScheduleSingleViewGdEntity.response = response;
	}
	final List<DeliveryScheduleSingleViewGdDeliveryschedule>? deliveryschedule = jsonConvert.convertListNotNull<DeliveryScheduleSingleViewGdDeliveryschedule>(json['deliveryschedule']);
	if (deliveryschedule != null) {
		deliveryScheduleSingleViewGdEntity.deliveryschedule = deliveryschedule;
	}
	return deliveryScheduleSingleViewGdEntity;
}

Map<String, dynamic> $DeliveryScheduleSingleViewGdEntityToJson(DeliveryScheduleSingleViewGdEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['deliveryschedule'] =  entity.deliveryschedule?.map((v) => v.toJson()).toList();
	return data;
}

DeliveryScheduleSingleViewGdDeliveryschedule $DeliveryScheduleSingleViewGdDeliveryscheduleFromJson(Map<String, dynamic> json) {
	final DeliveryScheduleSingleViewGdDeliveryschedule deliveryScheduleSingleViewGdDeliveryschedule = DeliveryScheduleSingleViewGdDeliveryschedule();
	final int? deliveryproductsid = jsonConvert.convert<int>(json['deliveryproductsid']);
	if (deliveryproductsid != null) {
		deliveryScheduleSingleViewGdDeliveryschedule.deliveryproductsid = deliveryproductsid;
	}
	final String? dateofdelivery = jsonConvert.convert<String>(json['dateofdelivery']);
	if (dateofdelivery != null) {
		deliveryScheduleSingleViewGdDeliveryschedule.dateofdelivery = dateofdelivery;
	}
	final String? deliverystatus = jsonConvert.convert<String>(json['deliverystatus']);
	if (deliverystatus != null) {
		deliveryScheduleSingleViewGdDeliveryschedule.deliverystatus = deliverystatus;
	}
	final String? deliverybox = jsonConvert.convert<String>(json['deliverybox']);
	if (deliverybox != null) {
		deliveryScheduleSingleViewGdDeliveryschedule.deliverybox = deliverybox;
	}
	final String? did = jsonConvert.convert<String>(json['did']);
	if (did != null) {
		deliveryScheduleSingleViewGdDeliveryschedule.did = did;
	}
	final String? productid = jsonConvert.convert<String>(json['productid']);
	if (productid != null) {
		deliveryScheduleSingleViewGdDeliveryschedule.productid = productid;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		deliveryScheduleSingleViewGdDeliveryschedule.id = id;
	}
	final String? orderno = jsonConvert.convert<String>(json['orderno']);
	if (orderno != null) {
		deliveryScheduleSingleViewGdDeliveryschedule.orderno = orderno;
	}
	final String? orderid = jsonConvert.convert<String>(json['orderid']);
	if (orderid != null) {
		deliveryScheduleSingleViewGdDeliveryschedule.orderid = orderid;
	}
	final String? distributorid = jsonConvert.convert<String>(json['distributorid']);
	if (distributorid != null) {
		deliveryScheduleSingleViewGdDeliveryschedule.distributorid = distributorid;
	}
	final String? artno = jsonConvert.convert<String>(json['artno']);
	if (artno != null) {
		deliveryScheduleSingleViewGdDeliveryschedule.artno = artno;
	}
	final String? category = jsonConvert.convert<String>(json['category']);
	if (category != null) {
		deliveryScheduleSingleViewGdDeliveryschedule.category = category;
	}
	final String? color = jsonConvert.convert<String>(json['color']);
	if (color != null) {
		deliveryScheduleSingleViewGdDeliveryschedule.color = color;
	}
	final String? size = jsonConvert.convert<String>(json['size']);
	if (size != null) {
		deliveryScheduleSingleViewGdDeliveryschedule.size = size;
	}
	final String? pair = jsonConvert.convert<String>(json['pair']);
	if (pair != null) {
		deliveryScheduleSingleViewGdDeliveryschedule.pair = pair;
	}
	final String? box = jsonConvert.convert<String>(json['box']);
	if (box != null) {
		deliveryScheduleSingleViewGdDeliveryschedule.box = box;
	}
	final String? remainingbox = jsonConvert.convert<String>(json['remainingbox']);
	if (remainingbox != null) {
		deliveryScheduleSingleViewGdDeliveryschedule.remainingbox = remainingbox;
	}
	final String? s1 = jsonConvert.convert<String>(json['s1']);
	if (s1 != null) {
		deliveryScheduleSingleViewGdDeliveryschedule.s1 = s1;
	}
	final String? s2 = jsonConvert.convert<String>(json['s2']);
	if (s2 != null) {
		deliveryScheduleSingleViewGdDeliveryschedule.s2 = s2;
	}
	final String? s3 = jsonConvert.convert<String>(json['s3']);
	if (s3 != null) {
		deliveryScheduleSingleViewGdDeliveryschedule.s3 = s3;
	}
	final String? s4 = jsonConvert.convert<String>(json['s4']);
	if (s4 != null) {
		deliveryScheduleSingleViewGdDeliveryschedule.s4 = s4;
	}
	final String? s5 = jsonConvert.convert<String>(json['s5']);
	if (s5 != null) {
		deliveryScheduleSingleViewGdDeliveryschedule.s5 = s5;
	}
	final String? s6 = jsonConvert.convert<String>(json['s6']);
	if (s6 != null) {
		deliveryScheduleSingleViewGdDeliveryschedule.s6 = s6;
	}
	final String? s7 = jsonConvert.convert<String>(json['s7']);
	if (s7 != null) {
		deliveryScheduleSingleViewGdDeliveryschedule.s7 = s7;
	}
	final String? s8 = jsonConvert.convert<String>(json['s8']);
	if (s8 != null) {
		deliveryScheduleSingleViewGdDeliveryschedule.s8 = s8;
	}
	final String? s9 = jsonConvert.convert<String>(json['s9']);
	if (s9 != null) {
		deliveryScheduleSingleViewGdDeliveryschedule.s9 = s9;
	}
	final String? s10 = jsonConvert.convert<String>(json['s10']);
	if (s10 != null) {
		deliveryScheduleSingleViewGdDeliveryschedule.s10 = s10;
	}
	final String? s11 = jsonConvert.convert<String>(json['s11']);
	if (s11 != null) {
		deliveryScheduleSingleViewGdDeliveryschedule.s11 = s11;
	}
	final String? s12 = jsonConvert.convert<String>(json['s12']);
	if (s12 != null) {
		deliveryScheduleSingleViewGdDeliveryschedule.s12 = s12;
	}
	final String? s13 = jsonConvert.convert<String>(json['s13']);
	if (s13 != null) {
		deliveryScheduleSingleViewGdDeliveryschedule.s13 = s13;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		deliveryScheduleSingleViewGdDeliveryschedule.status = status;
	}
	final String? ordertakenby = jsonConvert.convert<String>(json['ordertakenby']);
	if (ordertakenby != null) {
		deliveryScheduleSingleViewGdDeliveryschedule.ordertakenby = ordertakenby;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		deliveryScheduleSingleViewGdDeliveryschedule.createddate = createddate;
	}
	final String? sizename = jsonConvert.convert<String>(json['sizename']);
	if (sizename != null) {
		deliveryScheduleSingleViewGdDeliveryschedule.sizename = sizename;
	}
	final String? customername = jsonConvert.convert<String>(json['customername']);
	if (customername != null) {
		deliveryScheduleSingleViewGdDeliveryschedule.customername = customername;
	}
	final String? areacode = jsonConvert.convert<String>(json['areacode']);
	if (areacode != null) {
		deliveryScheduleSingleViewGdDeliveryschedule.areacode = areacode;
	}
	final String? ordereddate = jsonConvert.convert<String>(json['ordereddate']);
	if (ordereddate != null) {
		deliveryScheduleSingleViewGdDeliveryschedule.ordereddate = ordereddate;
	}
	final String? productname = jsonConvert.convert<String>(json['productname']);
	if (productname != null) {
		deliveryScheduleSingleViewGdDeliveryschedule.productname = productname;
	}
	final String? categoryname = jsonConvert.convert<String>(json['categoryname']);
	if (categoryname != null) {
		deliveryScheduleSingleViewGdDeliveryschedule.categoryname = categoryname;
	}
	final String? colorname = jsonConvert.convert<String>(json['colorname']);
	if (colorname != null) {
		deliveryScheduleSingleViewGdDeliveryschedule.colorname = colorname;
	}
	return deliveryScheduleSingleViewGdDeliveryschedule;
}

Map<String, dynamic> $DeliveryScheduleSingleViewGdDeliveryscheduleToJson(DeliveryScheduleSingleViewGdDeliveryschedule entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['deliveryproductsid'] = entity.deliveryproductsid;
	data['dateofdelivery'] = entity.dateofdelivery;
	data['deliverystatus'] = entity.deliverystatus;
	data['deliverybox'] = entity.deliverybox;
	data['did'] = entity.did;
	data['productid'] = entity.productid;
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
	data['sizename'] = entity.sizename;
	data['customername'] = entity.customername;
	data['areacode'] = entity.areacode;
	data['ordereddate'] = entity.ordereddate;
	data['productname'] = entity.productname;
	data['categoryname'] = entity.categoryname;
	data['colorname'] = entity.colorname;
	return data;
}