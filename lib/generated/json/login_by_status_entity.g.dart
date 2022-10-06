import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/StoreKeeper/HomeSK/model/login_by_status_entity.dart';

LoginByStatusEntity $LoginByStatusEntityFromJson(Map<String, dynamic> json) {
	final LoginByStatusEntity loginByStatusEntity = LoginByStatusEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		loginByStatusEntity.response = response;
	}
	final List<LoginByStatusLoginlist>? loginlist = jsonConvert.convertListNotNull<LoginByStatusLoginlist>(json['loginlist']);
	if (loginlist != null) {
		loginByStatusEntity.loginlist = loginlist;
	}
	return loginByStatusEntity;
}

Map<String, dynamic> $LoginByStatusEntityToJson(LoginByStatusEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['loginlist'] =  entity.loginlist?.map((v) => v.toJson()).toList();
	return data;
}

LoginByStatusLoginlist $LoginByStatusLoginlistFromJson(Map<String, dynamic> json) {
	final LoginByStatusLoginlist loginByStatusLoginlist = LoginByStatusLoginlist();
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		loginByStatusLoginlist.status = status;
	}
	final String? type = jsonConvert.convert<String>(json['type']);
	if (type != null) {
		loginByStatusLoginlist.type = type;
	}
	final String? username = jsonConvert.convert<String>(json['username']);
	if (username != null) {
		loginByStatusLoginlist.username = username;
	}
	final String? storekeepername = jsonConvert.convert<String>(json['storekeepername']);
	if (storekeepername != null) {
		loginByStatusLoginlist.storekeepername = storekeepername;
	}
	final int? storekeeperid = jsonConvert.convert<int>(json['storekeeperid']);
	if (storekeeperid != null) {
		loginByStatusLoginlist.storekeeperid = storekeeperid;
	}
	return loginByStatusLoginlist;
}

Map<String, dynamic> $LoginByStatusLoginlistToJson(LoginByStatusLoginlist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['status'] = entity.status;
	data['type'] = entity.type;
	data['username'] = entity.username;
	data['storekeepername'] = entity.storekeepername;
	data['storekeeperid'] = entity.storekeeperid;
	return data;
}