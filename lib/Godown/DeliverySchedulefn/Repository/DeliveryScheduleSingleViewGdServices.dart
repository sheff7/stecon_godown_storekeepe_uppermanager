

import 'package:dio/dio.dart';
import 'package:stecon_godown_storekeepe_uppermanager/CustomWidget/CustomSnackBar.dart';

import '../../../Utils/DioConfig.dart';
import '../../../generated/json/base/json_convert_content.dart';
import '../Model/delivery_schedule_single_view_gd_entity.dart';

class DeliveryScheduleSingleViewtGd {
  Dio _dio = Dio(DioConfig.options);

  Future<DeliveryScheduleSingleViewGdEntity?> getbyiddeliveryschedule(String id) async {
    try {
      final response = await _dio.post('apigetbyidindeliveryschedule', data: {
        "id":id,
      });
      print(response.statusCode);
      print(response);
      if (response.statusCode == 200) {
        var data = response.data;
        return JsonConvert.fromJsonAsT<DeliveryScheduleSingleViewGdEntity>(data);
      }
    } catch (e) {
      print(CustomSnackbar().InfoSnackBar('Error', e.toString()));
    }
  }
}