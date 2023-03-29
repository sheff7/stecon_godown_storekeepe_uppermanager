import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_convert_content.dart';
import 'package:stecon_godown_storekeepe_uppermanager/Godown/ViewBill/Model/view_bill_single_entity.dart';

ViewBillSingleEntity $ViewBillSingleEntityFromJson(Map<String, dynamic> json) {
	final ViewBillSingleEntity viewBillSingleEntity = ViewBillSingleEntity();
	final String? response = jsonConvert.convert<String>(json['response']);
	if (response != null) {
		viewBillSingleEntity.response = response;
	}
	final List<ViewBillSingleBillingdetailslist>? billingdetailslist = jsonConvert.convertListNotNull<ViewBillSingleBillingdetailslist>(json['billingdetailslist']);
	if (billingdetailslist != null) {
		viewBillSingleEntity.billingdetailslist = billingdetailslist;
	}
	final List<ViewBillSingleBillingproductlist>? billingproductlist = jsonConvert.convertListNotNull<ViewBillSingleBillingproductlist>(json['billingproductlist']);
	if (billingproductlist != null) {
		viewBillSingleEntity.billingproductlist = billingproductlist;
	}
	return viewBillSingleEntity;
}

Map<String, dynamic> $ViewBillSingleEntityToJson(ViewBillSingleEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response'] = entity.response;
	data['billingdetailslist'] =  entity.billingdetailslist?.map((v) => v.toJson()).toList();
	data['billingproductlist'] =  entity.billingproductlist?.map((v) => v.toJson()).toList();
	return data;
}

ViewBillSingleBillingdetailslist $ViewBillSingleBillingdetailslistFromJson(Map<String, dynamic> json) {
	final ViewBillSingleBillingdetailslist viewBillSingleBillingdetailslist = ViewBillSingleBillingdetailslist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		viewBillSingleBillingdetailslist.id = id;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		viewBillSingleBillingdetailslist.name = name;
	}
	final String? address = jsonConvert.convert<String>(json['address']);
	if (address != null) {
		viewBillSingleBillingdetailslist.address = address;
	}
	final String? phone = jsonConvert.convert<String>(json['phone']);
	if (phone != null) {
		viewBillSingleBillingdetailslist.phone = phone;
	}
	final String? gstin = jsonConvert.convert<String>(json['gstin']);
	if (gstin != null) {
		viewBillSingleBillingdetailslist.gstin = gstin;
	}
	final String? pan = jsonConvert.convert<String>(json['pan']);
	if (pan != null) {
		viewBillSingleBillingdetailslist.pan = pan;
	}
	final String? reversecharge = jsonConvert.convert<String>(json['reversecharge']);
	if (reversecharge != null) {
		viewBillSingleBillingdetailslist.reversecharge = reversecharge;
	}
	final String? invoiceno = jsonConvert.convert<String>(json['invoiceno']);
	if (invoiceno != null) {
		viewBillSingleBillingdetailslist.invoiceno = invoiceno;
	}
	final String? invoicedate = jsonConvert.convert<String>(json['invoicedate']);
	if (invoicedate != null) {
		viewBillSingleBillingdetailslist.invoicedate = invoicedate;
	}
	final String? state = jsonConvert.convert<String>(json['state']);
	if (state != null) {
		viewBillSingleBillingdetailslist.state = state;
	}
	final String? statecode = jsonConvert.convert<String>(json['statecode']);
	if (statecode != null) {
		viewBillSingleBillingdetailslist.statecode = statecode;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		viewBillSingleBillingdetailslist.status = status;
	}
	final String? totalbeforetax = jsonConvert.convert<String>(json['totalbeforetax']);
	if (totalbeforetax != null) {
		viewBillSingleBillingdetailslist.totalbeforetax = totalbeforetax;
	}
	final String? addcgst = jsonConvert.convert<String>(json['addcgst']);
	if (addcgst != null) {
		viewBillSingleBillingdetailslist.addcgst = addcgst;
	}
	final String? addsgst = jsonConvert.convert<String>(json['addsgst']);
	if (addsgst != null) {
		viewBillSingleBillingdetailslist.addsgst = addsgst;
	}
	final String? addigst = jsonConvert.convert<String>(json['addigst']);
	if (addigst != null) {
		viewBillSingleBillingdetailslist.addigst = addigst;
	}
	final String? totalamountaftertax = jsonConvert.convert<String>(json['totalamountaftertax']);
	if (totalamountaftertax != null) {
		viewBillSingleBillingdetailslist.totalamountaftertax = totalamountaftertax;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		viewBillSingleBillingdetailslist.createddate = createddate;
	}
	final String? did = jsonConvert.convert<String>(json['did']);
	if (did != null) {
		viewBillSingleBillingdetailslist.did = did;
	}
	final String? paymentstatus = jsonConvert.convert<String>(json['paymentstatus']);
	if (paymentstatus != null) {
		viewBillSingleBillingdetailslist.paymentstatus = paymentstatus;
	}
	return viewBillSingleBillingdetailslist;
}

Map<String, dynamic> $ViewBillSingleBillingdetailslistToJson(ViewBillSingleBillingdetailslist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['address'] = entity.address;
	data['phone'] = entity.phone;
	data['gstin'] = entity.gstin;
	data['pan'] = entity.pan;
	data['reversecharge'] = entity.reversecharge;
	data['invoiceno'] = entity.invoiceno;
	data['invoicedate'] = entity.invoicedate;
	data['state'] = entity.state;
	data['statecode'] = entity.statecode;
	data['status'] = entity.status;
	data['totalbeforetax'] = entity.totalbeforetax;
	data['addcgst'] = entity.addcgst;
	data['addsgst'] = entity.addsgst;
	data['addigst'] = entity.addigst;
	data['totalamountaftertax'] = entity.totalamountaftertax;
	data['createddate'] = entity.createddate;
	data['did'] = entity.did;
	data['paymentstatus'] = entity.paymentstatus;
	return data;
}

ViewBillSingleBillingproductlist $ViewBillSingleBillingproductlistFromJson(Map<String, dynamic> json) {
	final ViewBillSingleBillingproductlist viewBillSingleBillingproductlist = ViewBillSingleBillingproductlist();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		viewBillSingleBillingproductlist.id = id;
	}
	final String? sbillid = jsonConvert.convert<String>(json['sbillid']);
	if (sbillid != null) {
		viewBillSingleBillingproductlist.sbillid = sbillid;
	}
	final String? productname = jsonConvert.convert<String>(json['productname']);
	if (productname != null) {
		viewBillSingleBillingproductlist.productname = productname;
	}
	final String? hsnsac = jsonConvert.convert<String>(json['hsnsac']);
	if (hsnsac != null) {
		viewBillSingleBillingproductlist.hsnsac = hsnsac;
	}
	final String? mrp = jsonConvert.convert<String>(json['mrp']);
	if (mrp != null) {
		viewBillSingleBillingproductlist.mrp = mrp;
	}
	final String? qty = jsonConvert.convert<String>(json['qty']);
	if (qty != null) {
		viewBillSingleBillingproductlist.qty = qty;
	}
	final String? altqty = jsonConvert.convert<String>(json['altqty']);
	if (altqty != null) {
		viewBillSingleBillingproductlist.altqty = altqty;
	}
	final String? discount = jsonConvert.convert<String>(json['discount']);
	if (discount != null) {
		viewBillSingleBillingproductlist.discount = discount;
	}
	final String? rate = jsonConvert.convert<String>(json['rate']);
	if (rate != null) {
		viewBillSingleBillingproductlist.rate = rate;
	}
	final String? amt = jsonConvert.convert<String>(json['amt']);
	if (amt != null) {
		viewBillSingleBillingproductlist.amt = amt;
	}
	final String? lessdisper = jsonConvert.convert<String>(json['lessdisper']);
	if (lessdisper != null) {
		viewBillSingleBillingproductlist.lessdisper = lessdisper;
	}
	final String? lessdiscamt = jsonConvert.convert<String>(json['lessdiscamt']);
	if (lessdiscamt != null) {
		viewBillSingleBillingproductlist.lessdiscamt = lessdiscamt;
	}
	final String? txablevalue = jsonConvert.convert<String>(json['txablevalue']);
	if (txablevalue != null) {
		viewBillSingleBillingproductlist.txablevalue = txablevalue;
	}
	final String? cgstper = jsonConvert.convert<String>(json['cgstper']);
	if (cgstper != null) {
		viewBillSingleBillingproductlist.cgstper = cgstper;
	}
	final String? cgstamt = jsonConvert.convert<String>(json['cgstamt']);
	if (cgstamt != null) {
		viewBillSingleBillingproductlist.cgstamt = cgstamt;
	}
	final String? sgstper = jsonConvert.convert<String>(json['sgstper']);
	if (sgstper != null) {
		viewBillSingleBillingproductlist.sgstper = sgstper;
	}
	final String? sgastamt = jsonConvert.convert<String>(json['sgastamt']);
	if (sgastamt != null) {
		viewBillSingleBillingproductlist.sgastamt = sgastamt;
	}
	final String? total = jsonConvert.convert<String>(json['total']);
	if (total != null) {
		viewBillSingleBillingproductlist.total = total;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		viewBillSingleBillingproductlist.status = status;
	}
	final String? createddate = jsonConvert.convert<String>(json['createddate']);
	if (createddate != null) {
		viewBillSingleBillingproductlist.createddate = createddate;
	}
	return viewBillSingleBillingproductlist;
}

Map<String, dynamic> $ViewBillSingleBillingproductlistToJson(ViewBillSingleBillingproductlist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['sbillid'] = entity.sbillid;
	data['productname'] = entity.productname;
	data['hsnsac'] = entity.hsnsac;
	data['mrp'] = entity.mrp;
	data['qty'] = entity.qty;
	data['altqty'] = entity.altqty;
	data['discount'] = entity.discount;
	data['rate'] = entity.rate;
	data['amt'] = entity.amt;
	data['lessdisper'] = entity.lessdisper;
	data['lessdiscamt'] = entity.lessdiscamt;
	data['txablevalue'] = entity.txablevalue;
	data['cgstper'] = entity.cgstper;
	data['cgstamt'] = entity.cgstamt;
	data['sgstper'] = entity.sgstper;
	data['sgastamt'] = entity.sgastamt;
	data['total'] = entity.total;
	data['status'] = entity.status;
	data['createddate'] = entity.createddate;
	return data;
}