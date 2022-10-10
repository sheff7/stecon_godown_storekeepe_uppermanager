import 'dart:convert';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/orders_single_view_entity.g.dart';

@JsonSerializable()
class OrdersSingleViewEntity {

	String? response;
	List<OrdersSingleViewOrderlist>? orderlist;
  
  OrdersSingleViewEntity();

  factory OrdersSingleViewEntity.fromJson(Map<String, dynamic> json) => $OrdersSingleViewEntityFromJson(json);

  Map<String, dynamic> toJson() => $OrdersSingleViewEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class OrdersSingleViewOrderlist {

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
  
  OrdersSingleViewOrderlist();

  factory OrdersSingleViewOrderlist.fromJson(Map<String, dynamic> json) => $OrdersSingleViewOrderlistFromJson(json);

  Map<String, dynamic> toJson() => $OrdersSingleViewOrderlistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}