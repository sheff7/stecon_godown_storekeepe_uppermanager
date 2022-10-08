import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/Godown/ProfileGD/model/profile_g_d_entity.dart';

ProfileGDEntity $ProfileGDEntityFromJson(Map<String, dynamic> json) {
	final ProfileGDEntity profileGDEntity = ProfileGDEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		profileGDEntity.response = response;
	}
	final List<ProfileGDStorekeeperlist>? storekeeperlist = jsonConvert.convertListNotNull<ProfileGDStorekeeperlist>(json['storekeeperlist']);
	if (storekeeperlist != null) {
		profileGDEntity.storekeeperlist = storekeeperlist;
	}
	return profileGDEntity;
}

Map<String, dynamic> $ProfileGDEntityToJson(ProfileGDEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['storekeeperlist'] =  entity.storekeeperlist?.map((v) => v.toJson()).toList();
	return data;
}

ProfileGDStorekeeperlist $ProfileGDStorekeeperlistFromJson(Map<String, dynamic> json) {
	final ProfileGDStorekeeperlist profileGDStorekeeperlist = ProfileGDStorekeeperlist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		profileGDStorekeeperlist.id = id;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		profileGDStorekeeperlist.name = name;
	}
	final String? dob = jsonConvert.convert<String>(json['dob']);
	if (dob != null) {
		profileGDStorekeeperlist.dob = dob;
	}
	final String? age = jsonConvert.convert<String>(json['age']);
	if (age != null) {
		profileGDStorekeeperlist.age = age;
	}
	final String? address = jsonConvert.convert<String>(json['address']);
	if (address != null) {
		profileGDStorekeeperlist.address = address;
	}
	final String? contactno = jsonConvert.convert<String>(json['contactno']);
	if (contactno != null) {
		profileGDStorekeeperlist.contactno = contactno;
	}
	final String? adharno = jsonConvert.convert<String>(json['adharno']);
	if (adharno != null) {
		profileGDStorekeeperlist.adharno = adharno;
	}
	final String? country = jsonConvert.convert<String>(json['country']);
	if (country != null) {
		profileGDStorekeeperlist.country = country;
	}
	final String? state = jsonConvert.convert<String>(json['state']);
	if (state != null) {
		profileGDStorekeeperlist.state = state;
	}
	final String? district = jsonConvert.convert<String>(json['district']);
	if (district != null) {
		profileGDStorekeeperlist.district = district;
	}
	final String? city = jsonConvert.convert<String>(json['city']);
	if (city != null) {
		profileGDStorekeeperlist.city = city;
	}
	final String? nationality = jsonConvert.convert<String>(json['nationality']);
	if (nationality != null) {
		profileGDStorekeeperlist.nationality = nationality;
	}
	final String? idcardno = jsonConvert.convert<String>(json['idcardno']);
	if (idcardno != null) {
		profileGDStorekeeperlist.idcardno = idcardno;
	}
	final dynamic? idproofurl = jsonConvert.convert<dynamic>(json['idproofurl']);
	if (idproofurl != null) {
		profileGDStorekeeperlist.idproofurl = idproofurl;
	}
	final String? joiningdate = jsonConvert.convert<String>(json['joiningdate']);
	if (joiningdate != null) {
		profileGDStorekeeperlist.joiningdate = joiningdate;
	}
	final dynamic? resignationdate = jsonConvert.convert<dynamic>(json['resignationdate']);
	if (resignationdate != null) {
		profileGDStorekeeperlist.resignationdate = resignationdate;
	}
	final String? designation = jsonConvert.convert<String>(json['designation']);
	if (designation != null) {
		profileGDStorekeeperlist.designation = designation;
	}
	final String? username = jsonConvert.convert<String>(json['username']);
	if (username != null) {
		profileGDStorekeeperlist.username = username;
	}
	final String? loginid = jsonConvert.convert<String>(json['loginid']);
	if (loginid != null) {
		profileGDStorekeeperlist.loginid = loginid;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		profileGDStorekeeperlist.status = status;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		profileGDStorekeeperlist.createddate = createddate;
	}
	final String? email = jsonConvert.convert<String>(json['email']);
	if (email != null) {
		profileGDStorekeeperlist.email = email;
	}
	final String? pincode = jsonConvert.convert<String>(json['pincode']);
	if (pincode != null) {
		profileGDStorekeeperlist.pincode = pincode;
	}
	final String? countryname = jsonConvert.convert<String>(json['countryname']);
	if (countryname != null) {
		profileGDStorekeeperlist.countryname = countryname;
	}
	final String? statename = jsonConvert.convert<String>(json['statename']);
	if (statename != null) {
		profileGDStorekeeperlist.statename = statename;
	}
	final String? districtname = jsonConvert.convert<String>(json['districtname']);
	if (districtname != null) {
		profileGDStorekeeperlist.districtname = districtname;
	}
	return profileGDStorekeeperlist;
}

Map<String, dynamic> $ProfileGDStorekeeperlistToJson(ProfileGDStorekeeperlist entity) {
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
	data['designation'] = entity.designation;
	data['username'] = entity.username;
	data['loginid'] = entity.loginid;
	data['status'] = entity.status;
	data['createddate'] = entity.createddate;
	data['email'] = entity.email;
	data['pincode'] = entity.pincode;
	data['countryname'] = entity.countryname;
	data['statename'] = entity.statename;
	data['districtname'] = entity.districtname;
	return data;
}