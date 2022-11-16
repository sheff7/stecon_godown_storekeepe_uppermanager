import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/stock_single_view_um_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class StockSingleViewUmEntity {

	String? response;
	List<StockSingleViewUmStocklist>? stocklist;
  
  StockSingleViewUmEntity();

  factory StockSingleViewUmEntity.fromJson(Map<String, dynamic> json) => $StockSingleViewUmEntityFromJson(json);

  Map<String, dynamic> toJson() => $StockSingleViewUmEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class StockSingleViewUmStocklist {

	int? id;
	String? productid;
	dynamic categoryid;
	String? type;
	String? status;
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
	String? laststockupdateddate;
	dynamic laststocktakendate;
	String? createddate;
	String? stockstatus;
	String? artno;
	String? category;
	String? color;
	String? boxpair;
	String? comments;
	String? coverimageurl;
	String? price;
	String? categoryname;
	String? colorname;
  
  StockSingleViewUmStocklist();

  factory StockSingleViewUmStocklist.fromJson(Map<String, dynamic> json) => $StockSingleViewUmStocklistFromJson(json);

  Map<String, dynamic> toJson() => $StockSingleViewUmStocklistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}