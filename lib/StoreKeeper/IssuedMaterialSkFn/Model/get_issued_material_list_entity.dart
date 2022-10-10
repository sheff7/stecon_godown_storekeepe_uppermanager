import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/get_issued_material_list_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class GetIssuedMaterialListEntity {

	String? response;
	List<GetIssuedMaterialListMaterialitemslist>? materialitemslist;
  
  GetIssuedMaterialListEntity();

  factory GetIssuedMaterialListEntity.fromJson(Map<String, dynamic> json) => $GetIssuedMaterialListEntityFromJson(json);

  Map<String, dynamic> toJson() => $GetIssuedMaterialListEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GetIssuedMaterialListMaterialitemslist {

	int? id;
	String? department;
	String? item;
	String? company;
	String? quantity;
	String? type;
	String? comments;
	String? date;
	String? status;
	String? createddate;
	int? issuedno;
	String? departmentname;
	String? itemnanme;
	String? companyname;
  
  GetIssuedMaterialListMaterialitemslist();

  factory GetIssuedMaterialListMaterialitemslist.fromJson(Map<String, dynamic> json) => $GetIssuedMaterialListMaterialitemslistFromJson(json);

  Map<String, dynamic> toJson() => $GetIssuedMaterialListMaterialitemslistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}