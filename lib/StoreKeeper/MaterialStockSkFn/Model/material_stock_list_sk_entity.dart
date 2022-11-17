import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/material_stock_list_sk_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class MaterialStockListSkEntity {

	String? response;
	List<MaterialStockListSkStocklist>? stocklist;
  
  MaterialStockListSkEntity();

  factory MaterialStockListSkEntity.fromJson(Map<String, dynamic> json) => $MaterialStockListSkEntityFromJson(json);

  Map<String, dynamic> toJson() => $MaterialStockListSkEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class MaterialStockListSkStocklist {

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
  
  MaterialStockListSkStocklist();

  factory MaterialStockListSkStocklist.fromJson(Map<String, dynamic> json) => $MaterialStockListSkStocklistFromJson(json);

  Map<String, dynamic> toJson() => $MaterialStockListSkStocklistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}