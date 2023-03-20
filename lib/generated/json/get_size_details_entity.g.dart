import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/Godown/StockGd/Model/get_size_details_entity.dart';

GetSizeDetailsEntity $GetSizeDetailsEntityFromJson(Map<String, dynamic> json) {
	final GetSizeDetailsEntity getSizeDetailsEntity = GetSizeDetailsEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		getSizeDetailsEntity.response = response;
	}
	final List<GetSizeDetailsSizelist>? sizelist = jsonConvert.convertListNotNull<GetSizeDetailsSizelist>(json['sizelist']);
	if (sizelist != null) {
		getSizeDetailsEntity.sizelist = sizelist;
	}
	final List<int>? sizearray = jsonConvert.convertListNotNull<int>(json['sizearray']);
	if (sizearray != null) {
		getSizeDetailsEntity.sizearray = sizearray;
	}
	return getSizeDetailsEntity;
}

Map<String, dynamic> $GetSizeDetailsEntityToJson(GetSizeDetailsEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['sizelist'] =  entity.sizelist?.map((v) => v.toJson()).toList();
	data['sizearray'] =  entity.sizearray;
	return data;
}

GetSizeDetailsSizelist $GetSizeDetailsSizelistFromJson(Map<String, dynamic> json) {
	final GetSizeDetailsSizelist getSizeDetailsSizelist = GetSizeDetailsSizelist();
	final String? size = jsonConvert.convert<String>(json['size']);
	if (size != null) {
		getSizeDetailsSizelist.size = size;
	}
	final String? sizename = jsonConvert.convert<String>(json['sizename']);
	if (sizename != null) {
		getSizeDetailsSizelist.sizename = sizename;
	}
	return getSizeDetailsSizelist;
}

Map<String, dynamic> $GetSizeDetailsSizelistToJson(GetSizeDetailsSizelist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['size'] = entity.size;
	data['sizename'] = entity.sizename;
	return data;
}