import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/get_material_order_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class GetMaterialOrderEntity {

	String? response;
	List<GetMaterialOrderMaterialorderlist>? materialorderlist;
  
  GetMaterialOrderEntity();

  factory GetMaterialOrderEntity.fromJson(Map<String, dynamic> json) => $GetMaterialOrderEntityFromJson(json);

  Map<String, dynamic> toJson() => $GetMaterialOrderEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GetMaterialOrderMaterialorderlist {

	int? id;
	String? departmentid;
	String? itemid;
	String? companyid;
	String? qty;
	String? type;
	String? createddate;
	String? materialorderno;
	String? status;
	String? orderdate;
	String? remarks;
	String? status1;
	String? price;
	String? departmentname;
	String? itemname;
	String? category;
	String? categoryname;
	String? companyname;
  
  GetMaterialOrderMaterialorderlist();

  factory GetMaterialOrderMaterialorderlist.fromJson(Map<String, dynamic> json) => $GetMaterialOrderMaterialorderlistFromJson(json);

  Map<String, dynamic> toJson() => $GetMaterialOrderMaterialorderlistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}