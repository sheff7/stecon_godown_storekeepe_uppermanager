import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/StoreKeeper/MaterialStockSkFn/Model/material_stock_single_view_sk_entity.dart';

MaterialStockSingleViewSkEntity $MaterialStockSingleViewSkEntityFromJson(Map<String, dynamic> json) {
	final MaterialStockSingleViewSkEntity materialStockSingleViewSkEntity = MaterialStockSingleViewSkEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		materialStockSingleViewSkEntity.response = response;
	}
	final List<MaterialStockSingleViewSkStocklist>? stocklist = jsonConvert.convertListNotNull<MaterialStockSingleViewSkStocklist>(json['stocklist']);
	if (stocklist != null) {
		materialStockSingleViewSkEntity.stocklist = stocklist;
	}
	return materialStockSingleViewSkEntity;
}

Map<String, dynamic> $MaterialStockSingleViewSkEntityToJson(MaterialStockSingleViewSkEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['stocklist'] =  entity.stocklist?.map((v) => v.toJson()).toList();
	return data;
}

MaterialStockSingleViewSkStocklist $MaterialStockSingleViewSkStocklistFromJson(Map<String, dynamic> json) {
	final MaterialStockSingleViewSkStocklist materialStockSingleViewSkStocklist = MaterialStockSingleViewSkStocklist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		materialStockSingleViewSkStocklist.id = id;
	}
	final String? itemid = jsonConvert.convert<String>(json['itemid']);
	if (itemid != null) {
		materialStockSingleViewSkStocklist.itemid = itemid;
	}
	final String? categoy = jsonConvert.convert<String>(json['categoy']);
	if (categoy != null) {
		materialStockSingleViewSkStocklist.categoy = categoy;
	}
	final String? companyid = jsonConvert.convert<String>(json['companyid']);
	if (companyid != null) {
		materialStockSingleViewSkStocklist.companyid = companyid;
	}
	final String? type = jsonConvert.convert<String>(json['type']);
	if (type != null) {
		materialStockSingleViewSkStocklist.type = type;
	}
	final String? stock = jsonConvert.convert<String>(json['stock']);
	if (stock != null) {
		materialStockSingleViewSkStocklist.stock = stock;
	}
	final String? laststockupdateddate = jsonConvert.convert<String>(json['laststockupdateddate']);
	if (laststockupdateddate != null) {
		materialStockSingleViewSkStocklist.laststockupdateddate = laststockupdateddate;
	}
	final dynamic? laststocktakendate = jsonConvert.convert<dynamic>(json['laststocktakendate']);
	if (laststocktakendate != null) {
		materialStockSingleViewSkStocklist.laststocktakendate = laststocktakendate;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		materialStockSingleViewSkStocklist.createddate = createddate;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		materialStockSingleViewSkStocklist.status = status;
	}
	final String? itemname = jsonConvert.convert<String>(json['itemname']);
	if (itemname != null) {
		materialStockSingleViewSkStocklist.itemname = itemname;
	}
	final String? companyname = jsonConvert.convert<String>(json['companyname']);
	if (companyname != null) {
		materialStockSingleViewSkStocklist.companyname = companyname;
	}
	return materialStockSingleViewSkStocklist;
}

Map<String, dynamic> $MaterialStockSingleViewSkStocklistToJson(MaterialStockSingleViewSkStocklist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['itemid'] = entity.itemid;
	data['categoy'] = entity.categoy;
	data['companyid'] = entity.companyid;
	data['type'] = entity.type;
	data['stock'] = entity.stock;
	data['laststockupdateddate'] = entity.laststockupdateddate;
	data['laststocktakendate'] = entity.laststocktakendate;
	data['createddate'] = entity.createddate;
	data['status'] = entity.status;
	data['itemname'] = entity.itemname;
	data['companyname'] = entity.companyname;
	return data;
}