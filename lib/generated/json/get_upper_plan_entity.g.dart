import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperReturnCount/Model/get_upper_plan_entity.dart';

GetUpperPlanEntity $GetUpperPlanEntityFromJson(Map<String, dynamic> json) {
	final GetUpperPlanEntity getUpperPlanEntity = GetUpperPlanEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		getUpperPlanEntity.response = response;
	}
	final List<GetUpperPlanPlannolist>? plannolist = jsonConvert.convertListNotNull<GetUpperPlanPlannolist>(json['plannolist']);
	if (plannolist != null) {
		getUpperPlanEntity.plannolist = plannolist;
	}
	return getUpperPlanEntity;
}

Map<String, dynamic> $GetUpperPlanEntityToJson(GetUpperPlanEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['plannolist'] =  entity.plannolist?.map((v) => v.toJson()).toList();
	return data;
}

GetUpperPlanPlannolist $GetUpperPlanPlannolistFromJson(Map<String, dynamic> json) {
	final GetUpperPlanPlannolist getUpperPlanPlannolist = GetUpperPlanPlannolist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		getUpperPlanPlannolist.id = id;
	}
	final String? companyplanno = jsonConvert.convert<String>(json['companyplanno']);
	if (companyplanno != null) {
		getUpperPlanPlannolist.companyplanno = companyplanno;
	}
	final String? planno = jsonConvert.convert<String>(json['planno']);
	if (planno != null) {
		getUpperPlanPlannolist.planno = planno;
	}
	return getUpperPlanPlannolist;
}

Map<String, dynamic> $GetUpperPlanPlannolistToJson(GetUpperPlanPlannolist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['companyplanno'] = entity.companyplanno;
	data['planno'] = entity.planno;
	return data;
}