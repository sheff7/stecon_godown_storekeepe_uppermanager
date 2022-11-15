import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/stock_list_gd_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class StockListGdEntity {

	String? response;
	List<StockListGdStocklist>? stocklist;
  
  StockListGdEntity();

  factory StockListGdEntity.fromJson(Map<String, dynamic> json) => $StockListGdEntityFromJson(json);

  Map<String, dynamic> toJson() => $StockListGdEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class StockListGdStocklist {

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
  
  StockListGdStocklist();

  factory StockListGdStocklist.fromJson(Map<String, dynamic> json) => $StockListGdStocklistFromJson(json);

  Map<String, dynamic> toJson() => $StockListGdStocklistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}