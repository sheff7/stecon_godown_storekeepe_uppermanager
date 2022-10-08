import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/get_material_item_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class GetMaterialItemEntity {

	String? response;
	List<GetMaterialItemMaterialitemslist>? materialitemslist;
  
  GetMaterialItemEntity();

  factory GetMaterialItemEntity.fromJson(Map<String, dynamic> json) => $GetMaterialItemEntityFromJson(json);

  Map<String, dynamic> toJson() => $GetMaterialItemEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GetMaterialItemMaterialitemslist {

	int? id;
	String? materialitem;
	String? category;
	String? createddate;
	String? categoryname;
  
  GetMaterialItemMaterialitemslist();

  factory GetMaterialItemMaterialitemslist.fromJson(Map<String, dynamic> json) => $GetMaterialItemMaterialitemslistFromJson(json);

  Map<String, dynamic> toJson() => $GetMaterialItemMaterialitemslistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}