import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/material_stock_single_view_sk_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class MaterialStockSingleViewSkEntity {

	String? response;
	List<MaterialStockSingleViewSkStocklist>? stocklist;
  
  MaterialStockSingleViewSkEntity();

  factory MaterialStockSingleViewSkEntity.fromJson(Map<String, dynamic> json) => $MaterialStockSingleViewSkEntityFromJson(json);

  Map<String, dynamic> toJson() => $MaterialStockSingleViewSkEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class MaterialStockSingleViewSkStocklist {

	int? id;
	String? itemid;
	String? categoy;
	String? companyid;
	String? type;
	String? stock;
	String? laststockupdateddate;
	dynamic laststocktakendate;
	String? createddate;
	String? status;
	String? itemname;
	String? companyname;
  
  MaterialStockSingleViewSkStocklist();

  factory MaterialStockSingleViewSkStocklist.fromJson(Map<String, dynamic> json) => $MaterialStockSingleViewSkStocklistFromJson(json);

  Map<String, dynamic> toJson() => $MaterialStockSingleViewSkStocklistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}