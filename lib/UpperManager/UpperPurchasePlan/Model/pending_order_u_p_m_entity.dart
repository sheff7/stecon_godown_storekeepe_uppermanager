import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/pending_order_u_p_m_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class PendingOrderUPMEntity {

	String? response;
	List<PendingOrderUPMPendingorderslist>? pendingorderslist;
  
  PendingOrderUPMEntity();

  factory PendingOrderUPMEntity.fromJson(Map<String, dynamic> json) => $PendingOrderUPMEntityFromJson(json);

  Map<String, dynamic> toJson() => $PendingOrderUPMEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PendingOrderUPMPendingorderslist {

	int? id;
	String? companyid;
	String? porderid;
	String? companyplanno;
	String? planno;
	String? artno;
	String? s1;
	String? s2;
	String? s3;
	String? s4;
	String? s5;
	String? s6;
	String? s7;
	String? s8;
	String? s9;
	String? s10;
	String? s11;
	String? s12;
	String? s13;
	String? totalpairs;
	String? status;
	String? status1;
	String? createddate;
	String? orderno;
	String? cutofdate;
	String? note;
	String? companyname;
	String? artnoname;
	String? categoryname;
	String? colorname;
  
  PendingOrderUPMPendingorderslist();

  factory PendingOrderUPMPendingorderslist.fromJson(Map<String, dynamic> json) => $PendingOrderUPMPendingorderslistFromJson(json);

  Map<String, dynamic> toJson() => $PendingOrderUPMPendingorderslistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}