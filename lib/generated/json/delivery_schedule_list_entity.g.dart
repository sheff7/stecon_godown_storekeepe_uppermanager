import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/Godown/DeliverySchedulefn/Model/delivery_schedule_list_entity.dart';

DeliveryScheduleListEntity $DeliveryScheduleListEntityFromJson(Map<String, dynamic> json) {
	final DeliveryScheduleListEntity deliveryScheduleListEntity = DeliveryScheduleListEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		deliveryScheduleListEntity.response = response;
	}
	final List<DeliveryScheduleListDeliveryschedulelist>? deliveryschedulelist = jsonConvert.convertListNotNull<DeliveryScheduleListDeliveryschedulelist>(json['deliveryschedulelist']);
	if (deliveryschedulelist != null) {
		deliveryScheduleListEntity.deliveryschedulelist = deliveryschedulelist;
	}
	return deliveryScheduleListEntity;
}

Map<String, dynamic> $DeliveryScheduleListEntityToJson(DeliveryScheduleListEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['deliveryschedulelist'] =  entity.deliveryschedulelist?.map((v) => v.toJson()).toList();
	return data;
}

DeliveryScheduleListDeliveryschedulelist $DeliveryScheduleListDeliveryschedulelistFromJson(Map<String, dynamic> json) {
	final DeliveryScheduleListDeliveryschedulelist deliveryScheduleListDeliveryschedulelist = DeliveryScheduleListDeliveryschedulelist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		deliveryScheduleListDeliveryschedulelist.id = id;
	}
	final String? deliverydate = jsonConvert.convert<String>(json['deliverydate']);
	if (deliverydate != null) {
		deliveryScheduleListDeliveryschedulelist.deliverydate = deliverydate;
	}
	final String? orderno = jsonConvert.convert<String>(json['orderno']);
	if (orderno != null) {
		deliveryScheduleListDeliveryschedulelist.orderno = orderno;
	}
	final dynamic deliverybox = jsonConvert.convert<dynamic>(json['deliverybox']);
	if (deliverybox != null) {
		deliveryScheduleListDeliveryschedulelist.deliverybox = deliverybox;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		deliveryScheduleListDeliveryschedulelist.status = status;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		deliveryScheduleListDeliveryschedulelist.createddate = createddate;
	}
	final String? notes = jsonConvert.convert<String>(json['notes']);
	if (notes != null) {
		deliveryScheduleListDeliveryschedulelist.notes = notes;
	}
	final String? priority = jsonConvert.convert<String>(json['priority']);
	if (priority != null) {
		deliveryScheduleListDeliveryschedulelist.priority = priority;
	}
	final String? distributorname = jsonConvert.convert<String>(json['distributorname']);
	if (distributorname != null) {
		deliveryScheduleListDeliveryschedulelist.distributorname = distributorname;
	}
	final String? repname = jsonConvert.convert<String>(json['repname']);
	if (repname != null) {
		deliveryScheduleListDeliveryschedulelist.repname = repname;
	}
	final String? representativename = jsonConvert.convert<String>(json['representativename']);
	if (representativename != null) {
		deliveryScheduleListDeliveryschedulelist.representativename = representativename;
	}
	final int? rn = jsonConvert.convert<int>(json['rn']);
	if (rn != null) {
		deliveryScheduleListDeliveryschedulelist.rn = rn;
	}
	final String? areacode = jsonConvert.convert<String>(json['areacode']);
	if (areacode != null) {
		deliveryScheduleListDeliveryschedulelist.areacode = areacode;
	}
	return deliveryScheduleListDeliveryschedulelist;
}

Map<String, dynamic> $DeliveryScheduleListDeliveryschedulelistToJson(DeliveryScheduleListDeliveryschedulelist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['deliverydate'] = entity.deliverydate;
	data['orderno'] = entity.orderno;
	data['deliverybox'] = entity.deliverybox;
	data['status'] = entity.status;
	data['createddate'] = entity.createddate;
	data['notes'] = entity.notes;
	data['priority'] = entity.priority;
	data['distributorname'] = entity.distributorname;
	data['repname'] = entity.repname;
	data['representativename'] = entity.representativename;
	data['rn'] = entity.rn;
	data['areacode'] = entity.areacode;
	return data;
}