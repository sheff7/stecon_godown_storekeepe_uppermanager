import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperPurchasePlan/Model/get_uppper_plan_no_entity.dart';

GetUppperPlanNoEntity $GetUppperPlanNoEntityFromJson(Map<String, dynamic> json) {
	final GetUppperPlanNoEntity getUppperPlanNoEntity = GetUppperPlanNoEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		getUppperPlanNoEntity.response = response;
	}
	final String? upperplanno = jsonConvert.convert<String>(json['upperplanno']);
	if (upperplanno != null) {
		getUppperPlanNoEntity.upperplanno = upperplanno;
	}
	return getUppperPlanNoEntity;
}

Map<String, dynamic> $GetUppperPlanNoEntityToJson(GetUppperPlanNoEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['upperplanno'] = entity.upperplanno;
	return data;
}