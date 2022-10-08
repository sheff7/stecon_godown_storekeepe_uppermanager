import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/Godown/HomeGD/model/loginby_status_g_d_entity.dart';

LoginbyStatusGDEntity $LoginbyStatusGDEntityFromJson(Map<String, dynamic> json) {
	final LoginbyStatusGDEntity loginbyStatusGDEntity = LoginbyStatusGDEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		loginbyStatusGDEntity.response = response;
	}
	final List<LoginbyStatusGDLoginlist>? loginlist = jsonConvert.convertListNotNull<LoginbyStatusGDLoginlist>(json['loginlist']);
	if (loginlist != null) {
		loginbyStatusGDEntity.loginlist = loginlist;
	}
	return loginbyStatusGDEntity;
}

Map<String, dynamic> $LoginbyStatusGDEntityToJson(LoginbyStatusGDEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['loginlist'] =  entity.loginlist?.map((v) => v.toJson()).toList();
	return data;
}

LoginbyStatusGDLoginlist $LoginbyStatusGDLoginlistFromJson(Map<String, dynamic> json) {
	final LoginbyStatusGDLoginlist loginbyStatusGDLoginlist = LoginbyStatusGDLoginlist();
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		loginbyStatusGDLoginlist.status = status;
	}
	final String? type = jsonConvert.convert<String>(json['type']);
	if (type != null) {
		loginbyStatusGDLoginlist.type = type;
	}
	final String? username = jsonConvert.convert<String>(json['username']);
	if (username != null) {
		loginbyStatusGDLoginlist.username = username;
	}
	final String? godownmanagername = jsonConvert.convert<String>(json['godownmanagername']);
	if (godownmanagername != null) {
		loginbyStatusGDLoginlist.godownmanagername = godownmanagername;
	}
	final int? godownmanagerid = jsonConvert.convert<int>(json['godownmanagerid']);
	if (godownmanagerid != null) {
		loginbyStatusGDLoginlist.godownmanagerid = godownmanagerid;
	}
	return loginbyStatusGDLoginlist;
}

Map<String, dynamic> $LoginbyStatusGDLoginlistToJson(LoginbyStatusGDLoginlist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['status'] = entity.status;
	data['type'] = entity.type;
	data['username'] = entity.username;
	data['godownmanagername'] = entity.godownmanagername;
	data['godownmanagerid'] = entity.godownmanagerid;
	return data;
}