import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/get_prodcut_single_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class GetProdcutSingleEntity {

	String? response;
	List<GetProdcutSingleOrderproductlist>? orderproductlist;
  
  GetProdcutSingleEntity();

  factory GetProdcutSingleEntity.fromJson(Map<String, dynamic> json) => $GetProdcutSingleEntityFromJson(json);

  Map<String, dynamic> toJson() => $GetProdcutSingleEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GetProdcutSingleOrderproductlist {

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
  
  GetProdcutSingleOrderproductlist();

  factory GetProdcutSingleOrderproductlist.fromJson(Map<String, dynamic> json) => $GetProdcutSingleOrderproductlistFromJson(json);

  Map<String, dynamic> toJson() => $GetProdcutSingleOrderproductlistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}