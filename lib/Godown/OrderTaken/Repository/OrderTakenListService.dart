import 'package:dio/dio.dart';

import '../../../Utils/DioConfig.dart';
import '../../../generated/json/base/json_convert_content.dart';
import '../../DeliverySchedulefn/Model/delivery_schedule_list_entity.dart';
import '../Model/order_taken_entity.dart';

class OrderTakenListService{
  Dio _dio = Dio(DioConfig.options);

  Future<OrderTakenEntity?> GetDeliverySchedule() async {
    try {
      final response = await _dio.post('api/getpackingdeliveryschedule', data: {
      });
      print(response.statusCode);
      print(response);
      if (response.statusCode == 200) {
        var data = response.data;
        return JsonConvert.fromJsonAsT<OrderTakenEntity>(data);
      }
    } catch (e) {
      print(e);
    }
  }
}