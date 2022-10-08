import 'dart:convert';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/loginby_status_g_d_entity.g.dart';

@JsonSerializable()
class LoginbyStatusGDEntity {

	String? response;
	List<LoginbyStatusGDLoginlist>? loginlist;
  
  LoginbyStatusGDEntity();

  factory LoginbyStatusGDEntity.fromJson(Map<String, dynamic> json) => $LoginbyStatusGDEntityFromJson(json);

  Map<String, dynamic> toJson() => $LoginbyStatusGDEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class LoginbyStatusGDLoginlist {

	String? status;
	String? type;
	String? username;
	String? godownmanagername;
	int? godownmanagerid;
  
  LoginbyStatusGDLoginlist();

  factory LoginbyStatusGDLoginlist.fromJson(Map<String, dynamic> json) => $LoginbyStatusGDLoginlistFromJson(json);

  Map<String, dynamic> toJson() => $LoginbyStatusGDLoginlistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}