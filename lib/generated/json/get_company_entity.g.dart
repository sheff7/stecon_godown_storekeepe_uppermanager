import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/StoreKeeper/IssuedMaterialSkFn/Model/get_company_entity.dart';

GetCompanyEntity $GetCompanyEntityFromJson(Map<String, dynamic> json) {
	final GetCompanyEntity getCompanyEntity = GetCompanyEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		getCompanyEntity.response = response;
	}
	final List<GetCompanyCompanylist>? companylist = jsonConvert.convertListNotNull<GetCompanyCompanylist>(json['companylist']);
	if (companylist != null) {
		getCompanyEntity.companylist = companylist;
	}
	return getCompanyEntity;
}

Map<String, dynamic> $GetCompanyEntityToJson(GetCompanyEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['companylist'] =  entity.companylist?.map((v) => v.toJson()).toList();
	return data;
}

GetCompanyCompanylist $GetCompanyCompanylistFromJson(Map<String, dynamic> json) {
	final GetCompanyCompanylist getCompanyCompanylist = GetCompanyCompanylist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		getCompanyCompanylist.id = id;
	}
	final String? companyname = jsonConvert.convert<String>(json['companyname']);
	if (companyname != null) {
		getCompanyCompanylist.companyname = companyname;
	}
	final String? address = jsonConvert.convert<String>(json['address']);
	if (address != null) {
		getCompanyCompanylist.address = address;
	}
	final String? category = jsonConvert.convert<String>(json['category']);
	if (category != null) {
		getCompanyCompanylist.category = category;
	}
	final String? contactno = jsonConvert.convert<String>(json['contactno']);
	if (contactno != null) {
		getCompanyCompanylist.contactno = contactno;
	}
	final String? email = jsonConvert.convert<String>(json['email']);
	if (email != null) {
		getCompanyCompanylist.email = email;
	}
	final String? country = jsonConvert.convert<String>(json['country']);
	if (country != null) {
		getCompanyCompanylist.country = country;
	}
	final String? state = jsonConvert.convert<String>(json['state']);
	if (state != null) {
		getCompanyCompanylist.state = state;
	}
	final String? district = jsonConvert.convert<String>(json['district']);
	if (district != null) {
		getCompanyCompanylist.district = district;
	}
	final String? city = jsonConvert.convert<String>(json['city']);
	if (city != null) {
		getCompanyCompanylist.city = city;
	}
	final String? pincode = jsonConvert.convert<String>(json['pincode']);
	if (pincode != null) {
		getCompanyCompanylist.pincode = pincode;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		getCompanyCompanylist.status = status;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		getCompanyCompanylist.createddate = createddate;
	}
	final String? countryname = jsonConvert.convert<String>(json['countryname']);
	if (countryname != null) {
		getCompanyCompanylist.countryname = countryname;
	}
	final String? statename = jsonConvert.convert<String>(json['statename']);
	if (statename != null) {
		getCompanyCompanylist.statename = statename;
	}
	final String? districtname = jsonConvert.convert<String>(json['districtname']);
	if (districtname != null) {
		getCompanyCompanylist.districtname = districtname;
	}
	final String? categoryname = jsonConvert.convert<String>(json['categoryname']);
	if (categoryname != null) {
		getCompanyCompanylist.categoryname = categoryname;
	}
	return getCompanyCompanylist;
}

Map<String, dynamic> $GetCompanyCompanylistToJson(GetCompanyCompanylist entity) {
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