import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperPurchasePlan/Model/get_product_by_artno_entity.dart';

GetProductByArtnoEntity $GetProductByArtnoEntityFromJson(Map<String, dynamic> json) {
	final GetProductByArtnoEntity getProductByArtnoEntity = GetProductByArtnoEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		getProductByArtnoEntity.response = response;
	}
	final List<GetProductByArtnoProductlist>? productlist = jsonConvert.convertListNotNull<GetProductByArtnoProductlist>(json['productlist']);
	if (productlist != null) {
		getProductByArtnoEntity.productlist = productlist;
	}
	final List<GetProductByArtnoSizelist>? sizelist = jsonConvert.convertListNotNull<GetProductByArtnoSizelist>(json['sizelist']);
	if (sizelist != null) {
		getProductByArtnoEntity.sizelist = sizelist;
	}
	return getProductByArtnoEntity;
}

Map<String, dynamic> $GetProductByArtnoEntityToJson(GetProductByArtnoEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['productlist'] =  entity.productlist?.map((v) => v.toJson()).toList();
	data['sizelist'] =  entity.sizelist?.map((v) => v.toJson()).toList();
	return data;
}

GetProductByArtnoProductlist $GetProductByArtnoProductlistFromJson(Map<String, dynamic> json) {
	final GetProductByArtnoProductlist getProductByArtnoProductlist = GetProductByArtnoProductlist();
	final String? artno = jsonConvert.convert<String>(json['artno']);
	if (artno != null) {
		getProductByArtnoProductlist.artno = artno;
	}
	final String? category = jsonConvert.convert<String>(json['category']);
	if (category != null) {
		getProductByArtnoProductlist.category = category;
	}
	final String? color = jsonConvert.convert<String>(json['color']);
	if (color != null) {
		getProductByArtnoProductlist.color = color;
	}
	final String? boxpair = jsonConvert.convert<String>(json['boxpair']);
	if (boxpair != null) {
		getProductByArtnoProductlist.boxpair = boxpair;
	}
	final String? coverimageurl = jsonConvert.convert<String>(json['coverimageurl']);
	if (coverimageurl != null) {
		getProductByArtnoProductlist.coverimageurl = coverimageurl;
	}
	final String? colorname = jsonConvert.convert<String>(json['colorname']);
	if (colorname != null) {
		getProductByArtnoProductlist.colorname = colorname;
	}
	final String? categoryname = jsonConvert.convert<String>(json['categoryname']);
	if (categoryname != null) {
		getProductByArtnoProductlist.categoryname = categoryname;
	}
	return getProductByArtnoProductlist;
}

Map<String, dynamic> $GetProductByArtnoProductlistToJson(GetProductByArtnoProductlist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['artno'] = entity.artno;
	data['category'] = entity.category;
	data['color'] = entity.color;
	data['boxpair'] = entity.boxpair;
	data['coverimageurl'] = entity.coverimageurl;
	data['colorname'] = entity.colorname;
	data['categoryname'] = entity.categoryname;
	return data;
}

GetProductByArtnoSizelist $GetProductByArtnoSizelistFromJson(Map<String, dynamic> json) {
	final GetProductByArtnoSizelist getProductByArtnoSizelist = GetProductByArtnoSizelist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		getProductByArtnoSizelist.id = id;
	}
	final String? productid = jsonConvert.convert<String>(json['productid']);
	if (productid != null) {
		getProductByArtnoSizelist.productid = productid;
	}
	final String? artno = jsonConvert.convert<String>(json['artno']);
	if (artno != null) {
		getProductByArtnoSizelist.artno = artno;
	}
	final String? size = jsonConvert.convert<String>(json['size']);
	if (size != null) {
		getProductByArtnoSizelist.size = size;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		getProductByArtnoSizelist.status = status;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		getProductByArtnoSizelist.createddate = createddate;
	}
	final String? sizename = jsonConvert.convert<String>(json['sizename']);
	if (sizename != null) {
		getProductByArtnoSizelist.sizename = sizename;
	}
	return getProductByArtnoSizelist;
}

Map<String, dynamic> $GetProductByArtnoSizelistToJson(GetProductByArtnoSizelist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['productid'] = entity.productid;
	data['artno'] = entity.artno;
	data['size'] = entity.size;
	data['status'] = entity.status;
	data['createddate'] = entity.createddate;
	data['sizename'] = entity.sizename;
	return data;
}