import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UmProfileFn/Model/um_profile_entity.dart';

UmProfileEntity $UmProfileEntityFromJson(Map<String, dynamic> json) {
	final UmProfileEntity umProfileEntity = UmProfileEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		umProfileEntity.response = response;
	}
	final List<UmProfileRepresentativelist>? representativelist = jsonConvert.convertListNotNull<UmProfileRepresentativelist>(json['representativelist']);
	if (representativelist != null) {
		umProfileEntity.representativelist = representativelist;
	}
	return umProfileEntity;
}

Map<String, dynamic> $UmProfileEntityToJson(UmProfileEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['representativelist'] =  entity.representativelist?.map((v) => v.toJson()).toList();
	return data;
}

UmProfileRepresentativelist $UmProfileRepresentativelistFromJson(Map<String, dynamic> json) {
	final UmProfileRepresentativelist umProfileRepresentativelist = UmProfileRepresentativelist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		umProfileRepresentativelist.id = id;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		umProfileRepresentativelist.name = name;
	}
	final String? dob = jsonConvert.convert<String>(json['dob']);
	if (dob != null) {
		umProfileRepresentativelist.dob = dob;
	}
	final String? age = jsonConvert.convert<String>(json['age']);
	if (age != null) {
		umProfileRepresentativelist.age = age;
	}
	final String? address = jsonConvert.convert<String>(json['address']);
	if (address != null) {
		umProfileRepresentativelist.address = address;
	}
	final String? contactno = jsonConvert.convert<String>(json['contactno']);
	if (contactno != null) {
		umProfileRepresentativelist.contactno = contactno;
	}
	final String? adharno = jsonConvert.convert<String>(json['adharno']);
	if (adharno != null) {
		umProfileRepresentativelist.adharno = adharno;
	}
	final String? country = jsonConvert.convert<String>(json['country']);
	if (country != null) {
		umProfileRepresentativelist.country = country;
	}
	final String? state = jsonConvert.convert<String>(json['state']);
	if (state != null) {
		umProfileRepresentativelist.state = state;
	}
	final String? district = jsonConvert.convert<String>(json['district']);
	if (district != null) {
		umProfileRepresentativelist.district = district;
	}
	final String? city = jsonConvert.convert<String>(json['city']);
	if (city != null) {
		umProfileRepresentativelist.city = city;
	}
	final String? nationality = jsonConvert.convert<String>(json['nationality']);
	if (nationality != null) {
		umProfileRepresentativelist.nationality = nationality;
	}
	final String? idcardno = jsonConvert.convert<String>(json['idcardno']);
	if (idcardno != null) {
		umProfileRepresentativelist.idcardno = idcardno;
	}
	final String? idproofurl = jsonConvert.convert<String>(json['idproofurl']);
	if (idproofurl != null) {
		umProfileRepresentativelist.idproofurl = idproofurl;
	}
	final String? joiningdate = jsonConvert.convert<String>(json['joiningdate']);
	if (joiningdate != null) {
		umProfileRepresentativelist.joiningdate = joiningdate;
	}
	final String? resignationdate = jsonConvert.convert<String>(json['resignationdate']);
	if (resignationdate != null) {
		umProfileRepresentativelist.resignationdate = resignationdate;
	}
	final String? username = jsonConvert.convert<String>(json['username']);
	if (username != null) {
		umProfileRepresentativelist.username = username;
	}
	final String? loginid = jsonConvert.convert<String>(json['loginid']);
	if (loginid != null) {
		umProfileRepresentativelist.loginid = loginid;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		umProfileRepresentativelist.status = status;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		umProfileRepresentativelist.createddate = createddate;
	}
	final String? email = jsonConvert.convert<String>(json['email']);
	if (email != null) {
		umProfileRepresentativelist.email = email;
	}
	final String? pincode = jsonConvert.convert<String>(json['pincode']);
	if (pincode != null) {
		umProfileRepresentativelist.pincode = pincode;
	}
	final String? designation = jsonConvert.convert<String>(json['designation']);
	if (designation != null) {
		umProfileRepresentativelist.designation = designation;
	}
	final String? countryname = jsonConvert.convert<String>(json['countryname']);
	if (countryname != null) {
		umProfileRepresentativelist.countryname = countryname;
	}
	final String? statename = jsonConvert.convert<String>(json['statename']);
	if (statename != null) {
		umProfileRepresentativelist.statename = statename;
	}
	final String? districtname = jsonConvert.convert<String>(json['districtname']);
	if (districtname != null) {
		umProfileRepresentativelist.districtname = districtname;
	}
	return umProfileRepresentativelist;
}

Map<String, dynamic> $UmProfileRepresentativelistToJson(UmProfileRepresentativelist entity) {
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
	data['countryname'] = entity.countryname;
	data['statename'] = entity.statename;
	data['districtname'] = entity.districtname;
	return data;
}