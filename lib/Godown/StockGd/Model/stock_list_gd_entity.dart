import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/stock_list_gd_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class StockListGdEntity {
	String? response;
	List<StockListGdStocklist>? stocklist;
	@JSONField(name: "total_pages")
	int? totalPages;
	dynamic previouspage;
	int? nextpage;

	StockListGdEntity();

	factory StockListGdEntity.fromJson(Map<String, dynamic> json) => $StockListGdEntityFromJson(json);

	Map<String, dynamic> toJson() => $StockListGdEntityToJson(this);

	StockListGdEntity copyWith({String? response, List<StockListGdStocklist>? stocklist, int? totalPages, dynamic previouspage, int? nextpage}) {
		return StockListGdEntity()
			..response= response ?? this.response
			..stocklist= stocklist ?? this.stocklist
			..totalPages= totalPages ?? this.totalPages
			..previouspage= previouspage ?? this.previouspage
			..nextpage= nextpage ?? this.nextpage;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class StockListGdStocklist {
	String? productid;
	String? stockstatus;
	int? id;
	String? artno;
	String? category;
	String? color;
	String? boxpair;
	String? comments;
	String? status;
	String? createddate;
	String? coverimageurl;
	String? price;
	String? mrp;
	String? dieno;
	String? solecolor;
	String? outprice;
	String? outmrp;
	String? categoryname;
	String? colorname;

	StockListGdStocklist();

	factory StockListGdStocklist.fromJson(Map<String, dynamic> json) => $StockListGdStocklistFromJson(json);

	Map<String, dynamic> toJson() => $StockListGdStocklistToJson(this);

	StockListGdStocklist copyWith({String? productid, String? stockstatus, int? id, String? artno, String? category, String? color, String? boxpair, String? comments, String? status, String? createddate, String? coverimageurl, String? price, String? mrp, String? dieno, String? solecolor, String? outprice, String? outmrp, String? categoryname, String? colorname}) {
		return StockListGdStocklist()
			..productid= productid ?? this.productid
			..stockstatus= stockstatus ?? this.stockstatus
			..id= id ?? this.id
			..artno= artno ?? this.artno
			..category= category ?? this.category
			..color= color ?? this.color
			..boxpair= boxpair ?? this.boxpair
			..comments= comments ?? this.comments
			..status= status ?? this.status
			..createddate= createddate ?? this.createddate
			..coverimageurl= coverimageurl ?? this.coverimageurl
			..price= price ?? this.price
			..mrp= mrp ?? this.mrp
			..dieno= dieno ?? this.dieno
			..solecolor= solecolor ?? this.solecolor
			..outprice= outprice ?? this.outprice
			..outmrp= outmrp ?? this.outmrp
			..categoryname= categoryname ?? this.categoryname
			..colorname= colorname ?? this.colorname;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}