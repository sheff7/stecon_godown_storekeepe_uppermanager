import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/Godown/ProductionPlanFn/Model/production_plan_list_entity.dart';

ProductionPlanListEntity $ProductionPlanListEntityFromJson(Map<String, dynamic> json) {
	final ProductionPlanListEntity productionPlanListEntity = ProductionPlanListEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		productionPlanListEntity.response = response;
	}
	final List<ProductionPlanListProductionlist>? productionlist = jsonConvert.convertListNotNull<ProductionPlanListProductionlist>(json['productionlist']);
	if (productionlist != null) {
		productionPlanListEntity.productionlist = productionlist;
	}
	return productionPlanListEntity;
}

Map<String, dynamic> $ProductionPlanListEntityToJson(ProductionPlanListEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['productionlist'] =  entity.productionlist?.map((v) => v.toJson()).toList();
	return data;
}

ProductionPlanListProductionlist $ProductionPlanListProductionlistFromJson(Map<String, dynamic> json) {
	final ProductionPlanListProductionlist productionPlanListProductionlist = ProductionPlanListProductionlist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		productionPlanListProductionlist.id = id;
	}
	final String? artno = jsonConvert.convert<String>(json['artno']);
	if (artno != null) {
		productionPlanListProductionlist.artno = artno;
	}
	final String? machineno = jsonConvert.convert<String>(json['machineno']);
	if (machineno != null) {
		productionPlanListProductionlist.machineno = machineno;
	}
	final String? dateofproduction = jsonConvert.convert<String>(json['dateofproduction']);
	if (dateofproduction != null) {
		productionPlanListProductionlist.dateofproduction = dateofproduction;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		productionPlanListProductionlist.status = status;
	}
	final String? status1 = jsonConvert.convert<String>(json['status1']);
	if (status1 != null) {
		productionPlanListProductionlist.status1 = status1;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		productionPlanListProductionlist.createddate = createddate;
	}
	final String? dieno = jsonConvert.convert<String>(json['dieno']);
	if (dieno != null) {
		productionPlanListProductionlist.dieno = dieno;
	}
	final String? soulcolor = jsonConvert.convert<String>(json['soulcolor']);
	if (soulcolor != null) {
		productionPlanListProductionlist.soulcolor = soulcolor;
	}
	final String? artnoname = jsonConvert.convert<String>(json['artnoname']);
	if (artnoname != null) {
		productionPlanListProductionlist.artnoname = artnoname;
	}
	final String? machinename = jsonConvert.convert<String>(json['machinename']);
	if (machinename != null) {
		productionPlanListProductionlist.machinename = machinename;
	}
	final String? slno = jsonConvert.convert<String>(json['slno']);
	if (slno != null) {
		productionPlanListProductionlist.slno = slno;
	}
	return productionPlanListProductionlist;
}

Map<String, dynamic> $ProductionPlanListProductionlistToJson(ProductionPlanListProductionlist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['artno'] = entity.artno;
	data['machineno'] = entity.machineno;
	data['dateofproduction'] = entity.dateofproduction;
	data['status'] = entity.status;
	data['status1'] = entity.status1;
	data['createddate'] = entity.createddate;
	data['dieno'] = entity.dieno;
	data['soulcolor'] = entity.soulcolor;
	data['artnoname'] = entity.artnoname;
	data['machinename'] = entity.machinename;
	data['slno'] = entity.slno;
	return data;
}