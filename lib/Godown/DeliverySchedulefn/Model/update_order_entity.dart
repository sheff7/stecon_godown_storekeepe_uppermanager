import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/update_order_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class UpdateOrderEntity {

	String? response;
	List<UpdateOrderList>? list;
  
  UpdateOrderEntity();

  factory UpdateOrderEntity.fromJson(Map<String, dynamic> json) => $UpdateOrderEntityFromJson(json);

  Map<String, dynamic> toJson() => $UpdateOrderEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class UpdateOrderList {

	String? orderid;
	String? orderno;
	String? distributorid;
	String? productid;
	String? deliverybox;
  
  UpdateOrderList();

  factory UpdateOrderList.fromJson(Map<String, dynamic> json) => $UpdateOrderListFromJson(json);

  Map<String, dynamic> toJson() => $UpdateOrderListToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}