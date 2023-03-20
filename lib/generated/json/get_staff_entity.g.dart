import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperPurchaseCount/Model/get_staff_entity.dart';

GetStaffEntity $GetStaffEntityFromJson(Map<String, dynamic> json) {
	final GetStaffEntity getStaffEntity = GetStaffEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		getStaffEntity.response = response;
	}
	final List<GetStaffStafflist>? stafflist = jsonConvert.convertListNotNull<GetStaffStafflist>(json['stafflist']);
	if (stafflist != null) {
		getStaffEntity.stafflist = stafflist;
	}
	return getStaffEntity;
}

Map<String, dynamic> $GetStaffEntityToJson(GetStaffEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['stafflist'] =  entity.stafflist?.map((v) => v.toJson()).toList();
	return data;
}

GetStaffStafflist $GetStaffStafflistFromJson(Map<String, dynamic> json) {
	final GetStaffStafflist getStaffStafflist = GetStaffStafflist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		getStaffStafflist.id = id;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		getStaffStafflist.name = name;
	}
	final String? dob = jsonConvert.convert<String>(json['dob']);
	if (dob != null) {
		getStaffStafflist.dob = dob;
	}
	final String? age = jsonConvert.convert<String>(json['age']);
	if (age != null) {
		getStaffStafflist.age = age;
	}
	final String? contactno1 = jsonConvert.convert<String>(json['contactno1']);
	if (contactno1 != null) {
		getStaffStafflist.contactno1 = contactno1;
	}
	final String? contactno2 = jsonConvert.convert<String>(json['contactno2']);
	if (contactno2 != null) {
		getStaffStafflist.contactno2 = contactno2;
	}
	final String? address = jsonConvert.convert<String>(json['address']);
	if (address != null) {
		getStaffStafflist.address = address;
	}
	final String? email = jsonConvert.convert<String>(json['email']);
	if (email != null) {
		getStaffStafflist.email = email;
	}
	final String? adharno = jsonConvert.convert<String>(json['adharno']);
	if (adharno != null) {
		getStaffStafflist.adharno = adharno;
	}
	final String? city = jsonConvert.convert<String>(json['city']);
	if (city != null) {
		getStaffStafflist.city = city;
	}
	final String? state = jsonConvert.convert<String>(json['state']);
	if (state != null) {
		getStaffStafflist.state = state;
	}
	final String? district = jsonConvert.convert<String>(json['district']);
	if (district != null) {
		getStaffStafflist.district = district;
	}
	final String? country = jsonConvert.convert<String>(json['country']);
	if (country != null) {
		getStaffStafflist.country = country;
	}
	final String? nationality = jsonConvert.convert<String>(json['nationality']);
	if (nationality != null) {
		getStaffStafflist.nationality = nationality;
	}
	final String? pincode = jsonConvert.convert<String>(json['pincode']);
	if (pincode != null) {
		getStaffStafflist.pincode = pincode;
	}
	final String? idcardno = jsonConvert.convert<String>(json['idcardno']);
	if (idcardno != null) {
		getStaffStafflist.idcardno = idcardno;
	}
	final String? idproofurl = jsonConvert.convert<String>(json['idproofurl']);
	if (idproofurl != null) {
		getStaffStafflist.idproofurl = idproofurl;
	}
	final String? policestationdetails = jsonConvert.convert<String>(json['policestationdetails']);
	if (policestationdetails != null) {
		getStaffStafflist.policestationdetails = policestationdetails;
	}
	final String? deaprtment = jsonConvert.convert<String>(json['deaprtment']);
	if (deaprtment != null) {
		getStaffStafflist.deaprtment = deaprtment;
	}
	final String? section = jsonConvert.convert<String>(json['section']);
	if (section != null) {
		getStaffStafflist.section = section;
	}
	final String? profileurl = jsonConvert.convert<String>(json['profileurl']);
	if (profileurl != null) {
		getStaffStafflist.profileurl = profileurl;
	}
	final String? joiningdate = jsonConvert.convert<String>(json['joiningdate']);
	if (joiningdate != null) {
		getStaffStafflist.joiningdate = joiningdate;
	}
	final dynamic? resigndate = jsonConvert.convert<dynamic>(json['resigndate']);
	if (resigndate != null) {
		getStaffStafflist.resigndate = resigndate;
	}
	final String? staffidno = jsonConvert.convert<String>(json['staffidno']);
	if (staffidno != null) {
		getStaffStafflist.staffidno = staffidno;
	}
	final String? salary = jsonConvert.convert<String>(json['salary']);
	if (salary != null) {
		getStaffStafflist.salary = salary;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		getStaffStafflist.createddate = createddate;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		getStaffStafflist.status = status;
	}
	final String? departmentname = jsonConvert.convert<String>(json['departmentname']);
	if (departmentname != null) {
		getStaffStafflist.departmentname = departmentname;
	}
	return getStaffStafflist;
}

Map<String, dynamic> $GetStaffStafflistToJson(GetStaffStafflist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['dob'] = entity.dob;
	data['age'] = entity.age;
	data['contactno1'] = entity.contactno1;
	data['contactno2'] = entity.contactno2;
	data['address'] = entity.address;
	data['email'] = entity.email;
	data['adharno'] = entity.adharno;
	data['city'] = entity.city;
	data['state'] = entity.state;
	data['district'] = entity.district;
	data['country'] = entity.country;
	data['nationality'] = entity.nationality;
	data['pincode'] = entity.pincode;
	data['idcardno'] = entity.idcardno;
	data['idproofurl'] = entity.idproofurl;
	data['policestationdetails'] = entity.policestationdetails;
	data['deaprtment'] = entity.deaprtment;
	data['section'] = entity.section;
	data['profileurl'] = entity.profileurl;
	data['joiningdate'] = entity.joiningdate;
	data['resigndate'] = entity.resigndate;
	data['staffidno'] = entity.staffidno;
	data['salary'] = entity.salary;
	data['createddate'] = entity.createddate;
	data['status'] = entity.status;
	data['departmentname'] = entity.departmentname;
	return data;
}