import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/login_page_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class LoginPageEntity {

	String? status;
	int? id;
	@JSONField(name: "user_id")
	String? userId;
	@JSONField(name: "user_name")
	String? userName;
	@JSONField(name: "user_type")
	String? userType;
	@JSONField(name: "user_status")
	String? userStatus;
	@JSONField(name: "user_email")
	String? userEmail;
  
  LoginPageEntity();

  factory LoginPageEntity.fromJson(Map<String, dynamic> json) => $LoginPageEntityFromJson(json);

  Map<String, dynamic> toJson() => $LoginPageEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}