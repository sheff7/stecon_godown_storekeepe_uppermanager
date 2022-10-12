import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/get_material_replaced_sk_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class GetMaterialReplacedSkEntity {

	String? response;
	List<GetMaterialReplacedSkMaterialreplacedlist>? materialreplacedlist;
  
  GetMaterialReplacedSkEntity();

  factory GetMaterialReplacedSkEntity.fromJson(Map<String, dynamic> json) => $GetMaterialReplacedSkEntityFromJson(json);

  Map<String, dynamic> toJson() => $GetMaterialReplacedSkEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GetMaterialReplacedSkMaterialreplacedlist {

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
  
  GetMaterialReplacedSkMaterialreplacedlist();

  factory GetMaterialReplacedSkMaterialreplacedlist.fromJson(Map<String, dynamic> json) => $GetMaterialReplacedSkMaterialreplacedlistFromJson(json);

  Map<String, dynamic> toJson() => $GetMaterialReplacedSkMaterialreplacedlistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}