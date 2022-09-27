import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/get_order_single_view_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class GetOrderSingleViewEntity {

	String? response;
	List<GetOrderSingleViewOrderlist>? orderlist;
	List<GetOrderSingleViewOrderproductlist>? orderproductlist;
  
  GetOrderSingleViewEntity();

  factory GetOrderSingleViewEntity.fromJson(Map<String, dynamic> json) => $GetOrderSingleViewEntityFromJson(json);

  Map<String, dynamic> toJson() => $GetOrderSingleViewEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GetOrderSingleViewOrderlist {

	int? id;
	String? orderno;
	String? distributorid;
	String? deliverydate;
	String? distributorname;
  
  GetOrderSingleViewOrderlist();

  factory GetOrderSingleViewOrderlist.fromJson(Map<String, dynamic> json) => $GetOrderSingleViewOrderlistFromJson(json);

  Map<String, dynamic> toJson() => $GetOrderSingleViewOrderlistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GetOrderSingleViewOrderproductlist {

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
	String? distributorname;
	String? artnoname;
	String? categoryname;
	String? colorname;
	String? sizename;
  
  GetOrderSingleViewOrderproductlist();

  factory GetOrderSingleViewOrderproductlist.fromJson(Map<String, dynamic> json) => $GetOrderSingleViewOrderproductlistFromJson(json);

  Map<String, dynamic> toJson() => $GetOrderSingleViewOrderproductlistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}