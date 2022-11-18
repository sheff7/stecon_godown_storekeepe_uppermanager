import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/latest_delivery_schedule_limit_list_gd_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class LatestDeliveryScheduleLimitListGdEntity {

	String? response;
	List<LatestDeliveryScheduleLimitListGdDeliveryschedulelist>? deliveryschedulelist;
  
  LatestDeliveryScheduleLimitListGdEntity();

  factory LatestDeliveryScheduleLimitListGdEntity.fromJson(Map<String, dynamic> json) => $LatestDeliveryScheduleLimitListGdEntityFromJson(json);

  Map<String, dynamic> toJson() => $LatestDeliveryScheduleLimitListGdEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class LatestDeliveryScheduleLimitListGdDeliveryschedulelist {

	int? id;
	String? deliverydate;
	String? orderno;
	dynamic deliverybox;
	String? status;
	String? createddate;
	String? distributorname;
	String? areacode;
  
  LatestDeliveryScheduleLimitListGdDeliveryschedulelist();

  factory LatestDeliveryScheduleLimitListGdDeliveryschedulelist.fromJson(Map<String, dynamic> json) => $LatestDeliveryScheduleLimitListGdDeliveryschedulelistFromJson(json);

  Map<String, dynamic> toJson() => $LatestDeliveryScheduleLimitListGdDeliveryschedulelistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}