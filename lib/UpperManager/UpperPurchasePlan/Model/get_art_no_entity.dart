import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/get_art_no_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class GetArtNoEntity {

	String? response;
	List<GetArtNoProductlist>? productlist;
  
  GetArtNoEntity();

  factory GetArtNoEntity.fromJson(Map<String, dynamic> json) => $GetArtNoEntityFromJson(json);

  Map<String, dynamic> toJson() => $GetArtNoEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GetArtNoProductlist {

	int? id;
	String? artno;
	String? categoryid;
  
  GetArtNoProductlist();

  factory GetArtNoProductlist.fromJson(Map<String, dynamic> json) => $GetArtNoProductlistFromJson(json);

  Map<String, dynamic> toJson() => $GetArtNoProductlistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}