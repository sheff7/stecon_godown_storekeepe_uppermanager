import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/get_login_by_statusa_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class GetLoginByStatusaEntity {

	String? response;
	List<GetLoginByStatusaLoginlist>? loginlist;
  
  GetLoginByStatusaEntity();

  factory GetLoginByStatusaEntity.fromJson(Map<String, dynamic> json) => $GetLoginByStatusaEntityFromJson(json);

  Map<String, dynamic> toJson() => $GetLoginByStatusaEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GetLoginByStatusaLoginlist {

	String? status;
	String? type;
	String? username;
	String? uppermanagername;
	int? uppermanagerid;
  
  GetLoginByStatusaLoginlist();

  factory GetLoginByStatusaLoginlist.fromJson(Map<String, dynamic> json) => $GetLoginByStatusaLoginlistFromJson(json);

  Map<String, dynamic> toJson() => $GetLoginByStatusaLoginlistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}