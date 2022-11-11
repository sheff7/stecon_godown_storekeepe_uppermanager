import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/Godown/viewOrderGD/model/get_distributors_entity.dart';

GetDistributorsEntity $GetDistributorsEntityFromJson(Map<String, dynamic> json) {
	final GetDistributorsEntity getDistributorsEntity = GetDistributorsEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		getDistributorsEntity.response = response;
	}
	final List<GetDistributorsDistributorslist>? distributorslist = jsonConvert.convertListNotNull<GetDistributorsDistributorslist>(json['distributorslist']);
	if (distributorslist != null) {
		getDistributorsEntity.distributorslist = distributorslist;
	}
	return getDistributorsEntity;
}

Map<String, dynamic> $GetDistributorsEntityToJson(GetDistributorsEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['distributorslist'] =  entity.distributorslist?.map((v) => v.toJson()).toList();
	return data;
}

GetDistributorsDistributorslist $GetDistributorsDistributorslistFromJson(Map<String, dynamic> json) {
	final GetDistributorsDistributorslist getDistributorsDistributorslist = GetDistributorsDistributorslist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		getDistributorsDistributorslist.id = id;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		getDistributorsDistributorslist.name = name;
	}
	final String? dob = jsonConvert.convert<String>(json['dob']);
	if (dob != null) {
		getDistributorsDistributorslist.dob = dob;
	}
	final String? age = jsonConvert.convert<String>(json['age']);
	if (age != null) {
		getDistributorsDistributorslist.age = age;
	}
	final String? address = jsonConvert.convert<String>(json['address']);
	if (address != null) {
		getDistributorsDistributorslist.address = address;
	}
	final String? contactno = jsonConvert.convert<String>(json['contactno']);
	if (contactno != null) {
		getDistributorsDistributorslist.contactno = contactno;
	}
	final String? adharno = jsonConvert.convert<String>(json['adharno']);
	if (adharno != null) {
		getDistributorsDistributorslist.adharno = adharno;
	}
	final String? country = jsonConvert.convert<String>(json['country']);
	if (country != null) {
		getDistributorsDistributorslist.country = country;
	}
	final String? state = jsonConvert.convert<String>(json['state']);
	if (state != null) {
		getDistributorsDistributorslist.state = state;
	}
	final String? district = jsonConvert.convert<String>(json['district']);
	if (district != null) {
		getDistributorsDistributorslist.district = district;
	}
	final String? city = jsonConvert.convert<String>(json['city']);
	if (city != null) {
		getDistributorsDistributorslist.city = city;
	}
	final String? repname = jsonConvert.convert<String>(json['repname']);
	if (repname != null) {
		getDistributorsDistributorslist.repname = repname;
	}
	final String? areacode = jsonConvert.convert<String>(json['areacode']);
	if (areacode != null) {
		getDistributorsDistributorslist.areacode = areacode;
	}
	final String? nationality = jsonConvert.convert<String>(json['nationality']);
	if (nationality != null) {
		getDistributorsDistributorslist.nationality = nationality;
	}
	final String? idcardno = jsonConvert.convert<String>(json['idcardno']);
	if (idcardno != null) {
		getDistributorsDistributorslist.idcardno = idcardno;
	}
	final String? idproofurl = jsonConvert.convert<String>(json['idproofurl']);
	if (idproofurl != null) {
		getDistributorsDistributorslist.idproofurl = idproofurl;
	}
	final String? joiningdate = jsonConvert.convert<String>(json['joiningdate']);
	if (joiningdate != null) {
		getDistributorsDistributorslist.joiningdate = joiningdate;
	}
	final String? resignationdate = jsonConvert.convert<String>(json['resignationdate']);
	if (resignationdate != null) {
		getDistributorsDistributorslist.resignationdate = resignationdate;
	}
	final String? username = jsonConvert.convert<String>(json['username']);
	if (username != null) {
		getDistributorsDistributorslist.username = username;
	}
	final String? loginid = jsonConvert.convert<String>(json['loginid']);
	if (loginid != null) {
		getDistributorsDistributorslist.loginid = loginid;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		getDistributorsDistributorslist.status = status;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		getDistributorsDistributorslist.createddate = createddate;
	}
	final String? email = jsonConvert.convert<String>(json['email']);
	if (email != null) {
		getDistributorsDistributorslist.email = email;
	}
	final String? pincode = jsonConvert.convert<String>(json['pincode']);
	if (pincode != null) {
		getDistributorsDistributorslist.pincode = pincode;
	}
	final String? gstno = jsonConvert.convert<String>(json['gstno']);
	if (gstno != null) {
		getDistributorsDistributorslist.gstno = gstno;
	}
	return getDistributorsDistributorslist;
}

Map<String, dynamic> $GetDistributorsDistributorslistToJson(GetDistributorsDistributorslist entity) {
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
	return data;
}