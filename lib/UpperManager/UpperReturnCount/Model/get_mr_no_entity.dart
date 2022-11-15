import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/get_mr_no_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class GetMrNoEntity {

	String? response;
	List<GetMrNoMrnolist>? mrnolist;
  
  GetMrNoEntity();

  factory GetMrNoEntity.fromJson(Map<String, dynamic> json) => $GetMrNoEntityFromJson(json);

  Map<String, dynamic> toJson() => $GetMrNoEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GetMrNoMrnolist {

	int? mrno;
	int? countid;
  
  GetMrNoMrnolist();

  factory GetMrNoMrnolist.fromJson(Map<String, dynamic> json) => $GetMrNoMrnolistFromJson(json);

  Map<String, dynamic> toJson() => $GetMrNoMrnolistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}