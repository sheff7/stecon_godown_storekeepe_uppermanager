import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/order_taken_single_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class OrderTakenSingleEntity {
	String? response;
	List<OrderTakenSingleDeliveryschedule>? deliveryschedule;

	OrderTakenSingleEntity();

	factory OrderTakenSingleEntity.fromJson(Map<String, dynamic> json) => $OrderTakenSingleEntityFromJson(json);

	Map<String, dynamic> toJson() => $OrderTakenSingleEntityToJson(this);

	OrderTakenSingleEntity copyWith({String? response, List<OrderTakenSingleDeliveryschedule>? deliveryschedule}) {
		return OrderTakenSingleEntity()
			..response= response ?? this.response
			..deliveryschedule= deliveryschedule ?? this.deliveryschedule;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class OrderTakenSingleDeliveryschedule {
	int? packedid;
	String? packeddate;
	String? status;
	String? deliverybox;
	String? distributorid;
	String? productid;
	int? id;
	String? orderno;
	String? orderid;
	String? artno;
	String? category;
	String? color;
	String? size;
	String? pair;
	String? box;
	String? remainingbox;
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
	String? ordertakenby;
	String? createddate;
	String? cancelleddate;
	String? sizename;
	String? customername;
	String? areacode;
	String? repname;
	String? representativename;
	String? productname;
	String? categoryname;
	String? colorname;

	OrderTakenSingleDeliveryschedule();

	factory OrderTakenSingleDeliveryschedule.fromJson(Map<String, dynamic> json) => $OrderTakenSingleDeliveryscheduleFromJson(json);

	Map<String, dynamic> toJson() => $OrderTakenSingleDeliveryscheduleToJson(this);

	OrderTakenSingleDeliveryschedule copyWith({int? packedid, String? packeddate, String? status, String? deliverybox, String? distributorid, String? productid, int? id, String? orderno, String? orderid, String? artno, String? category, String? color, String? size, String? pair, String? box, String? remainingbox, String? s1, String? s2, String? s3, String? s4, String? s5, String? s6, String? s7, String? s8, String? s9, String? s10, String? s11, String? s12, String? s13, String? ordertakenby, String? createddate, String? cancelleddate, String? sizename, String? customername, String? areacode, String? repname, String? representativename, String? productname, String? categoryname, String? colorname}) {
		return OrderTakenSingleDeliveryschedule()
			..packedid= packedid ?? this.packedid
			..packeddate= packeddate ?? this.packeddate
			..status= status ?? this.status
			..deliverybox= deliverybox ?? this.deliverybox
			..distributorid= distributorid ?? this.distributorid
			..productid= productid ?? this.productid
			..id= id ?? this.id
			..orderno= orderno ?? this.orderno
			..orderid= orderid ?? this.orderid
			..artno= artno ?? this.artno
			..category= category ?? this.category
			..color= color ?? this.color
			..size= size ?? this.size
			..pair= pair ?? this.pair
			..box= box ?? this.box
			..remainingbox= remainingbox ?? this.remainingbox
			..s1= s1 ?? this.s1
			..s2= s2 ?? this.s2
			..s3= s3 ?? this.s3
			..s4= s4 ?? this.s4
			..s5= s5 ?? this.s5
			..s6= s6 ?? this.s6
			..s7= s7 ?? this.s7
			..s8= s8 ?? this.s8
			..s9= s9 ?? this.s9
			..s10= s10 ?? this.s10
			..s11= s11 ?? this.s11
			..s12= s12 ?? this.s12
			..s13= s13 ?? this.s13
			..ordertakenby= ordertakenby ?? this.ordertakenby
			..createddate= createddate ?? this.createddate
			..cancelleddate= cancelleddate ?? this.cancelleddate
			..sizename= sizename ?? this.sizename
			..customername= customername ?? this.customername
			..areacode= areacode ?? this.areacode
			..repname= repname ?? this.repname
			..representativename= representativename ?? this.representativename
			..productname= productname ?? this.productname
			..categoryname= categoryname ?? this.categoryname
			..colorname= colorname ?? this.colorname;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}