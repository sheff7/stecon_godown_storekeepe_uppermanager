import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/get_billing_list_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class GetBillingListEntity {

	String? response;
	List<GetBillingListBillingdetailslist>? billingdetailslist;
  
  GetBillingListEntity();

  factory GetBillingListEntity.fromJson(Map<String, dynamic> json) => $GetBillingListEntityFromJson(json);

  Map<String, dynamic> toJson() => $GetBillingListEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GetBillingListBillingdetailslist {

	int? id;
	String? name;
	String? address;
	String? phone;
	String? invoiceno;
	String? invoicedate;
	String? totalamountaftertax;
  
  GetBillingListBillingdetailslist();

  factory GetBillingListBillingdetailslist.fromJson(Map<String, dynamic> json) => $GetBillingListBillingdetailslistFromJson(json);

  Map<String, dynamic> toJson() => $GetBillingListBillingdetailslistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}