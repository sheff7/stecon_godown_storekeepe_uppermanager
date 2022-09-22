import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperPurchasePlan/Model/get_art_no_entity.dart';

GetArtNoEntity $GetArtNoEntityFromJson(Map<String, dynamic> json) {
	final GetArtNoEntity getArtNoEntity = GetArtNoEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		getArtNoEntity.response = response;
	}
	final List<GetArtNoProductlist>? productlist = jsonConvert.convertListNotNull<GetArtNoProductlist>(json['productlist']);
	if (productlist != null) {
		getArtNoEntity.productlist = productlist;
	}
	return getArtNoEntity;
}

Map<String, dynamic> $GetArtNoEntityToJson(GetArtNoEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['productlist'] =  entity.productlist?.map((v) => v.toJson()).toList();
	return data;
}

GetArtNoProductlist $GetArtNoProductlistFromJson(Map<String, dynamic> json) {
	final GetArtNoProductlist getArtNoProductlist = GetArtNoProductlist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		getArtNoProductlist.id = id;
	}
	final String? artno = jsonConvert.convert<String>(json['artno']);
	if (artno != null) {
		getArtNoProductlist.artno = artno;
	}
	final String? categoryid = jsonConvert.convert<String>(json['categoryid']);
	if (categoryid != null) {
		getArtNoProductlist.categoryid = categoryid;
	}
	return getArtNoProductlist;
}

Map<String, dynamic> $GetArtNoProductlistToJson(GetArtNoProductlist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['artno'] = entity.artno;
	data['categoryid'] = entity.categoryid;
	return data;
}