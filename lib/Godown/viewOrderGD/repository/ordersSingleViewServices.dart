import 'package:dio/dio.dart';

import '../../../CustomWidget/CustomSnackBar.dart';
import '../../../Utils/DioConfig.dart';
import '../../../generated/json/base/json_convert_content.dart';
import '../model/orders_single_view_entity.dart';



class OrderSingleViewGDServices {
  Dio _dio = Dio(DioConfig.options);

  Future<OrdersSingleViewEntity?> OrderSingleView(
      String orderNo,
      String orderid
      ) async {
    try {
      final response = await _dio.post('apigetbyidinorder', data: {
        "orderno":orderNo,
        "orderid":orderid,
      });
      print(orderNo);
      print(orderid);

      if (response.statusCode == 200) {
        var data = response.data;
        return JsonConvert.fromJsonAsT<OrdersSingleViewEntity>(data);
      }
    } catch (e) {
      print(e);
    }
  }


}