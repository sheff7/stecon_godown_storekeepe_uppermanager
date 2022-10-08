import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/StoreKeeper/IssuedMaterialSkFn/Model/response_entity.dart';

ResponseEntity $ResponseEntityFromJson(Map<String, dynamic> json) {
	final ResponseEntity responseEntity = ResponseEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		responseEntity.response = response;
	}
	return responseEntity;
}

Map<String, dynamic> $ResponseEntityToJson(ResponseEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	return data;
}