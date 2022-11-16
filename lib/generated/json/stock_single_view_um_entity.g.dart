import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/StockUmFn/Model/stock_single_view_um_entity.dart';

StockSingleViewUmEntity $StockSingleViewUmEntityFromJson(Map<String, dynamic> json) {
	final StockSingleViewUmEntity stockSingleViewUmEntity = StockSingleViewUmEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		stockSingleViewUmEntity.response = response;
	}
	final List<StockSingleViewUmStocklist>? stocklist = jsonConvert.convertListNotNull<StockSingleViewUmStocklist>(json['stocklist']);
	if (stocklist != null) {
		stockSingleViewUmEntity.stocklist = stocklist;
	}
	return stockSingleViewUmEntity;
}

Map<String, dynamic> $StockSingleViewUmEntityToJson(StockSingleViewUmEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['stocklist'] =  entity.stocklist?.map((v) => v.toJson()).toList();
	return data;
}

StockSingleViewUmStocklist $StockSingleViewUmStocklistFromJson(Map<String, dynamic> json) {
	final StockSingleViewUmStocklist stockSingleViewUmStocklist = StockSingleViewUmStocklist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		stockSingleViewUmStocklist.id = id;
	}
	final String? productid = jsonConvert.convert<String>(json['productid']);
	if (productid != null) {
		stockSingleViewUmStocklist.productid = productid;
	}
	final dynamic? categoryid = jsonConvert.convert<dynamic>(json['categoryid']);
	if (categoryid != null) {
		stockSingleViewUmStocklist.categoryid = categoryid;
	}
	final String? type = jsonConvert.convert<String>(json['type']);
	if (type != null) {
		stockSingleViewUmStocklist.type = type;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		stockSingleViewUmStocklist.status = status;
	}
	final String? s1 = jsonConvert.convert<String>(json['s1']);
	if (s1 != null) {
		stockSingleViewUmStocklist.s1 = s1;
	}
	final String? s2 = jsonConvert.convert<String>(json['s2']);
	if (s2 != null) {
		stockSingleViewUmStocklist.s2 = s2;
	}
	final String? s3 = jsonConvert.convert<String>(json['s3']);
	if (s3 != null) {
		stockSingleViewUmStocklist.s3 = s3;
	}
	final String? s4 = jsonConvert.convert<String>(json['s4']);
	if (s4 != null) {
		stockSingleViewUmStocklist.s4 = s4;
	}
	final String? s5 = jsonConvert.convert<String>(json['s5']);
	if (s5 != null) {
		stockSingleViewUmStocklist.s5 = s5;
	}
	final String? s6 = jsonConvert.convert<String>(json['s6']);
	if (s6 != null) {
		stockSingleViewUmStocklist.s6 = s6;
	}
	final String? s7 = jsonConvert.convert<String>(json['s7']);
	if (s7 != null) {
		stockSingleViewUmStocklist.s7 = s7;
	}
	final String? s8 = jsonConvert.convert<String>(json['s8']);
	if (s8 != null) {
		stockSingleViewUmStocklist.s8 = s8;
	}
	final String? s9 = jsonConvert.convert<String>(json['s9']);
	if (s9 != null) {
		stockSingleViewUmStocklist.s9 = s9;
	}
	final String? s10 = jsonConvert.convert<String>(json['s10']);
	if (s10 != null) {
		stockSingleViewUmStocklist.s10 = s10;
	}
	final String? s11 = jsonConvert.convert<String>(json['s11']);
	if (s11 != null) {
		stockSingleViewUmStocklist.s11 = s11;
	}
	final String? s12 = jsonConvert.convert<String>(json['s12']);
	if (s12 != null) {
		stockSingleViewUmStocklist.s12 = s12;
	}
	final String? s13 = jsonConvert.convert<String>(json['s13']);
	if (s13 != null) {
		stockSingleViewUmStocklist.s13 = s13;
	}
	final String? laststockupdateddate = jsonConvert.convert<String>(json['laststockupdateddate']);
	if (laststockupdateddate != null) {
		stockSingleViewUmStocklist.laststockupdateddate = laststockupdateddate;
	}
	final dynamic? laststocktakendate = jsonConvert.convert<dynamic>(json['laststocktakendate']);
	if (laststocktakendate != null) {
		stockSingleViewUmStocklist.laststocktakendate = laststocktakendate;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		stockSingleViewUmStocklist.createddate = createddate;
	}
	final String? stockstatus = jsonConvert.convert<String>(json['stockstatus']);
	if (stockstatus != null) {
		stockSingleViewUmStocklist.stockstatus = stockstatus;
	}
	final String? artno = jsonConvert.convert<String>(json['artno']);
	if (artno != null) {
		stockSingleViewUmStocklist.artno = artno;
	}
	final String? category = jsonConvert.convert<String>(json['category']);
	if (category != null) {
		stockSingleViewUmStocklist.category = category;
	}
	final String? color = jsonConvert.convert<String>(json['color']);
	if (color != null) {
		stockSingleViewUmStocklist.color = color;
	}
	final String? boxpair = jsonConvert.convert<String>(json['boxpair']);
	if (boxpair != null) {
		stockSingleViewUmStocklist.boxpair = boxpair;
	}
	final String? comments = jsonConvert.convert<String>(json['comments']);
	if (comments != null) {
		stockSingleViewUmStocklist.comments = comments;
	}
	final String? coverimageurl = jsonConvert.convert<String>(json['coverimageurl']);
	if (coverimageurl != null) {
		stockSingleViewUmStocklist.coverimageurl = coverimageurl;
	}
	final String? price = jsonConvert.convert<String>(json['price']);
	if (price != null) {
		stockSingleViewUmStocklist.price = price;
	}
	final String? categoryname = jsonConvert.convert<String>(json['categoryname']);
	if (categoryname != null) {
		stockSingleViewUmStocklist.categoryname = categoryname;
	}
	final String? colorname = jsonConvert.convert<String>(json['colorname']);
	if (colorname != null) {
		stockSingleViewUmStocklist.colorname = colorname;
	}
	return stockSingleViewUmStocklist;
}

Map<String, dynamic> $StockSingleViewUmStocklistToJson(StockSingleViewUmStocklist entity) {
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
	data['stockstatus'] = entity.stockstatus;
	data['artno'] = entity.artno;
	data['category'] = entity.category;
	data['color'] = entity.color;
	data['boxpair'] = entity.boxpair;
	data['comments'] = entity.comments;
	data['coverimageurl'] = entity.coverimageurl;
	data['price'] = entity.price;
	data['categoryname'] = entity.categoryname;
	data['colorname'] = entity.colorname;
	return data;
}