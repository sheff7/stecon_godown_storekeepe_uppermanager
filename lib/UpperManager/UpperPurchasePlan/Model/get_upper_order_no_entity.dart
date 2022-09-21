import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/get_upper_order_no_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class GetUpperOrderNoEntity {

	String? response;
	int? upperorderno;
  
  GetUpperOrderNoEntity();

  factory GetUpperOrderNoEntity.fromJson(Map<String, dynamic> json) => $GetUpperOrderNoEntityFromJson(json);

  Map<String, dynamic> toJson() => $GetUpperOrderNoEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}