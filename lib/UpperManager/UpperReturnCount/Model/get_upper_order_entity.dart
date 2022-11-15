import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/get_upper_order_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class GetUpperOrderEntity {

	String? response;
	List<GetUpperOrderUpperordernolist>? upperordernolist;
  
  GetUpperOrderEntity();

  factory GetUpperOrderEntity.fromJson(Map<String, dynamic> json) => $GetUpperOrderEntityFromJson(json);

  Map<String, dynamic> toJson() => $GetUpperOrderEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GetUpperOrderUpperordernolist {

	int? id;
	String? orderno;
  
  GetUpperOrderUpperordernolist();

  factory GetUpperOrderUpperordernolist.fromJson(Map<String, dynamic> json) => $GetUpperOrderUpperordernolistFromJson(json);

  Map<String, dynamic> toJson() => $GetUpperOrderUpperordernolistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}