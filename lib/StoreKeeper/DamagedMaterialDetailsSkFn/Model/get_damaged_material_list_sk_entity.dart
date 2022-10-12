import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/get_damaged_material_list_sk_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class GetDamagedMaterialListSkEntity {

	String? response;
	List<GetDamagedMaterialListSkMaterialdamagedlist>? materialdamagedlist;
  
  GetDamagedMaterialListSkEntity();

  factory GetDamagedMaterialListSkEntity.fromJson(Map<String, dynamic> json) => $GetDamagedMaterialListSkEntityFromJson(json);

  Map<String, dynamic> toJson() => $GetDamagedMaterialListSkEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GetDamagedMaterialListSkMaterialdamagedlist {

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
	int? damagedno;
	String? departmentname;
	String? itemnanme;
	String? companyname;
  
  GetDamagedMaterialListSkMaterialdamagedlist();

  factory GetDamagedMaterialListSkMaterialdamagedlist.fromJson(Map<String, dynamic> json) => $GetDamagedMaterialListSkMaterialdamagedlistFromJson(json);

  Map<String, dynamic> toJson() => $GetDamagedMaterialListSkMaterialdamagedlistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}