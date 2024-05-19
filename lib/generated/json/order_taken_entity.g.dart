import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/Godown/OrderTaken/Model/order_taken_entity.dart';

OrderTakenEntity $OrderTakenEntityFromJson(Map<String, dynamic> json) {
	final OrderTakenEntity orderTakenEntity = OrderTakenEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		orderTakenEntity.response = response;
	}
	final List<OrderTakenDeliveryschedule>? deliveryschedule = jsonConvert.convertListNotNull<OrderTakenDeliveryschedule>(json['deliveryschedule']);
	if (deliveryschedule != null) {
		orderTakenEntity.deliveryschedule = deliveryschedule;
	}
	return orderTakenEntity;
}

Map<String, dynamic> $OrderTakenEntityToJson(OrderTakenEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['deliveryschedule'] =  entity.deliveryschedule?.map((v) => v.toJson()).toList();
	return data;
}

OrderTakenDeliveryschedule $OrderTakenDeliveryscheduleFromJson(Map<String, dynamic> json) {
	final OrderTakenDeliveryschedule orderTakenDeliveryschedule = OrderTakenDeliveryschedule();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		orderTakenDeliveryschedule.id = id;
	}
	final String? deliveryid = jsonConvert.convert<String>(json['deliveryid']);
	if (deliveryid != null) {
		orderTakenDeliveryschedule.deliveryid = deliveryid;
	}
	final String? disid = jsonConvert.convert<String>(json['disid']);
	if (disid != null) {
		orderTakenDeliveryschedule.disid = disid;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		orderTakenDeliveryschedule.status = status;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		orderTakenDeliveryschedule.createddate = createddate;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		orderTakenDeliveryschedule.name = name;
	}
	return orderTakenDeliveryschedule;
}

Map<String, dynamic> $OrderTakenDeliveryscheduleToJson(OrderTakenDeliveryschedule entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['deliveryid'] = entity.deliveryid;
	data['disid'] = entity.disid;
	data['status'] = entity.status;
	data['createddate'] = entity.createddate;
	data['name'] = entity.name;
	return data;
}