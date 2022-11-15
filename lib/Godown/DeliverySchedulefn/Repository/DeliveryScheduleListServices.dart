import 'package:dio/dio.dart';

import '../../../CustomWidget/CustomSnackBar.dart';
import '../../../Utils/DioConfig.dart';
import '../../../generated/json/base/json_convert_content.dart';
import '../Model/delivery_schedule_list_entity.dart';

class DeliveryScheduleListGd {
  Dio _dio = Dio(DioConfig.options);

  Future<DeliveryScheduleListEntity?> GetDeliverySchedule() async {
    try {
      final response = await _dio.post('apigetorderdeliveryschedule', data: {
      });
      print(response.statusCode);
      print(response);
      if (response.statusCode == 200) {
        var data = response.data;
        return JsonConvert.fromJsonAsT<DeliveryScheduleListEntity>(data);
      }
    } catch (e) {
      print(e);
    }
  }
}