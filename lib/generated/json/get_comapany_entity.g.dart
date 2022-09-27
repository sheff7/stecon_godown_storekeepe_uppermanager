import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperPurchasePlan/Model/get_comapany_entity.dart';

GetComapanyEntity $GetComapanyEntityFromJson(Map<String, dynamic> json) {
	final GetComapanyEntity getComapanyEntity = GetComapanyEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		getComapanyEntity.response = response;
	}
	final List<GetComapanyUpperproductionmanagerlist>? upperproductionmanagerlist = jsonConvert.convertListNotNull<GetComapanyUpperproductionmanagerlist>(json['upperproductionmanagerlist']);
	if (upperproductionmanagerlist != null) {
		getComapanyEntity.upperproductionmanagerlist = upperproductionmanagerlist;
	}
	return getComapanyEntity;
}

Map<String, dynamic> $GetComapanyEntityToJson(GetComapanyEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['upperproductionmanagerlist'] =  entity.upperproductionmanagerlist?.map((v) => v.toJson()).toList();
	return data;
}

GetComapanyUpperproductionmanagerlist $GetComapanyUpperproductionmanagerlistFromJson(Map<String, dynamic> json) {
	final GetComapanyUpperproductionmanagerlist getComapanyUpperproductionmanagerlist = GetComapanyUpperproductionmanagerlist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		getComapanyUpperproductionmanagerlist.id = id;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		getComapanyUpperproductionmanagerlist.name = name;
	}
	final String? dob = jsonConvert.convert<String>(json['dob']);
	if (dob != null) {
		getComapanyUpperproductionmanagerlist.dob = dob;
	}
	final String? age = jsonConvert.convert<String>(json['age']);
	if (age != null) {
		getComapanyUpperproductionmanagerlist.age = age;
	}
	final String? address = jsonConvert.convert<String>(json['address']);
	if (address != null) {
		getComapanyUpperproductionmanagerlist.address = address;
	}
	final String? contactno = jsonConvert.convert<String>(json['contactno']);
	if (contactno != null) {
		getComapanyUpperproductionmanagerlist.contactno = contactno;
	}
	final String? adharno = jsonConvert.convert<String>(json['adharno']);
	if (adharno != null) {
		getComapanyUpperproductionmanagerlist.adharno = adharno;
	}
	final String? country = jsonConvert.convert<String>(json['country']);
	if (country != null) {
		getComapanyUpperproductionmanagerlist.country = country;
	}
	final String? state = jsonConvert.convert<String>(json['state']);
	if (state != null) {
		getComapanyUpperproductionmanagerlist.state = state;
	}
	final String? district = jsonConvert.convert<String>(json['district']);
	if (district != null) {
		getComapanyUpperproductionmanagerlist.district = district;
	}
	final String? city = jsonConvert.convert<String>(json['city']);
	if (city != null) {
		getComapanyUpperproductionmanagerlist.city = city;
	}
	final String? nationality = jsonConvert.convert<String>(json['nationality']);
	if (nationality != null) {
		getComapanyUpperproductionmanagerlist.nationality = nationality;
	}
	final String? idcardno = jsonConvert.convert<String>(json['idcardno']);
	if (idcardno != null) {
		getComapanyUpperproductionmanagerlist.idcardno = idcardno;
	}
	final String? idproofurl = jsonConvert.convert<String>(json['idproofurl']);
	if (idproofurl != null) {
		getComapanyUpperproductionmanagerlist.idproofurl = idproofurl;
	}
	final String? joiningdate = jsonConvert.convert<String>(json['joiningdate']);
	if (joiningdate != null) {
		getComapanyUpperproductionmanagerlist.joiningdate = joiningdate;
	}
	final String? resignationdate = jsonConvert.convert<String>(json['resignationdate']);
	if (resignationdate != null) {
		getComapanyUpperproductionmanagerlist.resignationdate = resignationdate;
	}
	final String? username = jsonConvert.convert<String>(json['username']);
	if (username != null) {
		getComapanyUpperproductionmanagerlist.username = username;
	}
	final String? loginid = jsonConvert.convert<String>(json['loginid']);
	if (loginid != null) {
		getComapanyUpperproductionmanagerlist.loginid = loginid;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		getComapanyUpperproductionmanagerlist.status = status;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		getComapanyUpperproductionmanagerlist.createddate = createddate;
	}
	final String? email = jsonConvert.convert<String>(json['email']);
	if (email != null) {
		getComapanyUpperproductionmanagerlist.email = email;
	}
	final String? pincode = jsonConvert.convert<String>(json['pincode']);
	if (pincode != null) {
		getComapanyUpperproductionmanagerlist.pincode = pincode;
	}
	final String? designation = jsonConvert.convert<String>(json['designation']);
	if (designation != null) {
		getComapanyUpperproductionmanagerlist.designation = designation;
	}
	return getComapanyUpperproductionmanagerlist;
}

Map<String, dynamic> $GetComapanyUpperproductionmanagerlistToJson(GetComapanyUpperproductionmanagerlist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['dob'] = entity.dob;
	data['age'] = entity.age;
	data['address'] = entity.address;
	data['contactno'] = entity.contactno;
	data['adharno'] = entity.adharno;
	data['country'] = entity.country;
	data['state'] = entity.state;
	data['district'] = entity.district;
	data['city'] = entity.city;
	data['nationality'] = entity.nationality;
	data['idcardno'] = entity.idcardno;
	data['idproofurl'] = entity.idproofurl;
	data['joiningdate'] = entity.joiningdate;
	data['resignationdate'] = entity.resignationdate;
	data['username'] = entity.username;
	data['loginid'] = entity.loginid;
	data['status'] = entity.status;
	data['createddate'] = entity.createddate;
	data['email'] = entity.email;
	data['pincode'] = entity.pincode;
	data['designation'] = entity.designation;
	return data;
}