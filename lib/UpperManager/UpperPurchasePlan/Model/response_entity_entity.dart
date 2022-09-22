import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/response_entity_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class ResponseEntityEntity {

	String? response;
  
  ResponseEntityEntity();

  factory ResponseEntityEntity.fromJson(Map<String, dynamic> json) => $ResponseEntityEntityFromJson(json);

  Map<String, dynamic> toJson() => $ResponseEntityEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}