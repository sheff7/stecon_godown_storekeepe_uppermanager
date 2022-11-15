import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperReturnCount/Model/get_upper_order_entity.dart';

GetUpperOrderEntity $GetUpperOrderEntityFromJson(Map<String, dynamic> json) {
	final GetUpperOrderEntity getUpperOrderEntity = GetUpperOrderEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		getUpperOrderEntity.response = response;
	}
	final List<GetUpperOrderUpperordernolist>? upperordernolist = jsonConvert.convertListNotNull<GetUpperOrderUpperordernolist>(json['upperordernolist']);
	if (upperordernolist != null) {
		getUpperOrderEntity.upperordernolist = upperordernolist;
	}
	return getUpperOrderEntity;
}

Map<String, dynamic> $GetUpperOrderEntityToJson(GetUpperOrderEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['upperordernolist'] =  entity.upperordernolist?.map((v) => v.toJson()).toList();
	return data;
}

GetUpperOrderUpperordernolist $GetUpperOrderUpperordernolistFromJson(Map<String, dynamic> json) {
	final GetUpperOrderUpperordernolist getUpperOrderUpperordernolist = GetUpperOrderUpperordernolist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		getUpperOrderUpperordernolist.id = id;
	}
	final String? orderno = jsonConvert.convert<String>(json['orderno']);
	if (orderno != null) {
		getUpperOrderUpperordernolist.orderno = orderno;
	}
	return getUpperOrderUpperordernolist;
}

Map<String, dynamic> $GetUpperOrderUpperordernolistToJson(GetUpperOrderUpperordernolist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['orderno'] = entity.orderno;
	return data;
}