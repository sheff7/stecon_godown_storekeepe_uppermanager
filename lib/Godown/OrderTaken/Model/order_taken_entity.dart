import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/order_taken_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class OrderTakenEntity {
	String? response;
	List<OrderTakenDeliveryschedule>? deliveryschedule;

	OrderTakenEntity();

	factory OrderTakenEntity.fromJson(Map<String, dynamic> json) => $OrderTakenEntityFromJson(json);

	Map<String, dynamic> toJson() => $OrderTakenEntityToJson(this);

	OrderTakenEntity copyWith({String? response, List<OrderTakenDeliveryschedule>? deliveryschedule}) {
		return OrderTakenEntity()
			..response= response ?? this.response
			..deliveryschedule= deliveryschedule ?? this.deliveryschedule;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class OrderTakenDeliveryschedule {
	int? id;
	String? deliveryid;
	String? disid;
	String? status;
	String? createddate;
	String? name;

	OrderTakenDeliveryschedule();

	factory OrderTakenDeliveryschedule.fromJson(Map<String, dynamic> json) => $OrderTakenDeliveryscheduleFromJson(json);

	Map<String, dynamic> toJson() => $OrderTakenDeliveryscheduleToJson(this);

	OrderTakenDeliveryschedule copyWith({int? id, String? deliveryid, String? disid, String? status, String? createddate, String? name}) {
		return OrderTakenDeliveryschedule()
			..id= id ?? this.id
			..deliveryid= deliveryid ?? this.deliveryid
			..disid= disid ?? this.disid
			..status= status ?? this.status
			..createddate= createddate ?? this.createddate
			..name= name ?? this.name;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}