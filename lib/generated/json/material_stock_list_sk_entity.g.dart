import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/StoreKeeper/MaterialStockSkFn/Model/material_stock_list_sk_entity.dart';

MaterialStockListSkEntity $MaterialStockListSkEntityFromJson(Map<String, dynamic> json) {
	final MaterialStockListSkEntity materialStockListSkEntity = MaterialStockListSkEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		materialStockListSkEntity.response = response;
	}
	final List<MaterialStockListSkStocklist>? stocklist = jsonConvert.convertListNotNull<MaterialStockListSkStocklist>(json['stocklist']);
	if (stocklist != null) {
		materialStockListSkEntity.stocklist = stocklist;
	}
	return materialStockListSkEntity;
}

Map<String, dynamic> $MaterialStockListSkEntityToJson(MaterialStockListSkEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['stocklist'] =  entity.stocklist?.map((v) => v.toJson()).toList();
	return data;
}

MaterialStockListSkStocklist $MaterialStockListSkStocklistFromJson(Map<String, dynamic> json) {
	final MaterialStockListSkStocklist materialStockListSkStocklist = MaterialStockListSkStocklist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		materialStockListSkStocklist.id = id;
	}
	final String? itemid = jsonConvert.convert<String>(json['itemid']);
	if (itemid != null) {
		materialStockListSkStocklist.itemid = itemid;
	}
	final String? categoy = jsonConvert.convert<String>(json['categoy']);
	if (categoy != null) {
		materialStockListSkStocklist.categoy = categoy;
	}
	final String? companyid = jsonConvert.convert<String>(json['companyid']);
	if (companyid != null) {
		materialStockListSkStocklist.companyid = companyid;
	}
	final String? type = jsonConvert.convert<String>(json['type']);
	if (type != null) {
		materialStockListSkStocklist.type = type;
	}
	final String? stock = jsonConvert.convert<String>(json['stock']);
	if (stock != null) {
		materialStockListSkStocklist.stock = stock;
	}
	final String? laststockupdateddate = jsonConvert.convert<String>(json['laststockupdateddate']);
	if (laststockupdateddate != null) {
		materialStockListSkStocklist.laststockupdateddate = laststockupdateddate;
	}
	final dynamic? laststocktakendate = jsonConvert.convert<dynamic>(json['laststocktakendate']);
	if (laststocktakendate != null) {
		materialStockListSkStocklist.laststocktakendate = laststocktakendate;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		materialStockListSkStocklist.createddate = createddate;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		materialStockListSkStocklist.status = status;
	}
	final String? itemname = jsonConvert.convert<String>(json['itemname']);
	if (itemname != null) {
		materialStockListSkStocklist.itemname = itemname;
	}
	final String? companyname = jsonConvert.convert<String>(json['companyname']);
	if (companyname != null) {
		materialStockListSkStocklist.companyname = companyname;
	}
	return materialStockListSkStocklist;
}

Map<String, dynamic> $MaterialStockListSkStocklistToJson(MaterialStockListSkStocklist entity) {
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