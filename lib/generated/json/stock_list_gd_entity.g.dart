import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/Godown/StockGd/Model/stock_list_gd_entity.dart';

StockListGdEntity $StockListGdEntityFromJson(Map<String, dynamic> json) {
	final StockListGdEntity stockListGdEntity = StockListGdEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		stockListGdEntity.response = response;
	}
	final List<StockListGdStocklist>? stocklist = jsonConvert.convertListNotNull<StockListGdStocklist>(json['stocklist']);
	if (stocklist != null) {
		stockListGdEntity.stocklist = stocklist;
	}
	final int? totalPages = jsonConvert.convert<int>(json['total_pages']);
	if (totalPages != null) {
		stockListGdEntity.totalPages = totalPages;
	}
	final dynamic previouspage = jsonConvert.convert<dynamic>(json['previouspage']);
	if (previouspage != null) {
		stockListGdEntity.previouspage = previouspage;
	}
	final int? nextpage = jsonConvert.convert<int>(json['nextpage']);
	if (nextpage != null) {
		stockListGdEntity.nextpage = nextpage;
	}
	return stockListGdEntity;
}

Map<String, dynamic> $StockListGdEntityToJson(StockListGdEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['stocklist'] =  entity.stocklist?.map((v) => v.toJson()).toList();
	data['total_pages'] = entity.totalPages;
	data['previouspage'] = entity.previouspage;
	data['nextpage'] = entity.nextpage;
	return data;
}

StockListGdStocklist $StockListGdStocklistFromJson(Map<String, dynamic> json) {
	final StockListGdStocklist stockListGdStocklist = StockListGdStocklist();
	final String? productid = jsonConvert.convert<String>(json['productid']);
	if (productid != null) {
		stockListGdStocklist.productid = productid;
	}
	final String? stockstatus = jsonConvert.convert<String>(json['stockstatus']);
	if (stockstatus != null) {
		stockListGdStocklist.stockstatus = stockstatus;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		stockListGdStocklist.id = id;
	}
	final String? artno = jsonConvert.convert<String>(json['artno']);
	if (artno != null) {
		stockListGdStocklist.artno = artno;
	}
	final String? category = jsonConvert.convert<String>(json['category']);
	if (category != null) {
		stockListGdStocklist.category = category;
	}
	final String? color = jsonConvert.convert<String>(json['color']);
	if (color != null) {
		stockListGdStocklist.color = color;
	}
	final String? boxpair = jsonConvert.convert<String>(json['boxpair']);
	if (boxpair != null) {
		stockListGdStocklist.boxpair = boxpair;
	}
	final String? comments = jsonConvert.convert<String>(json['comments']);
	if (comments != null) {
		stockListGdStocklist.comments = comments;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		stockListGdStocklist.status = status;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		stockListGdStocklist.createddate = createddate;
	}
	final String? coverimageurl = jsonConvert.convert<String>(json['coverimageurl']);
	if (coverimageurl != null) {
		stockListGdStocklist.coverimageurl = coverimageurl;
	}
	final String? price = jsonConvert.convert<String>(json['price']);
	if (price != null) {
		stockListGdStocklist.price = price;
	}
	final String? mrp = jsonConvert.convert<String>(json['mrp']);
	if (mrp != null) {
		stockListGdStocklist.mrp = mrp;
	}
	final String? dieno = jsonConvert.convert<String>(json['dieno']);
	if (dieno != null) {
		stockListGdStocklist.dieno = dieno;
	}
	final String? solecolor = jsonConvert.convert<String>(json['solecolor']);
	if (solecolor != null) {
		stockListGdStocklist.solecolor = solecolor;
	}
	final String? outprice = jsonConvert.convert<String>(json['outprice']);
	if (outprice != null) {
		stockListGdStocklist.outprice = outprice;
	}
	final String? outmrp = jsonConvert.convert<String>(json['outmrp']);
	if (outmrp != null) {
		stockListGdStocklist.outmrp = outmrp;
	}
	final String? categoryname = jsonConvert.convert<String>(json['categoryname']);
	if (categoryname != null) {
		stockListGdStocklist.categoryname = categoryname;
	}
	final String? colorname = jsonConvert.convert<String>(json['colorname']);
	if (colorname != null) {
		stockListGdStocklist.colorname = colorname;
	}
	return stockListGdStocklist;
}

Map<String, dynamic> $StockListGdStocklistToJson(StockListGdStocklist entity) {
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
	data['mrp'] = entity.mrp;
	data['dieno'] = entity.dieno;
	data['solecolor'] = entity.solecolor;
	data['outprice'] = entity.outprice;
	data['outmrp'] = entity.outmrp;
	data['categoryname'] = entity.categoryname;
	data['colorname'] = entity.colorname;
	return data;
}