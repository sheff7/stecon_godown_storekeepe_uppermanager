import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/order_list_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class OrderListEntity {

	String? response;
	List<OrderListOrderlist>? orderlist;
  
  OrderListEntity();

  factory OrderListEntity.fromJson(Map<String, dynamic> json) => $OrderListEntityFromJson(json);

  Map<String, dynamic> toJson() => $OrderListEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class OrderListOrderlist {

	int? id;
	String? orderno;
	String? areacode;
	String? distributorname;
	int? distributorid;
	String? representativename;
	String? representativeid;
	String? ordertakenby;
	String? deliverydate;
	String? status;
	String? createddate;
	String? ordercancelledby;
  
  OrderListOrderlist();

  factory OrderListOrderlist.fromJson(Map<String, dynamic> json) => $OrderListOrderlistFromJson(json);

  Map<String, dynamic> toJson() => $OrderListOrderlistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}