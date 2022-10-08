import 'dart:convert';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/view_orders_list_view_entity.g.dart';

@JsonSerializable()
class ViewOrdersListViewEntity {

	String? response;
	List<ViewOrdersListViewOrderlist>? orderlist;
  
  ViewOrdersListViewEntity();

  factory ViewOrdersListViewEntity.fromJson(Map<String, dynamic> json) => $ViewOrdersListViewEntityFromJson(json);

  Map<String, dynamic> toJson() => $ViewOrdersListViewEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ViewOrdersListViewOrderlist {

	int? id;
	String? orderno;
	String? areacode;
	String? distributorname;
	String? distributorid;
	String? representativename;
	String? representativeid;
	String? ordertakenby;
	String? deliverydate;
	String? status;
	String? createddate;
	dynamic ordercancelledby;
  
  ViewOrdersListViewOrderlist();

  factory ViewOrdersListViewOrderlist.fromJson(Map<String, dynamic> json) => $ViewOrdersListViewOrderlistFromJson(json);

  Map<String, dynamic> toJson() => $ViewOrdersListViewOrderlistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}