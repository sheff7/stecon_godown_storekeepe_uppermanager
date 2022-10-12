import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/get_issued_material_by_id_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class GetIssuedMaterialByIdEntity {

	String? response;
	List<GetIssuedMaterialByIdMaterialitemslist>? materialitemslist;
  
  GetIssuedMaterialByIdEntity();

  factory GetIssuedMaterialByIdEntity.fromJson(Map<String, dynamic> json) => $GetIssuedMaterialByIdEntityFromJson(json);

  Map<String, dynamic> toJson() => $GetIssuedMaterialByIdEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GetIssuedMaterialByIdMaterialitemslist {

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
  
  GetIssuedMaterialByIdMaterialitemslist();

  factory GetIssuedMaterialByIdMaterialitemslist.fromJson(Map<String, dynamic> json) => $GetIssuedMaterialByIdMaterialitemslistFromJson(json);

  Map<String, dynamic> toJson() => $GetIssuedMaterialByIdMaterialitemslistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}