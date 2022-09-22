import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperPurchasePlan/Model/response_entity_entity.dart';

ResponseEntityEntity $ResponseEntityEntityFromJson(Map<String, dynamic> json) {
	final ResponseEntityEntity responseEntityEntity = ResponseEntityEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		responseEntityEntity.response = response;
	}
	return responseEntityEntity;
}

Map<String, dynamic> $ResponseEntityEntityToJson(ResponseEntityEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	return data;
}