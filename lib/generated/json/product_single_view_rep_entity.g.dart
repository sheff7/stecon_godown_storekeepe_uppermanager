import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/Godown/StockGd/Model/product_single_view_rep_entity.dart';

ProductSingleViewRepEntity $ProductSingleViewRepEntityFromJson(Map<String, dynamic> json) {
	final ProductSingleViewRepEntity productSingleViewRepEntity = ProductSingleViewRepEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		productSingleViewRepEntity.response = response;
	}
	final List<ProductSingleViewRepProductlist>? productlist = jsonConvert.convertListNotNull<ProductSingleViewRepProductlist>(json['productlist']);
	if (productlist != null) {
		productSingleViewRepEntity.productlist = productlist;
	}
	final List<ProductSingleViewRepProductsizelist>? productsizelist = jsonConvert.convertListNotNull<ProductSingleViewRepProductsizelist>(json['productsizelist']);
	if (productsizelist != null) {
		productSingleViewRepEntity.productsizelist = productsizelist;
	}
	final List<dynamic>? productimagelis = jsonConvert.convertListNotNull<dynamic>(json['productimagelis']);
	if (productimagelis != null) {
		productSingleViewRepEntity.productimagelis = productimagelis;
	}
	final List<ProductSingleViewRepStock>? stock = jsonConvert.convertListNotNull<ProductSingleViewRepStock>(json['stock']);
	if (stock != null) {
		productSingleViewRepEntity.stock = stock;
	}
	return productSingleViewRepEntity;
}

Map<String, dynamic> $ProductSingleViewRepEntityToJson(ProductSingleViewRepEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['productlist'] =  entity.productlist?.map((v) => v.toJson()).toList();
	data['productsizelist'] =  entity.productsizelist?.map((v) => v.toJson()).toList();
	data['productimagelis'] =  entity.productimagelis;
	data['stock'] =  entity.stock?.map((v) => v.toJson()).toList();
	return data;
}

ProductSingleViewRepProductlist $ProductSingleViewRepProductlistFromJson(Map<String, dynamic> json) {
	final ProductSingleViewRepProductlist productSingleViewRepProductlist = ProductSingleViewRepProductlist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		productSingleViewRepProductlist.id = id;
	}
	final String? artno = jsonConvert.convert<String>(json['artno']);
	if (artno != null) {
		productSingleViewRepProductlist.artno = artno;
	}
	final String? category = jsonConvert.convert<String>(json['category']);
	if (category != null) {
		productSingleViewRepProductlist.category = category;
	}
	final String? color = jsonConvert.convert<String>(json['color']);
	if (color != null) {
		productSingleViewRepProductlist.color = color;
	}
	final String? boxpair = jsonConvert.convert<String>(json['boxpair']);
	if (boxpair != null) {
		productSingleViewRepProductlist.boxpair = boxpair;
	}
	final String? comments = jsonConvert.convert<String>(json['comments']);
	if (comments != null) {
		productSingleViewRepProductlist.comments = comments;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		productSingleViewRepProductlist.status = status;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		productSingleViewRepProductlist.createddate = createddate;
	}
	final String? coverimageurl = jsonConvert.convert<String>(json['coverimageurl']);
	if (coverimageurl != null) {
		productSingleViewRepProductlist.coverimageurl = coverimageurl;
	}
	final String? price = jsonConvert.convert<String>(json['price']);
	if (price != null) {
		productSingleViewRepProductlist.price = price;
	}
	final String? categoryname = jsonConvert.convert<String>(json['categoryname']);
	if (categoryname != null) {
		productSingleViewRepProductlist.categoryname = categoryname;
	}
	final String? colorname = jsonConvert.convert<String>(json['colorname']);
	if (colorname != null) {
		productSingleViewRepProductlist.colorname = colorname;
	}
	return productSingleViewRepProductlist;
}

Map<String, dynamic> $ProductSingleViewRepProductlistToJson(ProductSingleViewRepProductlist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['artno'] = entity.artno;
	data['category'] = entity.category;
	data['color'] = entity.color;
	data['boxpair'] = entity.boxpair;
	data['comments'] = entity.comments;
	data['status'] = entity.status;
	data['createddate'] = entity.createddate;
	data['coverimageurl'] = entity.coverimageurl;
	data['price'] = entity.price;
	data['categoryname'] = entity.categoryname;
	data['colorname'] = entity.colorname;
	return data;
}

ProductSingleViewRepProductsizelist $ProductSingleViewRepProductsizelistFromJson(Map<String, dynamic> json) {
	final ProductSingleViewRepProductsizelist productSingleViewRepProductsizelist = ProductSingleViewRepProductsizelist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		productSingleViewRepProductsizelist.id = id;
	}
	final String? productid = jsonConvert.convert<String>(json['productid']);
	if (productid != null) {
		productSingleViewRepProductsizelist.productid = productid;
	}
	final String? artno = jsonConvert.convert<String>(json['artno']);
	if (artno != null) {
		productSingleViewRepProductsizelist.artno = artno;
	}
	final String? size = jsonConvert.convert<String>(json['size']);
	if (size != null) {
		productSingleViewRepProductsizelist.size = size;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		productSingleViewRepProductsizelist.status = status;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		productSingleViewRepProductsizelist.createddate = createddate;
	}
	final String? sizename = jsonConvert.convert<String>(json['sizename']);
	if (sizename != null) {
		productSingleViewRepProductsizelist.sizename = sizename;
	}
	return productSingleViewRepProductsizelist;
}

Map<String, dynamic> $ProductSingleViewRepProductsizelistToJson(ProductSingleViewRepProductsizelist entity) {
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

ProductSingleViewRepStock $ProductSingleViewRepStockFromJson(Map<String, dynamic> json) {
	final ProductSingleViewRepStock productSingleViewRepStock = ProductSingleViewRepStock();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		productSingleViewRepStock.id = id;
	}
	final String? productid = jsonConvert.convert<String>(json['productid']);
	if (productid != null) {
		productSingleViewRepStock.productid = productid;
	}
	final String? categoryid = jsonConvert.convert<String>(json['categoryid']);
	if (categoryid != null) {
		productSingleViewRepStock.categoryid = categoryid;
	}
	final String? type = jsonConvert.convert<String>(json['type']);
	if (type != null) {
		productSingleViewRepStock.type = type;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		productSingleViewRepStock.status = status;
	}
	final String? s1 = jsonConvert.convert<String>(json['s1']);
	if (s1 != null) {
		productSingleViewRepStock.s1 = s1;
	}
	final String? s2 = jsonConvert.convert<String>(json['s2']);
	if (s2 != null) {
		productSingleViewRepStock.s2 = s2;
	}
	final String? s3 = jsonConvert.convert<String>(json['s3']);
	if (s3 != null) {
		productSingleViewRepStock.s3 = s3;
	}
	final String? s4 = jsonConvert.convert<String>(json['s4']);
	if (s4 != null) {
		productSingleViewRepStock.s4 = s4;
	}
	final String? s5 = jsonConvert.convert<String>(json['s5']);
	if (s5 != null) {
		productSingleViewRepStock.s5 = s5;
	}
	final String? s6 = jsonConvert.convert<String>(json['s6']);
	if (s6 != null) {
		productSingleViewRepStock.s6 = s6;
	}
	final String? s7 = jsonConvert.convert<String>(json['s7']);
	if (s7 != null) {
		productSingleViewRepStock.s7 = s7;
	}
	final String? s8 = jsonConvert.convert<String>(json['s8']);
	if (s8 != null) {
		productSingleViewRepStock.s8 = s8;
	}
	final String? s9 = jsonConvert.convert<String>(json['s9']);
	if (s9 != null) {
		productSingleViewRepStock.s9 = s9;
	}
	final String? s10 = jsonConvert.convert<String>(json['s10']);
	if (s10 != null) {
		productSingleViewRepStock.s10 = s10;
	}
	final String? s11 = jsonConvert.convert<String>(json['s11']);
	if (s11 != null) {
		productSingleViewRepStock.s11 = s11;
	}
	final String? s12 = jsonConvert.convert<String>(json['s12']);
	if (s12 != null) {
		productSingleViewRepStock.s12 = s12;
	}
	final String? s13 = jsonConvert.convert<String>(json['s13']);
	if (s13 != null) {
		productSingleViewRepStock.s13 = s13;
	}
	final String? laststockupdateddate = jsonConvert.convert<String>(json['laststockupdateddate']);
	if (laststockupdateddate != null) {
		productSingleViewRepStock.laststockupdateddate = laststockupdateddate;
	}
	final dynamic laststocktakendate = jsonConvert.convert<dynamic>(json['laststocktakendate']);
	if (laststocktakendate != null) {
		productSingleViewRepStock.laststocktakendate = laststocktakendate;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		productSingleViewRepStock.createddate = createddate;
	}
	return productSingleViewRepStock;
}

Map<String, dynamic> $ProductSingleViewRepStockToJson(ProductSingleViewRepStock entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['productid'] = entity.productid;
	data['categoryid'] = entity.categoryid;
	data['type'] = entity.type;
	data['status'] = entity.status;
	data['s1'] = entity.s1;
	data['s2'] = entity.s2;
	data['s3'] = entity.s3;
	data['s4'] = entity.s4;
	data['s5'] = entity.s5;
	data['s6'] = entity.s6;
	data['s7'] = entity.s7;
	data['s8'] = entity.s8;
	data['s9'] = entity.s9;
	data['s10'] = entity.s10;
	data['s11'] = entity.s11;
	data['s12'] = entity.s12;
	data['s13'] = entity.s13;
	data['laststockupdateddate'] = entity.laststockupdateddate;
	data['laststocktakendate'] = entity.laststocktakendate;
	data['createddate'] = entity.createddate;
	return data;
}