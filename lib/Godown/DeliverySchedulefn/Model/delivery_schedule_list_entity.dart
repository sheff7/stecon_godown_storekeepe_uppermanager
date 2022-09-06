import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/delivery_schedule_list_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class DeliveryScheduleListEntity {

	String? response;
	List<DeliveryScheduleListDeliveryschedulelist>? deliveryschedulelist;
  
  DeliveryScheduleListEntity();

  factory DeliveryScheduleListEntity.fromJson(Map<String, dynamic> json) => $DeliveryScheduleListEntityFromJson(json);

  Map<String, dynamic> toJson() => $DeliveryScheduleListEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class DeliveryScheduleListDeliveryschedulelist {

	int? id;
	String? deliverydate;
	String? orderno;
	dynamic deliverybox;
	String? status;
	String? createddate;
	String? distributorname;
  String? areacode;
  
  DeliveryScheduleListDeliveryschedulelist();

  factory DeliveryScheduleListDeliveryschedulelist.fromJson(Map<String, dynamic> json) => $DeliveryScheduleListDeliveryschedulelistFromJson(json);

  Map<String, dynamic> toJson() => $DeliveryScheduleListDeliveryschedulelistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}