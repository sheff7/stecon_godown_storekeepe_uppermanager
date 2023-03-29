import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/view_bill_single_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class ViewBillSingleEntity {

	String? response;
	List<ViewBillSingleBillingdetailslist>? billingdetailslist;
	List<ViewBillSingleBillingproductlist>? billingproductlist;
  
  ViewBillSingleEntity();

  factory ViewBillSingleEntity.fromJson(Map<String, dynamic> json) => $ViewBillSingleEntityFromJson(json);

  Map<String, dynamic> toJson() => $ViewBillSingleEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ViewBillSingleBillingdetailslist {

	int? id;
	String? name;
	String? address;
	String? phone;
	String? gstin;
	String? pan;
	String? reversecharge;
	String? invoiceno;
	String? invoicedate;
	String? state;
	String? statecode;
	String? status;
	String? totalbeforetax;
	String? addcgst;
	String? addsgst;
	String? addigst;
	String? totalamountaftertax;
	String? createddate;
	String? did;
	String? paymentstatus;
  
  ViewBillSingleBillingdetailslist();

  factory ViewBillSingleBillingdetailslist.fromJson(Map<String, dynamic> json) => $ViewBillSingleBillingdetailslistFromJson(json);

  Map<String, dynamic> toJson() => $ViewBillSingleBillingdetailslistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ViewBillSingleBillingproductlist {

	int? id;
	String? sbillid;
	String? productname;
	String? hsnsac;
	String? mrp;
	String? qty;
	String? altqty;
	String? discount;
	String? rate;
	String? amt;
	String? lessdisper;
	String? lessdiscamt;
	String? txablevalue;
	String? cgstper;
	String? cgstamt;
	String? sgstper;
	String? sgastamt;
	String? total;
	String? status;
	String? createddate;
  
  ViewBillSingleBillingproductlist();

  factory ViewBillSingleBillingproductlist.fromJson(Map<String, dynamic> json) => $ViewBillSingleBillingproductlistFromJson(json);

  Map<String, dynamic> toJson() => $ViewBillSingleBillingproductlistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}