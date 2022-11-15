import 'package:stecon_godown_storekeepe_uppermanager/generated/json/base/json_field.dart';
import 'package:stecon_godown_storekeepe_uppermanager/generated/json/get_upper_return_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class GetUpperReturnEntity {

	String? response;
	List<GetUpperReturnUpperreturnlist>? upperreturnlist;
  
  GetUpperReturnEntity();

  factory GetUpperReturnEntity.fromJson(Map<String, dynamic> json) => $GetUpperReturnEntityFromJson(json);

  Map<String, dynamic> toJson() => $GetUpperReturnEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GetUpperReturnUpperreturnlist {

	int? id;
	String? supplierid;
	String? orderno;
	String? orderid;
	String? productid;
	String? mrno;
	String? companyplanno;
	String? planno;
	String? date;
	String? status;
	String? createddate;
	String? type;
	String? countid;
	String? name;
	String? artno;
  
  GetUpperReturnUpperreturnlist();

  factory GetUpperReturnUpperreturnlist.fromJson(Map<String, dynamic> json) => $GetUpperReturnUpperreturnlistFromJson(json);

  Map<String, dynamic> toJson() => $GetUpperReturnUpperreturnlistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}