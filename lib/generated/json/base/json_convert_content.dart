// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types
// ignore_for_file: prefer_single_quotes

// This file is automatically generated. DO NOT EDIT, all your changes would be lost.
import 'package:flutter/material.dart' show debugPrint;
import 'package:stecon_godown_storekeepe_uppermanager/Godown/DeliverySchedulefn/Model/delivery_schedule_list_entity.dart';
import 'package:stecon_godown_storekeepe_uppermanager/Godown/DeliverySchedulefn/Model/delivery_schedule_single_view_gd_entity.dart';
import 'package:stecon_godown_storekeepe_uppermanager/Godown/DeliverySchedulefn/Model/update_order_entity.dart';
import 'package:stecon_godown_storekeepe_uppermanager/LoginPage/Model/login_page_entity.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UmProfileFn/Model/um_profile_entity.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperMangerHomeFn/Model/get_login_by_statusa_entity.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperPurchaseCount/Model/get_purchse_plan_entity.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperPurchaseCount/Model/get_staff_entity.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperPurchaseCount/Model/get_upper_plan_count_entity.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperPurchaseCount/Model/get_upper_purchase_plan_for_count_single_entity.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperPurchaseOrder/Model/get_upper_purchse_plan_entity.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperPurchaseOrder/Model/get_upper_purchse_plan_single_entity.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperPurchasePlan/Model/get_art_no_entity.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperPurchasePlan/Model/get_comapany_entity.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperPurchasePlan/Model/get_product_by_artno_entity.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperPurchasePlan/Model/get_upper_order_no_entity.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperPurchasePlan/Model/get_uppper_plan_no_entity.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperPurchasePlan/Model/pending_order_u_p_m_entity.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperPurchasePlan/Model/response_entity_entity.dart';

JsonConvert jsonConvert = JsonConvert();
typedef JsonConvertFunction<T> = T Function(Map<String, dynamic> json);

class JsonConvert {
	static final Map<String, JsonConvertFunction> _convertFuncMap = {
		(DeliveryScheduleListEntity).toString(): DeliveryScheduleListEntity.fromJson,
		(DeliveryScheduleListDeliveryschedulelist).toString(): DeliveryScheduleListDeliveryschedulelist.fromJson,
		(DeliveryScheduleSingleViewGdEntity).toString(): DeliveryScheduleSingleViewGdEntity.fromJson,
		(DeliveryScheduleSingleViewGdDeliveryschedule).toString(): DeliveryScheduleSingleViewGdDeliveryschedule.fromJson,
		(UpdateOrderEntity).toString(): UpdateOrderEntity.fromJson,
		(UpdateOrderList).toString(): UpdateOrderList.fromJson,
		(LoginPageEntity).toString(): LoginPageEntity.fromJson,
		(UmProfileEntity).toString(): UmProfileEntity.fromJson,
		(UmProfileRepresentativelist).toString(): UmProfileRepresentativelist.fromJson,
		(GetLoginByStatusaEntity).toString(): GetLoginByStatusaEntity.fromJson,
		(GetLoginByStatusaLoginlist).toString(): GetLoginByStatusaLoginlist.fromJson,
		(GetPurchsePlanEntity).toString(): GetPurchsePlanEntity.fromJson,
		(GetPurchsePlanPurchaseplanlist).toString(): GetPurchsePlanPurchaseplanlist.fromJson,
		(GetStaffEntity).toString(): GetStaffEntity.fromJson,
		(GetStaffStafflist).toString(): GetStaffStafflist.fromJson,
		(GetUpperPlanCountEntity).toString(): GetUpperPlanCountEntity.fromJson,
		(GetUpperPlanCountPurchaseproductlist).toString(): GetUpperPlanCountPurchaseproductlist.fromJson,
		(GetUpperPurchasePlanForCountSingleEntity).toString(): GetUpperPurchasePlanForCountSingleEntity.fromJson,
		(GetUpperPurchasePlanForCountSinglePurchaseplanlist).toString(): GetUpperPurchasePlanForCountSinglePurchaseplanlist.fromJson,
		(GetUpperPurchasePlanForCountSinglePurchaseproductlist).toString(): GetUpperPurchasePlanForCountSinglePurchaseproductlist.fromJson,
		(GetUpperPurchsePlanEntity).toString(): GetUpperPurchsePlanEntity.fromJson,
		(GetUpperPurchsePlanPurchaseplanlist).toString(): GetUpperPurchsePlanPurchaseplanlist.fromJson,
		(GetUpperPurchsePlanSingleEntity).toString(): GetUpperPurchsePlanSingleEntity.fromJson,
		(GetUpperPurchsePlanSinglePurchaseplanlist).toString(): GetUpperPurchsePlanSinglePurchaseplanlist.fromJson,
		(GetUpperPurchsePlanSinglePurchaseproductlist).toString(): GetUpperPurchsePlanSinglePurchaseproductlist.fromJson,
		(GetArtNoEntity).toString(): GetArtNoEntity.fromJson,
		(GetArtNoProductlist).toString(): GetArtNoProductlist.fromJson,
		(GetComapanyEntity).toString(): GetComapanyEntity.fromJson,
		(GetComapanyCompanylist).toString(): GetComapanyCompanylist.fromJson,
		(GetProductByArtnoEntity).toString(): GetProductByArtnoEntity.fromJson,
		(GetProductByArtnoProductlist).toString(): GetProductByArtnoProductlist.fromJson,
		(GetProductByArtnoSizelist).toString(): GetProductByArtnoSizelist.fromJson,
		(GetUpperOrderNoEntity).toString(): GetUpperOrderNoEntity.fromJson,
		(GetUppperPlanNoEntity).toString(): GetUppperPlanNoEntity.fromJson,
		(PendingOrderUPMEntity).toString(): PendingOrderUPMEntity.fromJson,
		(PendingOrderUPMPendingorderslist).toString(): PendingOrderUPMPendingorderslist.fromJson,
		(ResponseEntityEntity).toString(): ResponseEntityEntity.fromJson,
	};

  T? convert<T>(dynamic value) {
    if (value == null) {
      return null;
    }
    return asT<T>(value);
  }

  List<T?>? convertList<T>(List<dynamic>? value) {
    if (value == null) {
      return null;
    }
    try {
      return value.map((dynamic e) => asT<T>(e)).toList();
    } catch (e, stackTrace) {
      debugPrint('asT<$T> $e $stackTrace');
      return <T>[];
    }
  }

  List<T>? convertListNotNull<T>(dynamic value) {
    if (value == null) {
      return null;
    }
    try {
      return (value as List<dynamic>).map((dynamic e) => asT<T>(e)!).toList();
    } catch (e, stackTrace) {
      debugPrint('asT<$T> $e $stackTrace');
      return <T>[];
    }
  }

  T? asT<T extends Object?>(dynamic value) {
    if (value is T) {
      return value;
    }
    final String type = T.toString();
    try {
      final String valueS = value.toString();
      if (type == "String") {
        return valueS as T;
      } else if (type == "int") {
        final int? intValue = int.tryParse(valueS);
        if (intValue == null) {
          return double.tryParse(valueS)?.toInt() as T?;
        } else {
          return intValue as T;
        }
      } else if (type == "double") {
        return double.parse(valueS) as T;
      } else if (type == "DateTime") {
        return DateTime.parse(valueS) as T;
      } else if (type == "bool") {
        if (valueS == '0' || valueS == '1') {
          return (valueS == '1') as T;
        }
        return (valueS == 'true') as T;
      } else if (type == "Map" || type.startsWith("Map<")) {
        return value as T;
      } else {
        if (_convertFuncMap.containsKey(type)) {
          return _convertFuncMap[type]!(value) as T;
        } else {
          throw UnimplementedError('$type unimplemented');
        }
      }
    } catch (e, stackTrace) {
      debugPrint('asT<$T> $e $stackTrace');
      return null;
    }
  }

	//list is returned by type
	static M? _getListChildType<M>(List<Map<String, dynamic>> data) {
		if(<DeliveryScheduleListEntity>[] is M){
			return data.map<DeliveryScheduleListEntity>((Map<String, dynamic> e) => DeliveryScheduleListEntity.fromJson(e)).toList() as M;
		}
		if(<DeliveryScheduleListDeliveryschedulelist>[] is M){
			return data.map<DeliveryScheduleListDeliveryschedulelist>((Map<String, dynamic> e) => DeliveryScheduleListDeliveryschedulelist.fromJson(e)).toList() as M;
		}
		if(<DeliveryScheduleSingleViewGdEntity>[] is M){
			return data.map<DeliveryScheduleSingleViewGdEntity>((Map<String, dynamic> e) => DeliveryScheduleSingleViewGdEntity.fromJson(e)).toList() as M;
		}
		if(<DeliveryScheduleSingleViewGdDeliveryschedule>[] is M){
			return data.map<DeliveryScheduleSingleViewGdDeliveryschedule>((Map<String, dynamic> e) => DeliveryScheduleSingleViewGdDeliveryschedule.fromJson(e)).toList() as M;
		}
		if(<UpdateOrderEntity>[] is M){
			return data.map<UpdateOrderEntity>((Map<String, dynamic> e) => UpdateOrderEntity.fromJson(e)).toList() as M;
		}
		if(<UpdateOrderList>[] is M){
			return data.map<UpdateOrderList>((Map<String, dynamic> e) => UpdateOrderList.fromJson(e)).toList() as M;
		}
		if(<LoginPageEntity>[] is M){
			return data.map<LoginPageEntity>((Map<String, dynamic> e) => LoginPageEntity.fromJson(e)).toList() as M;
		}
		if(<UmProfileEntity>[] is M){
			return data.map<UmProfileEntity>((Map<String, dynamic> e) => UmProfileEntity.fromJson(e)).toList() as M;
		}
		if(<UmProfileRepresentativelist>[] is M){
			return data.map<UmProfileRepresentativelist>((Map<String, dynamic> e) => UmProfileRepresentativelist.fromJson(e)).toList() as M;
		}
		if(<GetLoginByStatusaEntity>[] is M){
			return data.map<GetLoginByStatusaEntity>((Map<String, dynamic> e) => GetLoginByStatusaEntity.fromJson(e)).toList() as M;
		}
		if(<GetLoginByStatusaLoginlist>[] is M){
			return data.map<GetLoginByStatusaLoginlist>((Map<String, dynamic> e) => GetLoginByStatusaLoginlist.fromJson(e)).toList() as M;
		}
		if(<GetPurchsePlanEntity>[] is M){
			return data.map<GetPurchsePlanEntity>((Map<String, dynamic> e) => GetPurchsePlanEntity.fromJson(e)).toList() as M;
		}
		if(<GetPurchsePlanPurchaseplanlist>[] is M){
			return data.map<GetPurchsePlanPurchaseplanlist>((Map<String, dynamic> e) => GetPurchsePlanPurchaseplanlist.fromJson(e)).toList() as M;
		}
		if(<GetStaffEntity>[] is M){
			return data.map<GetStaffEntity>((Map<String, dynamic> e) => GetStaffEntity.fromJson(e)).toList() as M;
		}
		if(<GetStaffStafflist>[] is M){
			return data.map<GetStaffStafflist>((Map<String, dynamic> e) => GetStaffStafflist.fromJson(e)).toList() as M;
		}
		if(<GetUpperPlanCountEntity>[] is M){
			return data.map<GetUpperPlanCountEntity>((Map<String, dynamic> e) => GetUpperPlanCountEntity.fromJson(e)).toList() as M;
		}
		if(<GetUpperPlanCountPurchaseproductlist>[] is M){
			return data.map<GetUpperPlanCountPurchaseproductlist>((Map<String, dynamic> e) => GetUpperPlanCountPurchaseproductlist.fromJson(e)).toList() as M;
		}
		if(<GetUpperPurchasePlanForCountSingleEntity>[] is M){
			return data.map<GetUpperPurchasePlanForCountSingleEntity>((Map<String, dynamic> e) => GetUpperPurchasePlanForCountSingleEntity.fromJson(e)).toList() as M;
		}
		if(<GetUpperPurchasePlanForCountSinglePurchaseplanlist>[] is M){
			return data.map<GetUpperPurchasePlanForCountSinglePurchaseplanlist>((Map<String, dynamic> e) => GetUpperPurchasePlanForCountSinglePurchaseplanlist.fromJson(e)).toList() as M;
		}
		if(<GetUpperPurchasePlanForCountSinglePurchaseproductlist>[] is M){
			return data.map<GetUpperPurchasePlanForCountSinglePurchaseproductlist>((Map<String, dynamic> e) => GetUpperPurchasePlanForCountSinglePurchaseproductlist.fromJson(e)).toList() as M;
		}
		if(<GetUpperPurchsePlanEntity>[] is M){
			return data.map<GetUpperPurchsePlanEntity>((Map<String, dynamic> e) => GetUpperPurchsePlanEntity.fromJson(e)).toList() as M;
		}
		if(<GetUpperPurchsePlanPurchaseplanlist>[] is M){
			return data.map<GetUpperPurchsePlanPurchaseplanlist>((Map<String, dynamic> e) => GetUpperPurchsePlanPurchaseplanlist.fromJson(e)).toList() as M;
		}
		if(<GetUpperPurchsePlanSingleEntity>[] is M){
			return data.map<GetUpperPurchsePlanSingleEntity>((Map<String, dynamic> e) => GetUpperPurchsePlanSingleEntity.fromJson(e)).toList() as M;
		}
		if(<GetUpperPurchsePlanSinglePurchaseplanlist>[] is M){
			return data.map<GetUpperPurchsePlanSinglePurchaseplanlist>((Map<String, dynamic> e) => GetUpperPurchsePlanSinglePurchaseplanlist.fromJson(e)).toList() as M;
		}
		if(<GetUpperPurchsePlanSinglePurchaseproductlist>[] is M){
			return data.map<GetUpperPurchsePlanSinglePurchaseproductlist>((Map<String, dynamic> e) => GetUpperPurchsePlanSinglePurchaseproductlist.fromJson(e)).toList() as M;
		}
		if(<GetArtNoEntity>[] is M){
			return data.map<GetArtNoEntity>((Map<String, dynamic> e) => GetArtNoEntity.fromJson(e)).toList() as M;
		}
		if(<GetArtNoProductlist>[] is M){
			return data.map<GetArtNoProductlist>((Map<String, dynamic> e) => GetArtNoProductlist.fromJson(e)).toList() as M;
		}
		if(<GetComapanyEntity>[] is M){
			return data.map<GetComapanyEntity>((Map<String, dynamic> e) => GetComapanyEntity.fromJson(e)).toList() as M;
		}
		if(<GetComapanyCompanylist>[] is M){
			return data.map<GetComapanyCompanylist>((Map<String, dynamic> e) => GetComapanyCompanylist.fromJson(e)).toList() as M;
		}
		if(<GetProductByArtnoEntity>[] is M){
			return data.map<GetProductByArtnoEntity>((Map<String, dynamic> e) => GetProductByArtnoEntity.fromJson(e)).toList() as M;
		}
		if(<GetProductByArtnoProductlist>[] is M){
			return data.map<GetProductByArtnoProductlist>((Map<String, dynamic> e) => GetProductByArtnoProductlist.fromJson(e)).toList() as M;
		}
		if(<GetProductByArtnoSizelist>[] is M){
			return data.map<GetProductByArtnoSizelist>((Map<String, dynamic> e) => GetProductByArtnoSizelist.fromJson(e)).toList() as M;
		}
		if(<GetUpperOrderNoEntity>[] is M){
			return data.map<GetUpperOrderNoEntity>((Map<String, dynamic> e) => GetUpperOrderNoEntity.fromJson(e)).toList() as M;
		}
		if(<GetUppperPlanNoEntity>[] is M){
			return data.map<GetUppperPlanNoEntity>((Map<String, dynamic> e) => GetUppperPlanNoEntity.fromJson(e)).toList() as M;
		}
		if(<PendingOrderUPMEntity>[] is M){
			return data.map<PendingOrderUPMEntity>((Map<String, dynamic> e) => PendingOrderUPMEntity.fromJson(e)).toList() as M;
		}
		if(<PendingOrderUPMPendingorderslist>[] is M){
			return data.map<PendingOrderUPMPendingorderslist>((Map<String, dynamic> e) => PendingOrderUPMPendingorderslist.fromJson(e)).toList() as M;
		}
		if(<ResponseEntityEntity>[] is M){
			return data.map<ResponseEntityEntity>((Map<String, dynamic> e) => ResponseEntityEntity.fromJson(e)).toList() as M;
		}

		debugPrint("${M.toString()} not found");
	
		return null;
}

	static M? fromJsonAsT<M>(dynamic json) {
		if (json is List) {
			return _getListChildType<M>(json.map((e) => e as Map<String, dynamic>).toList());
		} else {
			return jsonConvert.asT<M>(json);
		}
	}
}