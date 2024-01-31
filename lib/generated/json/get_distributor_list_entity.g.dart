import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/Godown/ViewBill/Model/get_distributor_list_entity.dart';

GetDistributorListEntity $GetDistributorListEntityFromJson(Map<String, dynamic> json) {
	final GetDistributorListEntity getDistributorListEntity = GetDistributorListEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		getDistributorListEntity.response = response;
	}
	final List<GetDistributorListDistributorslist>? distributorslist = jsonConvert.convertListNotNull<GetDistributorListDistributorslist>(json['distributorslist']);
	if (distributorslist != null) {
		getDistributorListEntity.distributorslist = distributorslist;
	}
	return getDistributorListEntity;
}

Map<String, dynamic> $GetDistributorListEntityToJson(GetDistributorListEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['distributorslist'] =  entity.distributorslist?.map((v) => v.toJson()).toList();
	return data;
}

GetDistributorListDistributorslist $GetDistributorListDistributorslistFromJson(Map<String, dynamic> json) {
	final GetDistributorListDistributorslist getDistributorListDistributorslist = GetDistributorListDistributorslist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		getDistributorListDistributorslist.id = id;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		getDistributorListDistributorslist.name = name;
	}
	final String? dob = jsonConvert.convert<String>(json['dob']);
	if (dob != null) {
		getDistributorListDistributorslist.dob = dob;
	}
	final String? age = jsonConvert.convert<String>(json['age']);
	if (age != null) {
		getDistributorListDistributorslist.age = age;
	}
	final String? address = jsonConvert.convert<String>(json['address']);
	if (address != null) {
		getDistributorListDistributorslist.address = address;
	}
	final String? contactno = jsonConvert.convert<String>(json['contactno']);
	if (contactno != null) {
		getDistributorListDistributorslist.contactno = contactno;
	}
	final String? adharno = jsonConvert.convert<String>(json['adharno']);
	if (adharno != null) {
		getDistributorListDistributorslist.adharno = adharno;
	}
	final String? country = jsonConvert.convert<String>(json['country']);
	if (country != null) {
		getDistributorListDistributorslist.country = country;
	}
	final String? state = jsonConvert.convert<String>(json['state']);
	if (state != null) {
		getDistributorListDistributorslist.state = state;
	}
	final String? district = jsonConvert.convert<String>(json['district']);
	if (district != null) {
		getDistributorListDistributorslist.district = district;
	}
	final String? city = jsonConvert.convert<String>(json['city']);
	if (city != null) {
		getDistributorListDistributorslist.city = city;
	}
	final String? repname = jsonConvert.convert<String>(json['repname']);
	if (repname != null) {
		getDistributorListDistributorslist.repname = repname;
	}
	final String? areacode = jsonConvert.convert<String>(json['areacode']);
	if (areacode != null) {
		getDistributorListDistributorslist.areacode = areacode;
	}
	final String? nationality = jsonConvert.convert<String>(json['nationality']);
	if (nationality != null) {
		getDistributorListDistributorslist.nationality = nationality;
	}
	final String? idcardno = jsonConvert.convert<String>(json['idcardno']);
	if (idcardno != null) {
		getDistributorListDistributorslist.idcardno = idcardno;
	}
	final String? idproofurl = jsonConvert.convert<String>(json['idproofurl']);
	if (idproofurl != null) {
		getDistributorListDistributorslist.idproofurl = idproofurl;
	}
	final String? joiningdate = jsonConvert.convert<String>(json['joiningdate']);
	if (joiningdate != null) {
		getDistributorListDistributorslist.joiningdate = joiningdate;
	}
	final dynamic resignationdate = jsonConvert.convert<dynamic>(json['resignationdate']);
	if (resignationdate != null) {
		getDistributorListDistributorslist.resignationdate = resignationdate;
	}
	final String? username = jsonConvert.convert<String>(json['username']);
	if (username != null) {
		getDistributorListDistributorslist.username = username;
	}
	final String? loginid = jsonConvert.convert<String>(json['loginid']);
	if (loginid != null) {
		getDistributorListDistributorslist.loginid = loginid;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		getDistributorListDistributorslist.status = status;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		getDistributorListDistributorslist.createddate = createddate;
	}
	final String? email = jsonConvert.convert<String>(json['email']);
	if (email != null) {
		getDistributorListDistributorslist.email = email;
	}
	final String? pincode = jsonConvert.convert<String>(json['pincode']);
	if (pincode != null) {
		getDistributorListDistributorslist.pincode = pincode;
	}
	final String? gstno = jsonConvert.convert<String>(json['gstno']);
	if (gstno != null) {
		getDistributorListDistributorslist.gstno = gstno;
	}
	final String? contactno2 = jsonConvert.convert<String>(json['contactno2']);
	if (contactno2 != null) {
		getDistributorListDistributorslist.contactno2 = contactno2;
	}
	return getDistributorListDistributorslist;
}

Map<String, dynamic> $GetDistributorListDistributorslistToJson(GetDistributorListDistributorslist entity) {
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
	data['repname'] = entity.repname;
	data['areacode'] = entity.areacode;
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
	data['gstno'] = entity.gstno;
	data['contactno2'] = entity.contactno2;
	return data;
}