import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/get_size_details_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class GetSizeDetailsEntity {

	String? response;
	List<GetSizeDetailsSizelist>? sizelist;
	List<int>? sizearray;
  
  GetSizeDetailsEntity();

  factory GetSizeDetailsEntity.fromJson(Map<String, dynamic> json) => $GetSizeDetailsEntityFromJson(json);

  Map<String, dynamic> toJson() => $GetSizeDetailsEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GetSizeDetailsSizelist {

	String? size;
	String? sizename;
  
  GetSizeDetailsSizelist();

  factory GetSizeDetailsSizelist.fromJson(Map<String, dynamic> json) => $GetSizeDetailsSizelistFromJson(json);

  Map<String, dynamic> toJson() => $GetSizeDetailsSizelistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}