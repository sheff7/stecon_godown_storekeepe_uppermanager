import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/product_single_view_rep_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class ProductSingleViewRepEntity {

	String? response;
	List<ProductSingleViewRepProductlist>? productlist;
	List<ProductSingleViewRepProductsizelist>? productsizelist;
	List<dynamic>? productimagelis;
	List<ProductSingleViewRepStock>? stock;
  
  ProductSingleViewRepEntity();

  factory ProductSingleViewRepEntity.fromJson(Map<String, dynamic> json) => $ProductSingleViewRepEntityFromJson(json);

  Map<String, dynamic> toJson() => $ProductSingleViewRepEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ProductSingleViewRepProductlist {

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
  
  ProductSingleViewRepProductlist();

  factory ProductSingleViewRepProductlist.fromJson(Map<String, dynamic> json) => $ProductSingleViewRepProductlistFromJson(json);

  Map<String, dynamic> toJson() => $ProductSingleViewRepProductlistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ProductSingleViewRepProductsizelist {

	int? id;
	String? productid;
	String? artno;
	String? size;
	String? status;
	String? createddate;
	String? sizename;
  
  ProductSingleViewRepProductsizelist();

  factory ProductSingleViewRepProductsizelist.fromJson(Map<String, dynamic> json) => $ProductSingleViewRepProductsizelistFromJson(json);

  Map<String, dynamic> toJson() => $ProductSingleViewRepProductsizelistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ProductSingleViewRepStock {

	int? id;
	String? productid;
	String? categoryid;
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
  
  ProductSingleViewRepStock();

  factory ProductSingleViewRepStock.fromJson(Map<String, dynamic> json) => $ProductSingleViewRepStockFromJson(json);

  Map<String, dynamic> toJson() => $ProductSingleViewRepStockToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}