import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/Godown/DeliverySchedulefn/Model/update_order_entity.dart';

UpdateOrderEntity $UpdateOrderEntityFromJson(Map<String, dynamic> json) {
	final UpdateOrderEntity updateOrderEntity = UpdateOrderEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		updateOrderEntity.response = response;
	}
	final List<UpdateOrderList>? list = jsonConvert.convertListNotNull<UpdateOrderList>(json['list']);
	if (list != null) {
		updateOrderEntity.list = list;
	}
	return updateOrderEntity;
}

Map<String, dynamic> $UpdateOrderEntityToJson(UpdateOrderEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['list'] =  entity.list?.map((v) => v.toJson()).toList();
	return data;
}

UpdateOrderList $UpdateOrderListFromJson(Map<String, dynamic> json) {
	final UpdateOrderList updateOrderList = UpdateOrderList();
	final String? orderid = jsonConvert.convert<String>(json['orderid']);
	if (orderid != null) {
		updateOrderList.orderid = orderid;
	}
	final String? orderno = jsonConvert.convert<String>(json['orderno']);
	if (orderno != null) {
		updateOrderList.orderno = orderno;
	}
	final String? distributorid = jsonConvert.convert<String>(json['distributorid']);
	if (distributorid != null) {
		updateOrderList.distributorid = distributorid;
	}
	final String? productid = jsonConvert.convert<String>(json['productid']);
	if (productid != null) {
		updateOrderList.productid = productid;
	}
	final String? deliverybox = jsonConvert.convert<String>(json['deliverybox']);
	if (deliverybox != null) {
		updateOrderList.deliverybox = deliverybox;
	}
	return updateOrderList;
}

Map<String, dynamic> $UpdateOrderListToJson(UpdateOrderList entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['orderid'] = entity.orderid;
	data['orderno'] = entity.orderno;
	data['distributorid'] = entity.distributorid;
	data['productid'] = entity.productid;
	data['deliverybox'] = entity.deliverybox;
	return data;
}