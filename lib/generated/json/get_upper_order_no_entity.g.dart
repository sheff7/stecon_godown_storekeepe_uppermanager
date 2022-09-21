import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperPurchasePlan/Model/get_upper_order_no_entity.dart';

GetUpperOrderNoEntity $GetUpperOrderNoEntityFromJson(Map<String, dynamic> json) {
	final GetUpperOrderNoEntity getUpperOrderNoEntity = GetUpperOrderNoEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		getUpperOrderNoEntity.response = response;
	}
	final int? upperorderno = jsonConvert.convert<int>(json['upperorderno']);
	if (upperorderno != null) {
		getUpperOrderNoEntity.upperorderno = upperorderno;
	}
	return getUpperOrderNoEntity;
}

Map<String, dynamic> $GetUpperOrderNoEntityToJson(GetUpperOrderNoEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['upperorderno'] = entity.upperorderno;
	return data;
}