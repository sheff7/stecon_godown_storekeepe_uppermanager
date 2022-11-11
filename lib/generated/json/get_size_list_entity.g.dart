import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperPurchasePlan/Model/get_size_list_entity.dart';

GetSizeListEntity $GetSizeListEntityFromJson(Map<String, dynamic> json) {
	final GetSizeListEntity getSizeListEntity = GetSizeListEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		getSizeListEntity.response = response;
	}
	final List<GetSizeListSizelist>? sizelist = jsonConvert.convertListNotNull<GetSizeListSizelist>(json['sizelist']);
	if (sizelist != null) {
		getSizeListEntity.sizelist = sizelist;
	}
	final List<int>? sizearray = jsonConvert.convertListNotNull<int>(json['sizearray']);
	if (sizearray != null) {
		getSizeListEntity.sizearray = sizearray;
	}
	return getSizeListEntity;
}

Map<String, dynamic> $GetSizeListEntityToJson(GetSizeListEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['sizelist'] =  entity.sizelist?.map((v) => v.toJson()).toList();
	data['sizearray'] =  entity.sizearray;
	return data;
}

GetSizeListSizelist $GetSizeListSizelistFromJson(Map<String, dynamic> json) {
	final GetSizeListSizelist getSizeListSizelist = GetSizeListSizelist();
	final String? size = jsonConvert.convert<String>(json['size']);
	if (size != null) {
		getSizeListSizelist.size = size;
	}
	final String? sizename = jsonConvert.convert<String>(json['sizename']);
	if (sizename != null) {
		getSizeListSizelist.sizename = sizename;
	}
	return getSizeListSizelist;
}

Map<String, dynamic> $GetSizeListSizelistToJson(GetSizeListSizelist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['size'] = entity.size;
	data['sizename'] = entity.sizename;
	return data;
}