import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/Godown/HomeGD/model/latest_delivery_schedule_limit_list_gd_entity.dart';

LatestDeliveryScheduleLimitListGdEntity $LatestDeliveryScheduleLimitListGdEntityFromJson(Map<String, dynamic> json) {
	final LatestDeliveryScheduleLimitListGdEntity latestDeliveryScheduleLimitListGdEntity = LatestDeliveryScheduleLimitListGdEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		latestDeliveryScheduleLimitListGdEntity.response = response;
	}
	final List<LatestDeliveryScheduleLimitListGdDeliveryschedulelist>? deliveryschedulelist = jsonConvert.convertListNotNull<LatestDeliveryScheduleLimitListGdDeliveryschedulelist>(json['deliveryschedulelist']);
	if (deliveryschedulelist != null) {
		latestDeliveryScheduleLimitListGdEntity.deliveryschedulelist = deliveryschedulelist;
	}
	return latestDeliveryScheduleLimitListGdEntity;
}

Map<String, dynamic> $LatestDeliveryScheduleLimitListGdEntityToJson(LatestDeliveryScheduleLimitListGdEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['deliveryschedulelist'] =  entity.deliveryschedulelist?.map((v) => v.toJson()).toList();
	return data;
}

LatestDeliveryScheduleLimitListGdDeliveryschedulelist $LatestDeliveryScheduleLimitListGdDeliveryschedulelistFromJson(Map<String, dynamic> json) {
	final LatestDeliveryScheduleLimitListGdDeliveryschedulelist latestDeliveryScheduleLimitListGdDeliveryschedulelist = LatestDeliveryScheduleLimitListGdDeliveryschedulelist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		latestDeliveryScheduleLimitListGdDeliveryschedulelist.id = id;
	}
	final String? deliverydate = jsonConvert.convert<String>(json['deliverydate']);
	if (deliverydate != null) {
		latestDeliveryScheduleLimitListGdDeliveryschedulelist.deliverydate = deliverydate;
	}
	final String? orderno = jsonConvert.convert<String>(json['orderno']);
	if (orderno != null) {
		latestDeliveryScheduleLimitListGdDeliveryschedulelist.orderno = orderno;
	}
	final dynamic? deliverybox = jsonConvert.convert<dynamic>(json['deliverybox']);
	if (deliverybox != null) {
		latestDeliveryScheduleLimitListGdDeliveryschedulelist.deliverybox = deliverybox;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		latestDeliveryScheduleLimitListGdDeliveryschedulelist.status = status;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		latestDeliveryScheduleLimitListGdDeliveryschedulelist.createddate = createddate;
	}
	final String? distributorname = jsonConvert.convert<String>(json['distributorname']);
	if (distributorname != null) {
		latestDeliveryScheduleLimitListGdDeliveryschedulelist.distributorname = distributorname;
	}
	final String? areacode = jsonConvert.convert<String>(json['areacode']);
	if (areacode != null) {
		latestDeliveryScheduleLimitListGdDeliveryschedulelist.areacode = areacode;
	}
	return latestDeliveryScheduleLimitListGdDeliveryschedulelist;
}

Map<String, dynamic> $LatestDeliveryScheduleLimitListGdDeliveryschedulelistToJson(LatestDeliveryScheduleLimitListGdDeliveryschedulelist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['deliverydate'] = entity.deliverydate;
	data['orderno'] = entity.orderno;
	data['deliverybox'] = entity.deliverybox;
	data['status'] = entity.status;
	data['createddate'] = entity.createddate;
	data['distributorname'] = entity.distributorname;
	data['areacode'] = entity.areacode;
	return data;
}