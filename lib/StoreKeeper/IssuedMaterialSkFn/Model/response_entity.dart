import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/response_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class ResponseEntity {

	String? response;
  
  ResponseEntity();

  factory ResponseEntity.fromJson(Map<String, dynamic> json) => $ResponseEntityFromJson(json);

  Map<String, dynamic> toJson() => $ResponseEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}