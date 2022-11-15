

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:stecon_godown_storekeepe_uppermanager/CustomWidget/CustomSnackBar.dart';

import '../../../Utils/DioConfig.dart';
import 'package:intl/intl.dart';
import '../../../generated/json/base/json_convert_content.dart';
import '../Model/delivery_schedule_single_view_gd_entity.dart';
import '../Model/update_order_entity.dart';

class DeliveryScheduleSingleViewtGd {
  Dio _dio = Dio(DioConfig.options);

  Future<DeliveryScheduleSingleViewGdEntity?> getbyiddeliveryschedule(String id) async {
    try {
      print(id);
      final response = await _dio.post('apigetbyidindeliveryschedule', data: {
        "id":id,
      });
      print(response.statusCode);
      print(response.data.toString());
      if (response.statusCode == 200) {
        var data = response.data;
        return JsonConvert.fromJsonAsT<DeliveryScheduleSingleViewGdEntity>(data);
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
}