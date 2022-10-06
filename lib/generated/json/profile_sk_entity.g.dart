import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/StoreKeeper/profileSK/model/profile_sk_entity.dart';

ProfileSkEntity $ProfileSkEntityFromJson(Map<String, dynamic> json) {
	final ProfileSkEntity profileSkEntity = ProfileSkEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		profileSkEntity.response = response;
	}
	final List<ProfileSkStorekeeperlist>? storekeeperlist = jsonConvert.convertListNotNull<ProfileSkStorekeeperlist>(json['storekeeperlist']);
	if (storekeeperlist != null) {
		profileSkEntity.storekeeperlist = storekeeperlist;
	}
	return profileSkEntity;
}

Map<String, dynamic> $ProfileSkEntityToJson(ProfileSkEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['storekeeperlist'] =  entity.storekeeperlist?.map((v) => v.toJson()).toList();
	return data;
}

ProfileSkStorekeeperlist $ProfileSkStorekeeperlistFromJson(Map<String, dynamic> json) {
	final ProfileSkStorekeeperlist profileSkStorekeeperlist = ProfileSkStorekeeperlist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		profileSkStorekeeperlist.id = id;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		profileSkStorekeeperlist.name = name;
	}
	final String? dob = jsonConvert.convert<String>(json['dob']);
	if (dob != null) {
		profileSkStorekeeperlist.dob = dob;
	}
	final String? age = jsonConvert.convert<String>(json['age']);
	if (age != null) {
		profileSkStorekeeperlist.age = age;
	}
	final String? address = jsonConvert.convert<String>(json['address']);
	if (address != null) {
		profileSkStorekeeperlist.address = address;
	}
	final String? contactno = jsonConvert.convert<String>(json['contactno']);
	if (contactno != null) {
		profileSkStorekeeperlist.contactno = contactno;
	}
	final String? adharno = jsonConvert.convert<String>(json['adharno']);
	if (adharno != null) {
		profileSkStorekeeperlist.adharno = adharno;
	}
	final String? country = jsonConvert.convert<String>(json['country']);
	if (country != null) {
		profileSkStorekeeperlist.country = country;
	}
	final String? state = jsonConvert.convert<String>(json['state']);
	if (state != null) {
		profileSkStorekeeperlist.state = state;
	}
	final String? district = jsonConvert.convert<String>(json['district']);
	if (district != null) {
		profileSkStorekeeperlist.district = district;
	}
	final String? city = jsonConvert.convert<String>(json['city']);
	if (city != null) {
		profileSkStorekeeperlist.city = city;
	}
	final String? nationality = jsonConvert.convert<String>(json['nationality']);
	if (nationality != null) {
		profileSkStorekeeperlist.nationality = nationality;
	}
	final String? idcardno = jsonConvert.convert<String>(json['idcardno']);
	if (idcardno != null) {
		profileSkStorekeeperlist.idcardno = idcardno;
	}
	final String? idproofurl = jsonConvert.convert<String>(json['idproofurl']);
	if (idproofurl != null) {
		profileSkStorekeeperlist.idproofurl = idproofurl;
	}
	final String? joiningdate = jsonConvert.convert<String>(json['joiningdate']);
	if (joiningdate != null) {
		profileSkStorekeeperlist.joiningdate = joiningdate;
	}
	final dynamic? resignationdate = jsonConvert.convert<dynamic>(json['resignationdate']);
	if (resignationdate != null) {
		profileSkStorekeeperlist.resignationdate = resignationdate;
	}
	final String? username = jsonConvert.convert<String>(json['username']);
	if (username != null) {
		profileSkStorekeeperlist.username = username;
	}
	final String? loginid = jsonConvert.convert<String>(json['loginid']);
	if (loginid != null) {
		profileSkStorekeeperlist.loginid = loginid;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		profileSkStorekeeperlist.status = status;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		profileSkStorekeeperlist.createddate = createddate;
	}
	final String? email = jsonConvert.convert<String>(json['email']);
	if (email != null) {
		profileSkStorekeeperlist.email = email;
	}
	final String? pincode = jsonConvert.convert<String>(json['pincode']);
	if (pincode != null) {
		profileSkStorekeeperlist.pincode = pincode;
	}
	final String? designation = jsonConvert.convert<String>(json['designation']);
	if (designation != null) {
		profileSkStorekeeperlist.designation = designation;
	}
	final String? countryname = jsonConvert.convert<String>(json['countryname']);
	if (countryname != null) {
		profileSkStorekeeperlist.countryname = countryname;
	}
	final String? statename = jsonConvert.convert<String>(json['statename']);
	if (statename != null) {
		profileSkStorekeeperlist.statename = statename;
	}
	final String? districtname = jsonConvert.convert<String>(json['districtname']);
	if (districtname != null) {
		profileSkStorekeeperlist.districtname = districtname;
	}
	return profileSkStorekeeperlist;
}

Map<String, dynamic> $ProfileSkStorekeeperlistToJson(ProfileSkStorekeeperlist entity) {
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