import 'package:dio/dio.dart';

import '../../../CustomWidget/CustomSnackBar.dart';
import '../../../Utils/DioConfig.dart';
import '../../../generated/json/base/json_convert_content.dart';
import '../../UpperPurchasePlan/Model/response_entity_entity.dart';
import '../Model/get_order_single_view_entity.dart';
import '../Model/get_prodcut_single_entity.dart';
import '../Model/order_list_entity.dart';

class OrderListService{
  Dio _dio = Dio(DioConfig.options);

  Future<OrderListEntity?> getOrderList() async {
    try {
      final response = await _dio
          .post('apigetuorders',);
      if (response.statusCode == 200) {
        var data = response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<OrderListEntity>(data);
      }
    } catch (e) {
      CustomSnackbar().InfoSnackBar('Error', e.toString());
    }
  }

  Future<GetOrderSingleViewEntity?> GetOrderSingle(
      String orderno, String id, String orderid) async {
    try {
      final response = await _dio.post('apiabyorderbyidinorders', data: {
        "orderno": orderno,
        "distributorid": id,
        "orderid":orderid,
      });
      print(response.statusCode);
      print(response.data);
      print("bala"+id.toString()+orderno+orderid);
      if (response.statusCode == 200) {
        var data = response.data;
        return JsonConvert.fromJsonAsT<GetOrderSingleViewEntity>(data);
      }
    } catch (e) {
      print(CustomSnackbar().InfoSnackBar('Error', e.toString()));
    }
  }
  Future<GetProdcutSingleEntity?> GetHistorySingleProduct(
      String orderno, String id, String orderid) async {
    try {
      final response = await _dio.post('apigetaorderproductsingle', data: {
        "orderno": orderno,
        "id": id,
        "orderid":orderid,
      });
      print(response.statusCode);
      print(response.data);
      print("bala"+id.toString()+orderno+orderid);
      if (response.statusCode == 200) {
        var data = response.data;
        return JsonConvert.fromJsonAsT<GetProdcutSingleEntity>(data);
      }
    } catch (e) {
      print(CustomSnackbar().InfoSnackBar('Error', e.toString()));
    }
  }
}