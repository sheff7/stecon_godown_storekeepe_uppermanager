import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/Godown/ViewBill/Model/get_billing_list_entity.dart';

GetBillingListEntity $GetBillingListEntityFromJson(Map<String, dynamic> json) {
	final GetBillingListEntity getBillingListEntity = GetBillingListEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		getBillingListEntity.response = response;
	}
	final List<GetBillingListBillingdetailslist>? billingdetailslist = jsonConvert.convertListNotNull<GetBillingListBillingdetailslist>(json['billingdetailslist']);
	if (billingdetailslist != null) {
		getBillingListEntity.billingdetailslist = billingdetailslist;
	}
	return getBillingListEntity;
}

Map<String, dynamic> $GetBillingListEntityToJson(GetBillingListEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['billingdetailslist'] =  entity.billingdetailslist?.map((v) => v.toJson()).toList();
	return data;
}

GetBillingListBillingdetailslist $GetBillingListBillingdetailslistFromJson(Map<String, dynamic> json) {
	final GetBillingListBillingdetailslist getBillingListBillingdetailslist = GetBillingListBillingdetailslist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		getBillingListBillingdetailslist.id = id;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		getBillingListBillingdetailslist.name = name;
	}
	final String? address = jsonConvert.convert<String>(json['address']);
	if (address != null) {
		getBillingListBillingdetailslist.address = address;
	}
	final String? phone = jsonConvert.convert<String>(json['phone']);
	if (phone != null) {
		getBillingListBillingdetailslist.phone = phone;
	}
	final String? invoiceno = jsonConvert.convert<String>(json['invoiceno']);
	if (invoiceno != null) {
		getBillingListBillingdetailslist.invoiceno = invoiceno;
	}
	final String? invoicedate = jsonConvert.convert<String>(json['invoicedate']);
	if (invoicedate != null) {
		getBillingListBillingdetailslist.invoicedate = invoicedate;
	}
	final String? totalamountaftertax = jsonConvert.convert<String>(json['totalamountaftertax']);
	if (totalamountaftertax != null) {
		getBillingListBillingdetailslist.totalamountaftertax = totalamountaftertax;
	}
	return getBillingListBillingdetailslist;
}

Map<String, dynamic> $GetBillingListBillingdetailslistToJson(GetBillingListBillingdetailslist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['address'] = entity.address;
	data['phone'] = entity.phone;
	data['invoiceno'] = entity.invoiceno;
	data['invoicedate'] = entity.invoicedate;
	data['totalamountaftertax'] = entity.totalamountaftertax;
	return data;
}