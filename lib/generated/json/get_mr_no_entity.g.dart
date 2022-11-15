import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperReturnCount/Model/get_mr_no_entity.dart';

GetMrNoEntity $GetMrNoEntityFromJson(Map<String, dynamic> json) {
	final GetMrNoEntity getMrNoEntity = GetMrNoEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		getMrNoEntity.response = response;
	}
	final List<GetMrNoMrnolist>? mrnolist = jsonConvert.convertListNotNull<GetMrNoMrnolist>(json['mrnolist']);
	if (mrnolist != null) {
		getMrNoEntity.mrnolist = mrnolist;
	}
	return getMrNoEntity;
}

Map<String, dynamic> $GetMrNoEntityToJson(GetMrNoEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['mrnolist'] =  entity.mrnolist?.map((v) => v.toJson()).toList();
	return data;
}

GetMrNoMrnolist $GetMrNoMrnolistFromJson(Map<String, dynamic> json) {
	final GetMrNoMrnolist getMrNoMrnolist = GetMrNoMrnolist();
	final int? mrno = jsonConvert.convert<int>(json['mrno']);
	if (mrno != null) {
		getMrNoMrnolist.mrno = mrno;
	}
	final int? countid = jsonConvert.convert<int>(json['countid']);
	if (countid != null) {
		getMrNoMrnolist.countid = countid;
	}
	return getMrNoMrnolist;
}

Map<String, dynamic> $GetMrNoMrnolistToJson(GetMrNoMrnolist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['mrno'] = entity.mrno;
	data['countid'] = entity.countid;
	return data;
}