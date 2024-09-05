import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:intl/intl.dart';

import '../../../StoreKeeper/IssuedMaterialSkFn/Model/response_entity.dart';
import '../../../Utils/DioConfig.dart';
import '../../../generated/json/base/json_convert_content.dart';
import '../../DeliverySchedulefn/Model/delivery_schedule_single_view_gd_entity.dart';
import '../../DeliverySchedulefn/Model/update_order_entity.dart';
import '../Model/order_taken_single_entity.dart';

class OrderTakenSingleService{
  Dio _dio = Dio(DioConfig.options);

  Future<OrderTakenSingleEntity?> getbyiddeliveryschedule(String id) async {
    try {
      log("orderid");
      final response = await _dio.post('api/get_packing_deliveryschedulebyid', data: {
        "id":id,
      });
      print(response.statusCode);
      log(response.data.toString());
      if (response.statusCode == 200) {
        var data = response.data;
        return JsonConvert.fromJsonAsT<OrderTakenSingleEntity>(data);
      }
    } catch (e) {
      print(e);
    }
  }

  Future<UpdateOrderEntity?> UpdateOrderGod(
      String id,String disid,List<Map<String, dynamic>> pList) async {
    try {
      var now = DateTime.now();
      FormData data=FormData.fromMap(
          {"id": id,
            "distributorid":disid,
            "distributorname":"",
            "currentdate":DateFormat('dd-MM-yyyy').format(now).toString(),
            "deliverylist":jsonEncode(pList)
          }
      );
      final response = await _dio
          .post('apiupdatedeliveryfromgodown', data:data

      );
      print(response.statusCode);
      print(response.data.toString());
      if (response.statusCode == 200) {
        var data = response.data;
        return JsonConvert.fromJsonAsT<
            UpdateOrderEntity>(data);
      }
    } catch (e) {
      print(e);
    }
  }
  Future<ResponseEntity?>addBilling(String deliveryid,String disid,List<Map<String,dynamic>>billingproducts)async{
    try{
      var now = DateTime.now();
      final response=await _dio.post('apiaddbilling',data: {
        "moveddate": DateFormat('dd-MM-yyyy').format(now).toString(),
        "deliveryid":deliveryid,
        "billingdate":"",
        "totalamount":"",
        "disid":disid,
        "status":"Pending",
        "billingproducts":jsonEncode(billingproducts)
      });
      if(response.statusCode==200){
        var data=response.data;
        return JsonConvert.fromJsonAsT<ResponseEntity>(data);
      }
    }
    catch(e){
      print(e);
    }
  }
}