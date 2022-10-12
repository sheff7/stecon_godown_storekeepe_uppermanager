import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/get_material_replaced_byid_sk_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class GetMaterialReplacedByidSkEntity {

	String? response;
	List<GetMaterialReplacedByidSkMaterialreplacedlist>? materialreplacedlist;
  
  GetMaterialReplacedByidSkEntity();

  factory GetMaterialReplacedByidSkEntity.fromJson(Map<String, dynamic> json) => $GetMaterialReplacedByidSkEntityFromJson(json);

  Map<String, dynamic> toJson() => $GetMaterialReplacedByidSkEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GetMaterialReplacedByidSkMaterialreplacedlist {

	int? id;
	String? issueno;
	String? department;
	String? item;
	String? company;
	String? quantity;
	String? type;
	String? comments;
	String? date;
	String? createddate;
	String? status;
	int? replacedno;
	String? departmentname;
	String? itemnanme;
	String? companyname;
  
  GetMaterialReplacedByidSkMaterialreplacedlist();

  factory GetMaterialReplacedByidSkMaterialreplacedlist.fromJson(Map<String, dynamic> json) => $GetMaterialReplacedByidSkMaterialreplacedlistFromJson(json);

  Map<String, dynamic> toJson() => $GetMaterialReplacedByidSkMaterialreplacedlistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}