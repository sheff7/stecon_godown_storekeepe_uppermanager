import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/get_material_received_count_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class GetMaterialReceivedCountEntity {

	String? response;
	List<GetMaterialReceivedCountMaterialrecievedlist>? materialrecievedlist;
  
  GetMaterialReceivedCountEntity();

  factory GetMaterialReceivedCountEntity.fromJson(Map<String, dynamic> json) => $GetMaterialReceivedCountEntityFromJson(json);

  Map<String, dynamic> toJson() => $GetMaterialReceivedCountEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GetMaterialReceivedCountMaterialrecievedlist {

	int? id;
	String? orderid;
	String? orderno;
	String? itemid;
	String? category;
	String? companyid;
	String? type;
	String? oc;
	String? rc;
	String? dc;
	String? note;
	String? createddate;
	String? date;
	String? status;
	String? itemname;
	String? companyname;
  
  GetMaterialReceivedCountMaterialrecievedlist();

  factory GetMaterialReceivedCountMaterialrecievedlist.fromJson(Map<String, dynamic> json) => $GetMaterialReceivedCountMaterialrecievedlistFromJson(json);

  Map<String, dynamic> toJson() => $GetMaterialReceivedCountMaterialrecievedlistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}