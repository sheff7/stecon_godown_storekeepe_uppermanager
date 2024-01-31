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

	DeliveryScheduleListEntity copyWith({String? response, List<DeliveryScheduleListDeliveryschedulelist>? deliveryschedulelist}) {
		return DeliveryScheduleListEntity()
			..response= response ?? this.response
			..deliveryschedulelist= deliveryschedulelist ?? this.deliveryschedulelist;
	}

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
	String? notes;
	String? priority;
	String? distributorname;
	String? repname;
	String? representativename;
	int? rn;
	String? areacode;

	DeliveryScheduleListDeliveryschedulelist();

	factory DeliveryScheduleListDeliveryschedulelist.fromJson(Map<String, dynamic> json) => $DeliveryScheduleListDeliveryschedulelistFromJson(json);

	Map<String, dynamic> toJson() => $DeliveryScheduleListDeliveryschedulelistToJson(this);

	DeliveryScheduleListDeliveryschedulelist copyWith({int? id, String? deliverydate, String? orderno, dynamic deliverybox, String? status, String? createddate, String? notes, String? priority, String? distributorname, String? repname, String? representativename, int? rn, String? areacode}) {
		return DeliveryScheduleListDeliveryschedulelist()
			..id= id ?? this.id
			..deliverydate= deliverydate ?? this.deliverydate
			..orderno= orderno ?? this.orderno
			..deliverybox= deliverybox ?? this.deliverybox
			..status= status ?? this.status
			..createddate= createddate ?? this.createddate
			..notes= notes ?? this.notes
			..priority= priority ?? this.priority
			..distributorname= distributorname ?? this.distributorname
			..repname= repname ?? this.repname
			..representativename= representativename ?? this.representativename
			..rn= rn ?? this.rn
			..areacode= areacode ?? this.areacode;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}