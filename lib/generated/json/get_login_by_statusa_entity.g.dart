import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperMangerHomeFn/Model/get_login_by_statusa_entity.dart';

GetLoginByStatusaEntity $GetLoginByStatusaEntityFromJson(Map<String, dynamic> json) {
	final GetLoginByStatusaEntity getLoginByStatusaEntity = GetLoginByStatusaEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		getLoginByStatusaEntity.response = response;
	}
	final List<GetLoginByStatusaLoginlist>? loginlist = jsonConvert.convertListNotNull<GetLoginByStatusaLoginlist>(json['loginlist']);
	if (loginlist != null) {
		getLoginByStatusaEntity.loginlist = loginlist;
	}
	return getLoginByStatusaEntity;
}

Map<String, dynamic> $GetLoginByStatusaEntityToJson(GetLoginByStatusaEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['loginlist'] =  entity.loginlist?.map((v) => v.toJson()).toList();
	return data;
}

GetLoginByStatusaLoginlist $GetLoginByStatusaLoginlistFromJson(Map<String, dynamic> json) {
	final GetLoginByStatusaLoginlist getLoginByStatusaLoginlist = GetLoginByStatusaLoginlist();
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		getLoginByStatusaLoginlist.status = status;
	}
	final String? type = jsonConvert.convert<String>(json['type']);
	if (type != null) {
		getLoginByStatusaLoginlist.type = type;
	}
	final String? username = jsonConvert.convert<String>(json['username']);
	if (username != null) {
		getLoginByStatusaLoginlist.username = username;
	}
	final String? uppermanagername = jsonConvert.convert<String>(json['uppermanagername']);
	if (uppermanagername != null) {
		getLoginByStatusaLoginlist.uppermanagername = uppermanagername;
	}
	final int? uppermanagerid = jsonConvert.convert<int>(json['uppermanagerid']);
	if (uppermanagerid != null) {
		getLoginByStatusaLoginlist.uppermanagerid = uppermanagerid;
	}
	return getLoginByStatusaLoginlist;
}

Map<String, dynamic> $GetLoginByStatusaLoginlistToJson(GetLoginByStatusaLoginlist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['status'] = entity.status;
	data['type'] = entity.type;
	data['username'] = entity.username;
	data['uppermanagername'] = entity.uppermanagername;
	data['uppermanagerid'] = entity.uppermanagerid;
	return data;
}