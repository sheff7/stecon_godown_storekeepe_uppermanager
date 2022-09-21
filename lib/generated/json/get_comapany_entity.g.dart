import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperPurchasePlan/Model/get_comapany_entity.dart';

GetComapanyEntity $GetComapanyEntityFromJson(Map<String, dynamic> json) {
	final GetComapanyEntity getComapanyEntity = GetComapanyEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		getComapanyEntity.response = response;
	}
	final List<GetComapanyCompanylist>? companylist = jsonConvert.convertListNotNull<GetComapanyCompanylist>(json['companylist']);
	if (companylist != null) {
		getComapanyEntity.companylist = companylist;
	}
	return getComapanyEntity;
}

Map<String, dynamic> $GetComapanyEntityToJson(GetComapanyEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['companylist'] =  entity.companylist?.map((v) => v.toJson()).toList();
	return data;
}

GetComapanyCompanylist $GetComapanyCompanylistFromJson(Map<String, dynamic> json) {
	final GetComapanyCompanylist getComapanyCompanylist = GetComapanyCompanylist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		getComapanyCompanylist.id = id;
	}
	final String? companyname = jsonConvert.convert<String>(json['companyname']);
	if (companyname != null) {
		getComapanyCompanylist.companyname = companyname;
	}
	final String? address = jsonConvert.convert<String>(json['address']);
	if (address != null) {
		getComapanyCompanylist.address = address;
	}
	final String? category = jsonConvert.convert<String>(json['category']);
	if (category != null) {
		getComapanyCompanylist.category = category;
	}
	final String? contactno = jsonConvert.convert<String>(json['contactno']);
	if (contactno != null) {
		getComapanyCompanylist.contactno = contactno;
	}
	final String? email = jsonConvert.convert<String>(json['email']);
	if (email != null) {
		getComapanyCompanylist.email = email;
	}
	final String? country = jsonConvert.convert<String>(json['country']);
	if (country != null) {
		getComapanyCompanylist.country = country;
	}
	final String? state = jsonConvert.convert<String>(json['state']);
	if (state != null) {
		getComapanyCompanylist.state = state;
	}
	final String? district = jsonConvert.convert<String>(json['district']);
	if (district != null) {
		getComapanyCompanylist.district = district;
	}
	final String? city = jsonConvert.convert<String>(json['city']);
	if (city != null) {
		getComapanyCompanylist.city = city;
	}
	final String? pincode = jsonConvert.convert<String>(json['pincode']);
	if (pincode != null) {
		getComapanyCompanylist.pincode = pincode;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		getComapanyCompanylist.status = status;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		getComapanyCompanylist.createddate = createddate;
	}
	final String? countryname = jsonConvert.convert<String>(json['countryname']);
	if (countryname != null) {
		getComapanyCompanylist.countryname = countryname;
	}
	final String? statename = jsonConvert.convert<String>(json['statename']);
	if (statename != null) {
		getComapanyCompanylist.statename = statename;
	}
	final String? districtname = jsonConvert.convert<String>(json['districtname']);
	if (districtname != null) {
		getComapanyCompanylist.districtname = districtname;
	}
	final String? categoryname = jsonConvert.convert<String>(json['categoryname']);
	if (categoryname != null) {
		getComapanyCompanylist.categoryname = categoryname;
	}
	return getComapanyCompanylist;
}

Map<String, dynamic> $GetComapanyCompanylistToJson(GetComapanyCompanylist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['companyname'] = entity.companyname;
	data['address'] = entity.address;
	data['category'] = entity.category;
	data['contactno'] = entity.contactno;
	data['email'] = entity.email;
	data['country'] = entity.country;
	data['state'] = entity.state;
	data['district'] = entity.district;
	data['city'] = entity.city;
	data['pincode'] = entity.pincode;
	data['status'] = entity.status;
	data['createddate'] = entity.createddate;
	data['countryname'] = entity.countryname;
	data['statename'] = entity.statename;
	data['districtname'] = entity.districtname;
	data['categoryname'] = entity.categoryname;
	return data;
}