import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/StoreKeeper/IssuedMaterialSkFn/Model/get_material_item_entity.dart';

GetMaterialItemEntity $GetMaterialItemEntityFromJson(Map<String, dynamic> json) {
	final GetMaterialItemEntity getMaterialItemEntity = GetMaterialItemEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		getMaterialItemEntity.response = response;
	}
	final List<GetMaterialItemMaterialitemslist>? materialitemslist = jsonConvert.convertListNotNull<GetMaterialItemMaterialitemslist>(json['materialitemslist']);
	if (materialitemslist != null) {
		getMaterialItemEntity.materialitemslist = materialitemslist;
	}
	return getMaterialItemEntity;
}

Map<String, dynamic> $GetMaterialItemEntityToJson(GetMaterialItemEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['materialitemslist'] =  entity.materialitemslist?.map((v) => v.toJson()).toList();
	return data;
}

GetMaterialItemMaterialitemslist $GetMaterialItemMaterialitemslistFromJson(Map<String, dynamic> json) {
	final GetMaterialItemMaterialitemslist getMaterialItemMaterialitemslist = GetMaterialItemMaterialitemslist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		getMaterialItemMaterialitemslist.id = id;
	}
	final String? materialitem = jsonConvert.convert<String>(json['materialitem']);
	if (materialitem != null) {
		getMaterialItemMaterialitemslist.materialitem = materialitem;
	}
	final String? category = jsonConvert.convert<String>(json['category']);
	if (category != null) {
		getMaterialItemMaterialitemslist.category = category;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		getMaterialItemMaterialitemslist.createddate = createddate;
	}
	final String? categoryname = jsonConvert.convert<String>(json['categoryname']);
	if (categoryname != null) {
		getMaterialItemMaterialitemslist.categoryname = categoryname;
	}
	return getMaterialItemMaterialitemslist;
}

Map<String, dynamic> $GetMaterialItemMaterialitemslistToJson(GetMaterialItemMaterialitemslist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['materialitem'] = entity.materialitem;
	data['category'] = entity.category;
	data['createddate'] = entity.createddate;
	data['categoryname'] = entity.categoryname;
	return data;
}