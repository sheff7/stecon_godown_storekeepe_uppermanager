import 'dart:convert';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/login_by_status_entity.g.dart';

@JsonSerializable()
class LoginByStatusEntity {

	String? response;
	List<LoginByStatusLoginlist>? loginlist;
  
  LoginByStatusEntity();

  factory LoginByStatusEntity.fromJson(Map<String, dynamic> json) => $LoginByStatusEntityFromJson(json);

  Map<String, dynamic> toJson() => $LoginByStatusEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class LoginByStatusLoginlist {

	String? status;
	String? type;
	String? username;
	String? storekeepername;
	int? storekeeperid;
  
  LoginByStatusLoginlist();

  factory LoginByStatusLoginlist.fromJson(Map<String, dynamic> json) => $LoginByStatusLoginlistFromJson(json);

  Map<String, dynamic> toJson() => $LoginByStatusLoginlistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}