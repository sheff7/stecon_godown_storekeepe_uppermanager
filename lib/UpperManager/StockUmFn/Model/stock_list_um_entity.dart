import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/stock_list_um_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class StockListUmEntity {

	String? response;
	List<StockListUmStocklist>? stocklist;
  
  StockListUmEntity();

  factory StockListUmEntity.fromJson(Map<String, dynamic> json) => $StockListUmEntityFromJson(json);

  Map<String, dynamic> toJson() => $StockListUmEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class StockListUmStocklist {

	String? productid;
	String? stockstatus;
	int? id;
	String? artno;
	String? category;
	String? color;
	String? boxpair;
	String? comments;
	String? status;
	String? createddate;
	String? coverimageurl;
	String? price;
	String? categoryname;
	String? colorname;
  
  StockListUmStocklist();

  factory StockListUmStocklist.fromJson(Map<String, dynamic> json) => $StockListUmStocklistFromJson(json);

  Map<String, dynamic> toJson() => $StockListUmStocklistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}