import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/get_size_list_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class GetSizeListEntity {

	String? response;
	List<GetSizeListSizelist>? sizelist;
	List<int>? sizearray;
  
  GetSizeListEntity();

  factory GetSizeListEntity.fromJson(Map<String, dynamic> json) => $GetSizeListEntityFromJson(json);

  Map<String, dynamic> toJson() => $GetSizeListEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GetSizeListSizelist {

	String? size;
	String? sizename;
  
  GetSizeListSizelist();

  factory GetSizeListSizelist.fromJson(Map<String, dynamic> json) => $GetSizeListSizelistFromJson(json);

  Map<String, dynamic> toJson() => $GetSizeListSizelistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}