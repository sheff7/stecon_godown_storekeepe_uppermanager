import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UppeOrder/Model/get_order_single_view_entity.dart';

GetOrderSingleViewEntity $GetOrderSingleViewEntityFromJson(Map<String, dynamic> json) {
	final GetOrderSingleViewEntity getOrderSingleViewEntity = GetOrderSingleViewEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		getOrderSingleViewEntity.response = response;
	}
	final List<GetOrderSingleViewOrderlist>? orderlist = jsonConvert.convertListNotNull<GetOrderSingleViewOrderlist>(json['orderlist']);
	if (orderlist != null) {
		getOrderSingleViewEntity.orderlist = orderlist;
	}
	final List<GetOrderSingleViewOrderproductlist>? orderproductlist = jsonConvert.convertListNotNull<GetOrderSingleViewOrderproductlist>(json['orderproductlist']);
	if (orderproductlist != null) {
		getOrderSingleViewEntity.orderproductlist = orderproductlist;
	}
	return getOrderSingleViewEntity;
}

Map<String, dynamic> $GetOrderSingleViewEntityToJson(GetOrderSingleViewEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['orderlist'] =  entity.orderlist?.map((v) => v.toJson()).toList();
	data['orderproductlist'] =  entity.orderproductlist?.map((v) => v.toJson()).toList();
	return data;
}

GetOrderSingleViewOrderlist $GetOrderSingleViewOrderlistFromJson(Map<String, dynamic> json) {
	final GetOrderSingleViewOrderlist getOrderSingleViewOrderlist = GetOrderSingleViewOrderlist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		getOrderSingleViewOrderlist.id = id;
	}
	final String? orderno = jsonConvert.convert<String>(json['orderno']);
	if (orderno != null) {
		getOrderSingleViewOrderlist.orderno = orderno;
	}
	final String? distributorid = jsonConvert.convert<String>(json['distributorid']);
	if (distributorid != null) {
		getOrderSingleViewOrderlist.distributorid = distributorid;
	}
	final String? deliverydate = jsonConvert.convert<String>(json['deliverydate']);
	if (deliverydate != null) {
		getOrderSingleViewOrderlist.deliverydate = deliverydate;
	}
	final String? distributorname = jsonConvert.convert<String>(json['distributorname']);
	if (distributorname != null) {
		getOrderSingleViewOrderlist.distributorname = distributorname;
	}
	return getOrderSingleViewOrderlist;
}

Map<String, dynamic> $GetOrderSingleViewOrderlistToJson(GetOrderSingleViewOrderlist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['orderno'] = entity.orderno;
	data['distributorid'] = entity.distributorid;
	data['deliverydate'] = entity.deliverydate;
	data['distributorname'] = entity.distributorname;
	return data;
}

GetOrderSingleViewOrderproductlist $GetOrderSingleViewOrderproductlistFromJson(Map<String, dynamic> json) {
	final GetOrderSingleViewOrderproductlist getOrderSingleViewOrderproductlist = GetOrderSingleViewOrderproductlist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		getOrderSingleViewOrderproductlist.id = id;
	}
	final String? orderno = jsonConvert.convert<String>(json['orderno']);
	if (orderno != null) {
		getOrderSingleViewOrderproductlist.orderno = orderno;
	}
	final String? orderid = jsonConvert.convert<String>(json['orderid']);
	if (orderid != null) {
		getOrderSingleViewOrderproductlist.orderid = orderid;
	}
	final String? distributorid = jsonConvert.convert<String>(json['distributorid']);
	if (distributorid != null) {
		getOrderSingleViewOrderproductlist.distributorid = distributorid;
	}
	final String? artno = jsonConvert.convert<String>(json['artno']);
	if (artno != null) {
		getOrderSingleViewOrderproductlist.artno = artno;
	}
	final String? category = jsonConvert.convert<String>(json['category']);
	if (category != null) {
		getOrderSingleViewOrderproductlist.category = category;
	}
	final String? color = jsonConvert.convert<String>(json['color']);
	if (color != null) {
		getOrderSingleViewOrderproductlist.color = color;
	}
	final String? size = jsonConvert.convert<String>(json['size']);
	if (size != null) {
		getOrderSingleViewOrderproductlist.size = size;
	}
	final String? pair = jsonConvert.convert<String>(json['pair']);
	if (pair != null) {
		getOrderSingleViewOrderproductlist.pair = pair;
	}
	final String? box = jsonConvert.convert<String>(json['box']);
	if (box != null) {
		getOrderSingleViewOrderproductlist.box = box;
	}
	final String? remainingbox = jsonConvert.convert<String>(json['remainingbox']);
	if (remainingbox != null) {
		getOrderSingleViewOrderproductlist.remainingbox = remainingbox;
	}
	final String? s1 = jsonConvert.convert<String>(json['s1']);
	if (s1 != null) {
		getOrderSingleViewOrderproductlist.s1 = s1;
	}
	final String? s2 = jsonConvert.convert<String>(json['s2']);
	if (s2 != null) {
		getOrderSingleViewOrderproductlist.s2 = s2;
	}
	final String? s3 = jsonConvert.convert<String>(json['s3']);
	if (s3 != null) {
		getOrderSingleViewOrderproductlist.s3 = s3;
	}
	final String? s4 = jsonConvert.convert<String>(json['s4']);
	if (s4 != null) {
		getOrderSingleViewOrderproductlist.s4 = s4;
	}
	final String? s5 = jsonConvert.convert<String>(json['s5']);
	if (s5 != null) {
		getOrderSingleViewOrderproductlist.s5 = s5;
	}
	final String? s6 = jsonConvert.convert<String>(json['s6']);
	if (s6 != null) {
		getOrderSingleViewOrderproductlist.s6 = s6;
	}
	final String? s7 = jsonConvert.convert<String>(json['s7']);
	if (s7 != null) {
		getOrderSingleViewOrderproductlist.s7 = s7;
	}
	final String? s8 = jsonConvert.convert<String>(json['s8']);
	if (s8 != null) {
		getOrderSingleViewOrderproductlist.s8 = s8;
	}
	final String? s9 = jsonConvert.convert<String>(json['s9']);
	if (s9 != null) {
		getOrderSingleViewOrderproductlist.s9 = s9;
	}
	final String? s10 = jsonConvert.convert<String>(json['s10']);
	if (s10 != null) {
		getOrderSingleViewOrderproductlist.s10 = s10;
	}
	final String? s11 = jsonConvert.convert<String>(json['s11']);
	if (s11 != null) {
		getOrderSingleViewOrderproductlist.s11 = s11;
	}
	final String? s12 = jsonConvert.convert<String>(json['s12']);
	if (s12 != null) {
		getOrderSingleViewOrderproductlist.s12 = s12;
	}
	final String? s13 = jsonConvert.convert<String>(json['s13']);
	if (s13 != null) {
		getOrderSingleViewOrderproductlist.s13 = s13;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		getOrderSingleViewOrderproductlist.status = status;
	}
	final String? ordertakenby = jsonConvert.convert<String>(json['ordertakenby']);
	if (ordertakenby != null) {
		getOrderSingleViewOrderproductlist.ordertakenby = ordertakenby;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		getOrderSingleViewOrderproductlist.createddate = createddate;
	}
	final String? distributorname = jsonConvert.convert<String>(json['distributorname']);
	if (distributorname != null) {
		getOrderSingleViewOrderproductlist.distributorname = distributorname;
	}
	final String? artnoname = jsonConvert.convert<String>(json['artnoname']);
	if (artnoname != null) {
		getOrderSingleViewOrderproductlist.artnoname = artnoname;
	}
	final String? categoryname = jsonConvert.convert<String>(json['categoryname']);
	if (categoryname != null) {
		getOrderSingleViewOrderproductlist.categoryname = categoryname;
	}
	final String? colorname = jsonConvert.convert<String>(json['colorname']);
	if (colorname != null) {
		getOrderSingleViewOrderproductlist.colorname = colorname;
	}
	final String? sizename = jsonConvert.convert<String>(json['sizename']);
	if (sizename != null) {
		getOrderSingleViewOrderproductlist.sizename = sizename;
	}
	return getOrderSingleViewOrderproductlist;
}

Map<String, dynamic> $GetOrderSingleViewOrderproductlistToJson(GetOrderSingleViewOrderproductlist entity) {
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
	data['distributorname'] = entity.distributorname;
	data['artnoname'] = entity.artnoname;
	data['categoryname'] = entity.categoryname;
	data['colorname'] = entity.colorname;
	data['sizename'] = entity.sizename;
	return data;
}