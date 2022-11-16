import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/StockUmFn/Model/stock_list_um_entity.dart';

StockListUmEntity $StockListUmEntityFromJson(Map<String, dynamic> json) {
	final StockListUmEntity stockListUmEntity = StockListUmEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		stockListUmEntity.response = response;
	}
	final List<StockListUmStocklist>? stocklist = jsonConvert.convertListNotNull<StockListUmStocklist>(json['stocklist']);
	if (stocklist != null) {
		stockListUmEntity.stocklist = stocklist;
	}
	return stockListUmEntity;
}

Map<String, dynamic> $StockListUmEntityToJson(StockListUmEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['stocklist'] =  entity.stocklist?.map((v) => v.toJson()).toList();
	return data;
}

StockListUmStocklist $StockListUmStocklistFromJson(Map<String, dynamic> json) {
	final StockListUmStocklist stockListUmStocklist = StockListUmStocklist();
	final String? productid = jsonConvert.convert<String>(json['productid']);
	if (productid != null) {
		stockListUmStocklist.productid = productid;
	}
	final String? stockstatus = jsonConvert.convert<String>(json['stockstatus']);
	if (stockstatus != null) {
		stockListUmStocklist.stockstatus = stockstatus;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		stockListUmStocklist.id = id;
	}
	final String? artno = jsonConvert.convert<String>(json['artno']);
	if (artno != null) {
		stockListUmStocklist.artno = artno;
	}
	final String? category = jsonConvert.convert<String>(json['category']);
	if (category != null) {
		stockListUmStocklist.category = category;
	}
	final String? color = jsonConvert.convert<String>(json['color']);
	if (color != null) {
		stockListUmStocklist.color = color;
	}
	final String? boxpair = jsonConvert.convert<String>(json['boxpair']);
	if (boxpair != null) {
		stockListUmStocklist.boxpair = boxpair;
	}
	final String? comments = jsonConvert.convert<String>(json['comments']);
	if (comments != null) {
		stockListUmStocklist.comments = comments;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		stockListUmStocklist.status = status;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		stockListUmStocklist.createddate = createddate;
	}
	final String? coverimageurl = jsonConvert.convert<String>(json['coverimageurl']);
	if (coverimageurl != null) {
		stockListUmStocklist.coverimageurl = coverimageurl;
	}
	final String? price = jsonConvert.convert<String>(json['price']);
	if (price != null) {
		stockListUmStocklist.price = price;
	}
	final String? categoryname = jsonConvert.convert<String>(json['categoryname']);
	if (categoryname != null) {
		stockListUmStocklist.categoryname = categoryname;
	}
	final String? colorname = jsonConvert.convert<String>(json['colorname']);
	if (colorname != null) {
		stockListUmStocklist.colorname = colorname;
	}
	return stockListUmStocklist;
}

Map<String, dynamic> $StockListUmStocklistToJson(StockListUmStocklist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['productid'] = entity.productid;
	data['stockstatus'] = entity.stockstatus;
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