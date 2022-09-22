import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/get_product_by_artno_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class GetProductByArtnoEntity {

	String? response;
	List<GetProductByArtnoProductlist>? productlist;
	List<GetProductByArtnoSizelist>? sizelist;
  
  GetProductByArtnoEntity();

  factory GetProductByArtnoEntity.fromJson(Map<String, dynamic> json) => $GetProductByArtnoEntityFromJson(json);

  Map<String, dynamic> toJson() => $GetProductByArtnoEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GetProductByArtnoProductlist {

	String? artno;
	String? category;
	String? color;
	String? boxpair;
	String? coverimageurl;
	String? colorname;
	String? categoryname;
  
  GetProductByArtnoProductlist();

  factory GetProductByArtnoProductlist.fromJson(Map<String, dynamic> json) => $GetProductByArtnoProductlistFromJson(json);

  Map<String, dynamic> toJson() => $GetProductByArtnoProductlistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GetProductByArtnoSizelist {

	int? id;
	String? productid;
	String? artno;
	String? size;
	String? status;
	String? createddate;
	String? sizename;
  
  GetProductByArtnoSizelist();

  factory GetProductByArtnoSizelist.fromJson(Map<String, dynamic> json) => $GetProductByArtnoSizelistFromJson(json);

  Map<String, dynamic> toJson() => $GetProductByArtnoSizelistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}