import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/Godown/ProductionPlanFn/Model/productin_plan_single_view_entity.dart';

ProductinPlanSingleViewEntity $ProductinPlanSingleViewEntityFromJson(Map<String, dynamic> json) {
	final ProductinPlanSingleViewEntity productinPlanSingleViewEntity = ProductinPlanSingleViewEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		productinPlanSingleViewEntity.response = response;
	}
	final List<ProductinPlanSingleViewProductionlist>? productionlist = jsonConvert.convertListNotNull<ProductinPlanSingleViewProductionlist>(json['productionlist']);
	if (productionlist != null) {
		productinPlanSingleViewEntity.productionlist = productionlist;
	}
	final List<ProductinPlanSingleViewProductionplanlist>? productionplanlist = jsonConvert.convertListNotNull<ProductinPlanSingleViewProductionplanlist>(json['productionplanlist']);
	if (productionplanlist != null) {
		productinPlanSingleViewEntity.productionplanlist = productionplanlist;
	}
	final List<ProductinPlanSingleViewTotalproductionlist>? totalproductionlist = jsonConvert.convertListNotNull<ProductinPlanSingleViewTotalproductionlist>(json['totalproductionlist']);
	if (totalproductionlist != null) {
		productinPlanSingleViewEntity.totalproductionlist = totalproductionlist;
	}
	final List<ProductinPlanSingleViewTotalupperlist>? totalupperlist = jsonConvert.convertListNotNull<ProductinPlanSingleViewTotalupperlist>(json['totalupperlist']);
	if (totalupperlist != null) {
		productinPlanSingleViewEntity.totalupperlist = totalupperlist;
	}
	return productinPlanSingleViewEntity;
}

Map<String, dynamic> $ProductinPlanSingleViewEntityToJson(ProductinPlanSingleViewEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['productionlist'] =  entity.productionlist?.map((v) => v.toJson()).toList();
	data['productionplanlist'] =  entity.productionplanlist?.map((v) => v.toJson()).toList();
	data['totalproductionlist'] =  entity.totalproductionlist?.map((v) => v.toJson()).toList();
	data['totalupperlist'] =  entity.totalupperlist?.map((v) => v.toJson()).toList();
	return data;
}

ProductinPlanSingleViewProductionlist $ProductinPlanSingleViewProductionlistFromJson(Map<String, dynamic> json) {
	final ProductinPlanSingleViewProductionlist productinPlanSingleViewProductionlist = ProductinPlanSingleViewProductionlist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		productinPlanSingleViewProductionlist.id = id;
	}
	final String? artno = jsonConvert.convert<String>(json['artno']);
	if (artno != null) {
		productinPlanSingleViewProductionlist.artno = artno;
	}
	final String? s1 = jsonConvert.convert<String>(json['s1']);
	if (s1 != null) {
		productinPlanSingleViewProductionlist.s1 = s1;
	}
	final String? s2 = jsonConvert.convert<String>(json['s2']);
	if (s2 != null) {
		productinPlanSingleViewProductionlist.s2 = s2;
	}
	final String? s3 = jsonConvert.convert<String>(json['s3']);
	if (s3 != null) {
		productinPlanSingleViewProductionlist.s3 = s3;
	}
	final String? s4 = jsonConvert.convert<String>(json['s4']);
	if (s4 != null) {
		productinPlanSingleViewProductionlist.s4 = s4;
	}
	final String? s5 = jsonConvert.convert<String>(json['s5']);
	if (s5 != null) {
		productinPlanSingleViewProductionlist.s5 = s5;
	}
	final String? s6 = jsonConvert.convert<String>(json['s6']);
	if (s6 != null) {
		productinPlanSingleViewProductionlist.s6 = s6;
	}
	final String? s7 = jsonConvert.convert<String>(json['s7']);
	if (s7 != null) {
		productinPlanSingleViewProductionlist.s7 = s7;
	}
	final String? s8 = jsonConvert.convert<String>(json['s8']);
	if (s8 != null) {
		productinPlanSingleViewProductionlist.s8 = s8;
	}
	final String? s9 = jsonConvert.convert<String>(json['s9']);
	if (s9 != null) {
		productinPlanSingleViewProductionlist.s9 = s9;
	}
	final String? s10 = jsonConvert.convert<String>(json['s10']);
	if (s10 != null) {
		productinPlanSingleViewProductionlist.s10 = s10;
	}
	final String? s11 = jsonConvert.convert<String>(json['s11']);
	if (s11 != null) {
		productinPlanSingleViewProductionlist.s11 = s11;
	}
	final String? s12 = jsonConvert.convert<String>(json['s12']);
	if (s12 != null) {
		productinPlanSingleViewProductionlist.s12 = s12;
	}
	final String? s13 = jsonConvert.convert<String>(json['s13']);
	if (s13 != null) {
		productinPlanSingleViewProductionlist.s13 = s13;
	}
	final String? productionid = jsonConvert.convert<String>(json['productionid']);
	if (productionid != null) {
		productinPlanSingleViewProductionlist.productionid = productionid;
	}
	final String? distributorid = jsonConvert.convert<String>(json['distributorid']);
	if (distributorid != null) {
		productinPlanSingleViewProductionlist.distributorid = distributorid;
	}
	final String? totalpairs = jsonConvert.convert<String>(json['totalpairs']);
	if (totalpairs != null) {
		productinPlanSingleViewProductionlist.totalpairs = totalpairs;
	}
	final String? box = jsonConvert.convert<String>(json['box']);
	if (box != null) {
		productinPlanSingleViewProductionlist.box = box;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		productinPlanSingleViewProductionlist.createddate = createddate;
	}
	final String? date = jsonConvert.convert<String>(json['date']);
	if (date != null) {
		productinPlanSingleViewProductionlist.date = date;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		productinPlanSingleViewProductionlist.status = status;
	}
	final String? orderno = jsonConvert.convert<String>(json['orderno']);
	if (orderno != null) {
		productinPlanSingleViewProductionlist.orderno = orderno;
	}
	final String? orderid = jsonConvert.convert<String>(json['orderid']);
	if (orderid != null) {
		productinPlanSingleViewProductionlist.orderid = orderid;
	}
	final String? artnoname = jsonConvert.convert<String>(json['artnoname']);
	if (artnoname != null) {
		productinPlanSingleViewProductionlist.artnoname = artnoname;
	}
	final dynamic? coverimageurl = jsonConvert.convert<dynamic>(json['coverimageurl']);
	if (coverimageurl != null) {
		productinPlanSingleViewProductionlist.coverimageurl = coverimageurl;
	}
	final String? distributorname = jsonConvert.convert<String>(json['distributorname']);
	if (distributorname != null) {
		productinPlanSingleViewProductionlist.distributorname = distributorname;
	}
	return productinPlanSingleViewProductionlist;
}

Map<String, dynamic> $ProductinPlanSingleViewProductionlistToJson(ProductinPlanSingleViewProductionlist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['artno'] = entity.artno;
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
	data['productionid'] = entity.productionid;
	data['distributorid'] = entity.distributorid;
	data['totalpairs'] = entity.totalpairs;
	data['box'] = entity.box;
	data['createddate'] = entity.createddate;
	data['date'] = entity.date;
	data['status'] = entity.status;
	data['orderno'] = entity.orderno;
	data['orderid'] = entity.orderid;
	data['artnoname'] = entity.artnoname;
	data['coverimageurl'] = entity.coverimageurl;
	data['distributorname'] = entity.distributorname;
	return data;
}

ProductinPlanSingleViewProductionplanlist $ProductinPlanSingleViewProductionplanlistFromJson(Map<String, dynamic> json) {
	final ProductinPlanSingleViewProductionplanlist productinPlanSingleViewProductionplanlist = ProductinPlanSingleViewProductionplanlist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		productinPlanSingleViewProductionplanlist.id = id;
	}
	final String? artno = jsonConvert.convert<String>(json['artno']);
	if (artno != null) {
		productinPlanSingleViewProductionplanlist.artno = artno;
	}
	final String? machineno = jsonConvert.convert<String>(json['machineno']);
	if (machineno != null) {
		productinPlanSingleViewProductionplanlist.machineno = machineno;
	}
	final String? dateofproduction = jsonConvert.convert<String>(json['dateofproduction']);
	if (dateofproduction != null) {
		productinPlanSingleViewProductionplanlist.dateofproduction = dateofproduction;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		productinPlanSingleViewProductionplanlist.status = status;
	}
	final String? status1 = jsonConvert.convert<String>(json['status1']);
	if (status1 != null) {
		productinPlanSingleViewProductionplanlist.status1 = status1;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		productinPlanSingleViewProductionplanlist.createddate = createddate;
	}
	final String? dieno = jsonConvert.convert<String>(json['dieno']);
	if (dieno != null) {
		productinPlanSingleViewProductionplanlist.dieno = dieno;
	}
	final String? soulcolor = jsonConvert.convert<String>(json['soulcolor']);
	if (soulcolor != null) {
		productinPlanSingleViewProductionplanlist.soulcolor = soulcolor;
	}
	final String? artnoname = jsonConvert.convert<String>(json['artnoname']);
	if (artnoname != null) {
		productinPlanSingleViewProductionplanlist.artnoname = artnoname;
	}
	final String? coverimageurl = jsonConvert.convert<String>(json['coverimageurl']);
	if (coverimageurl != null) {
		productinPlanSingleViewProductionplanlist.coverimageurl = coverimageurl;
	}
	final String? machinename = jsonConvert.convert<String>(json['machinename']);
	if (machinename != null) {
		productinPlanSingleViewProductionplanlist.machinename = machinename;
	}
	final String? slno = jsonConvert.convert<String>(json['slno']);
	if (slno != null) {
		productinPlanSingleViewProductionplanlist.slno = slno;
	}
	return productinPlanSingleViewProductionplanlist;
}

Map<String, dynamic> $ProductinPlanSingleViewProductionplanlistToJson(ProductinPlanSingleViewProductionplanlist entity) {
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
	data['coverimageurl'] = entity.coverimageurl;
	data['machinename'] = entity.machinename;
	data['slno'] = entity.slno;
	return data;
}

ProductinPlanSingleViewTotalproductionlist $ProductinPlanSingleViewTotalproductionlistFromJson(Map<String, dynamic> json) {
	final ProductinPlanSingleViewTotalproductionlist productinPlanSingleViewTotalproductionlist = ProductinPlanSingleViewTotalproductionlist();
	final String? s1 = jsonConvert.convert<String>(json['s1']);
	if (s1 != null) {
		productinPlanSingleViewTotalproductionlist.s1 = s1;
	}
	final String? s2 = jsonConvert.convert<String>(json['s2']);
	if (s2 != null) {
		productinPlanSingleViewTotalproductionlist.s2 = s2;
	}
	final String? s3 = jsonConvert.convert<String>(json['s3']);
	if (s3 != null) {
		productinPlanSingleViewTotalproductionlist.s3 = s3;
	}
	final String? s4 = jsonConvert.convert<String>(json['s4']);
	if (s4 != null) {
		productinPlanSingleViewTotalproductionlist.s4 = s4;
	}
	final int? s5 = jsonConvert.convert<int>(json['s5']);
	if (s5 != null) {
		productinPlanSingleViewTotalproductionlist.s5 = s5;
	}
	final int? s6 = jsonConvert.convert<int>(json['s6']);
	if (s6 != null) {
		productinPlanSingleViewTotalproductionlist.s6 = s6;
	}
	final int? s7 = jsonConvert.convert<int>(json['s7']);
	if (s7 != null) {
		productinPlanSingleViewTotalproductionlist.s7 = s7;
	}
	final int? s8 = jsonConvert.convert<int>(json['s8']);
	if (s8 != null) {
		productinPlanSingleViewTotalproductionlist.s8 = s8;
	}
	final int? s9 = jsonConvert.convert<int>(json['s9']);
	if (s9 != null) {
		productinPlanSingleViewTotalproductionlist.s9 = s9;
	}
	final String? s10 = jsonConvert.convert<String>(json['s10']);
	if (s10 != null) {
		productinPlanSingleViewTotalproductionlist.s10 = s10;
	}
	final String? s11 = jsonConvert.convert<String>(json['s11']);
	if (s11 != null) {
		productinPlanSingleViewTotalproductionlist.s11 = s11;
	}
	final String? s12 = jsonConvert.convert<String>(json['s12']);
	if (s12 != null) {
		productinPlanSingleViewTotalproductionlist.s12 = s12;
	}
	final String? s13 = jsonConvert.convert<String>(json['s13']);
	if (s13 != null) {
		productinPlanSingleViewTotalproductionlist.s13 = s13;
	}
	return productinPlanSingleViewTotalproductionlist;
}

Map<String, dynamic> $ProductinPlanSingleViewTotalproductionlistToJson(ProductinPlanSingleViewTotalproductionlist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
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
	return data;
}

ProductinPlanSingleViewTotalupperlist $ProductinPlanSingleViewTotalupperlistFromJson(Map<String, dynamic> json) {
	final ProductinPlanSingleViewTotalupperlist productinPlanSingleViewTotalupperlist = ProductinPlanSingleViewTotalupperlist();
	final String? s1 = jsonConvert.convert<String>(json['s1']);
	if (s1 != null) {
		productinPlanSingleViewTotalupperlist.s1 = s1;
	}
	final String? s2 = jsonConvert.convert<String>(json['s2']);
	if (s2 != null) {
		productinPlanSingleViewTotalupperlist.s2 = s2;
	}
	final String? s3 = jsonConvert.convert<String>(json['s3']);
	if (s3 != null) {
		productinPlanSingleViewTotalupperlist.s3 = s3;
	}
	final String? s4 = jsonConvert.convert<String>(json['s4']);
	if (s4 != null) {
		productinPlanSingleViewTotalupperlist.s4 = s4;
	}
	final int? s5 = jsonConvert.convert<int>(json['s5']);
	if (s5 != null) {
		productinPlanSingleViewTotalupperlist.s5 = s5;
	}
	final int? s6 = jsonConvert.convert<int>(json['s6']);
	if (s6 != null) {
		productinPlanSingleViewTotalupperlist.s6 = s6;
	}
	final int? s7 = jsonConvert.convert<int>(json['s7']);
	if (s7 != null) {
		productinPlanSingleViewTotalupperlist.s7 = s7;
	}
	final int? s8 = jsonConvert.convert<int>(json['s8']);
	if (s8 != null) {
		productinPlanSingleViewTotalupperlist.s8 = s8;
	}
	final int? s9 = jsonConvert.convert<int>(json['s9']);
	if (s9 != null) {
		productinPlanSingleViewTotalupperlist.s9 = s9;
	}
	final String? s10 = jsonConvert.convert<String>(json['s10']);
	if (s10 != null) {
		productinPlanSingleViewTotalupperlist.s10 = s10;
	}
	final String? s11 = jsonConvert.convert<String>(json['s11']);
	if (s11 != null) {
		productinPlanSingleViewTotalupperlist.s11 = s11;
	}
	final String? s12 = jsonConvert.convert<String>(json['s12']);
	if (s12 != null) {
		productinPlanSingleViewTotalupperlist.s12 = s12;
	}
	final String? s13 = jsonConvert.convert<String>(json['s13']);
	if (s13 != null) {
		productinPlanSingleViewTotalupperlist.s13 = s13;
	}
	return productinPlanSingleViewTotalupperlist;
}

Map<String, dynamic> $ProductinPlanSingleViewTotalupperlistToJson(ProductinPlanSingleViewTotalupperlist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
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
	return data;
}