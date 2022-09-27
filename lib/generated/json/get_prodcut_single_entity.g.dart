import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UppeOrder/Model/get_prodcut_single_entity.dart';

GetProdcutSingleEntity $GetProdcutSingleEntityFromJson(Map<String, dynamic> json) {
	final GetProdcutSingleEntity getProdcutSingleEntity = GetProdcutSingleEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		getProdcutSingleEntity.response = response;
	}
	final List<GetProdcutSingleOrderproductlist>? orderproductlist = jsonConvert.convertListNotNull<GetProdcutSingleOrderproductlist>(json['orderproductlist']);
	if (orderproductlist != null) {
		getProdcutSingleEntity.orderproductlist = orderproductlist;
	}
	return getProdcutSingleEntity;
}

Map<String, dynamic> $GetProdcutSingleEntityToJson(GetProdcutSingleEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['orderproductlist'] =  entity.orderproductlist?.map((v) => v.toJson()).toList();
	return data;
}

GetProdcutSingleOrderproductlist $GetProdcutSingleOrderproductlistFromJson(Map<String, dynamic> json) {
	final GetProdcutSingleOrderproductlist getProdcutSingleOrderproductlist = GetProdcutSingleOrderproductlist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		getProdcutSingleOrderproductlist.id = id;
	}
	final String? orderno = jsonConvert.convert<String>(json['orderno']);
	if (orderno != null) {
		getProdcutSingleOrderproductlist.orderno = orderno;
	}
	final String? orderid = jsonConvert.convert<String>(json['orderid']);
	if (orderid != null) {
		getProdcutSingleOrderproductlist.orderid = orderid;
	}
	final String? distributorid = jsonConvert.convert<String>(json['distributorid']);
	if (distributorid != null) {
		getProdcutSingleOrderproductlist.distributorid = distributorid;
	}
	final String? artno = jsonConvert.convert<String>(json['artno']);
	if (artno != null) {
		getProdcutSingleOrderproductlist.artno = artno;
	}
	final String? category = jsonConvert.convert<String>(json['category']);
	if (category != null) {
		getProdcutSingleOrderproductlist.category = category;
	}
	final String? color = jsonConvert.convert<String>(json['color']);
	if (color != null) {
		getProdcutSingleOrderproductlist.color = color;
	}
	final String? size = jsonConvert.convert<String>(json['size']);
	if (size != null) {
		getProdcutSingleOrderproductlist.size = size;
	}
	final String? pair = jsonConvert.convert<String>(json['pair']);
	if (pair != null) {
		getProdcutSingleOrderproductlist.pair = pair;
	}
	final String? box = jsonConvert.convert<String>(json['box']);
	if (box != null) {
		getProdcutSingleOrderproductlist.box = box;
	}
	final String? remainingbox = jsonConvert.convert<String>(json['remainingbox']);
	if (remainingbox != null) {
		getProdcutSingleOrderproductlist.remainingbox = remainingbox;
	}
	final String? s1 = jsonConvert.convert<String>(json['s1']);
	if (s1 != null) {
		getProdcutSingleOrderproductlist.s1 = s1;
	}
	final String? s2 = jsonConvert.convert<String>(json['s2']);
	if (s2 != null) {
		getProdcutSingleOrderproductlist.s2 = s2;
	}
	final String? s3 = jsonConvert.convert<String>(json['s3']);
	if (s3 != null) {
		getProdcutSingleOrderproductlist.s3 = s3;
	}
	final String? s4 = jsonConvert.convert<String>(json['s4']);
	if (s4 != null) {
		getProdcutSingleOrderproductlist.s4 = s4;
	}
	final String? s5 = jsonConvert.convert<String>(json['s5']);
	if (s5 != null) {
		getProdcutSingleOrderproductlist.s5 = s5;
	}
	final String? s6 = jsonConvert.convert<String>(json['s6']);
	if (s6 != null) {
		getProdcutSingleOrderproductlist.s6 = s6;
	}
	final String? s7 = jsonConvert.convert<String>(json['s7']);
	if (s7 != null) {
		getProdcutSingleOrderproductlist.s7 = s7;
	}
	final String? s8 = jsonConvert.convert<String>(json['s8']);
	if (s8 != null) {
		getProdcutSingleOrderproductlist.s8 = s8;
	}
	final String? s9 = jsonConvert.convert<String>(json['s9']);
	if (s9 != null) {
		getProdcutSingleOrderproductlist.s9 = s9;
	}
	final String? s10 = jsonConvert.convert<String>(json['s10']);
	if (s10 != null) {
		getProdcutSingleOrderproductlist.s10 = s10;
	}
	final String? s11 = jsonConvert.convert<String>(json['s11']);
	if (s11 != null) {
		getProdcutSingleOrderproductlist.s11 = s11;
	}
	final String? s12 = jsonConvert.convert<String>(json['s12']);
	if (s12 != null) {
		getProdcutSingleOrderproductlist.s12 = s12;
	}
	final String? s13 = jsonConvert.convert<String>(json['s13']);
	if (s13 != null) {
		getProdcutSingleOrderproductlist.s13 = s13;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		getProdcutSingleOrderproductlist.status = status;
	}
	final String? ordertakenby = jsonConvert.convert<String>(json['ordertakenby']);
	if (ordertakenby != null) {
		getProdcutSingleOrderproductlist.ordertakenby = ordertakenby;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		getProdcutSingleOrderproductlist.createddate = createddate;
	}
	return getProdcutSingleOrderproductlist;
}

Map<String, dynamic> $GetProdcutSingleOrderproductlistToJson(GetProdcutSingleOrderproductlist entity) {
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