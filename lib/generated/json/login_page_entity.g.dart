import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/LoginPage/Model/login_page_entity.dart';

LoginPageEntity $LoginPageEntityFromJson(Map<String, dynamic> json) {
	final LoginPageEntity loginPageEntity = LoginPageEntity();
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		loginPageEntity.status = status;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		loginPageEntity.id = id;
	}
	final String? userId = jsonConvert.convert<String>(json['user_id']);
	if (userId != null) {
		loginPageEntity.userId = userId;
	}
	final String? userName = jsonConvert.convert<String>(json['user_name']);
	if (userName != null) {
		loginPageEntity.userName = userName;
	}
	final String? userType = jsonConvert.convert<String>(json['user_type']);
	if (userType != null) {
		loginPageEntity.userType = userType;
	}
	final String? userStatus = jsonConvert.convert<String>(json['user_status']);
	if (userStatus != null) {
		loginPageEntity.userStatus = userStatus;
	}
	final String? userEmail = jsonConvert.convert<String>(json['user_email']);
	if (userEmail != null) {
		loginPageEntity.userEmail = userEmail;
	}
	return loginPageEntity;
}

Map<String, dynamic> $LoginPageEntityToJson(LoginPageEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['status'] = entity.status;
	data['id'] = entity.id;
	data['user_id'] = entity.userId;
	data['user_name'] = entity.userName;
	data['user_type'] = entity.userType;
	data['user_status'] = entity.userStatus;
	data['user_email'] = entity.userEmail;
	return data;
}