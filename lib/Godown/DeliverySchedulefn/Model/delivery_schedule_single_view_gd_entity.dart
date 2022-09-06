import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/delivery_schedule_single_view_gd_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class DeliveryScheduleSingleViewGdEntity {

	String? response;
	List<DeliveryScheduleSingleViewGdDeliveryschedule>? deliveryschedule;
  
  DeliveryScheduleSingleViewGdEntity();

  factory DeliveryScheduleSingleViewGdEntity.fromJson(Map<String, dynamic> json) => $DeliveryScheduleSingleViewGdEntityFromJson(json);

  Map<String, dynamic> toJson() => $DeliveryScheduleSingleViewGdEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class DeliveryScheduleSingleViewGdDeliveryschedule {

	int? deliveryproductsid;
	String? dateofdelivery;
	String? deliverystatus;
	String? deliverybox;
	String? did;
	String? productid;
	int? id;
	String? orderno;
	String? orderid;
	String? distributorid;
	String? artno;
	String? category;
	String? color;
	String? size;
	String? pair;
	String? box;
	String? remainingbox;
	String? s1;
	String? s2;
	String? s3;
	String? s4;
	String? s5;
	String? s6;
	String? s7;
	String? s8;
	String? s9;
	String? s10;
	String? s11;
	String? s12;
	String? s13;
	String? status;
	String? ordertakenby;
	String? createddate;
	String? sizename;
	String? customername;
	String? areacode;
	String? ordereddate;
	String? productname;
	String? categoryname;
	String? colorname;
  
  DeliveryScheduleSingleViewGdDeliveryschedule();

  factory DeliveryScheduleSingleViewGdDeliveryschedule.fromJson(Map<String, dynamic> json) => $DeliveryScheduleSingleViewGdDeliveryscheduleFromJson(json);

  Map<String, dynamic> toJson() => $DeliveryScheduleSingleViewGdDeliveryscheduleToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}