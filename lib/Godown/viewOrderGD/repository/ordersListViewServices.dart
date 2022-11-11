import 'package:dio/dio.dart';

import '../../../CustomWidget/CustomSnackBar.dart';
import '../../../Utils/DioConfig.dart';
import '../../../generated/json/base/json_convert_content.dart';
import '../model/get_distributors_entity.dart';
import '../model/orders_list_view_entity.dart';

class OrderListViewService {
  Dio _dio = Dio(DioConfig.options);

  Future<ViewOrdersListViewEntity?> getOrderListView() async {
    try {
      final response = await _dio.post('apigetgorderlistforgodown', data: {});
      if (response.statusCode == 200) {
        var data = response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<ViewOrdersListViewEntity>(data);
      }
    } catch (e) {
      CustomSnackbar().InfoSnackBar('Error', e.toString());
    }
  }

  Future<GetDistributorsEntity?> getDistributorListt() async {
    try {
      final response = await _dio.post('apigetdistributors', data: {});
      if (response.statusCode == 200) {
        var data = response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<GetDistributorsEntity>(data);
      }
    } catch (e) {
      CustomSnackbar().InfoSnackBar('Error', e.toString());
    }
  }

  Future<ViewOrdersListViewEntity?> GetOrderListByFilter(
      String disId, String status) async {
    try {
      final response =
          await _dio.post('apigetofficeorderfilter', data: {
        "distributorid": disId,
        "status": status,
      });
      print(response.statusCode);
      print(disId.toString());
      print(response);
      if (response.statusCode == 200) {
        var data = response.data;
        return JsonConvert.fromJsonAsT<ViewOrdersListViewEntity>(data);
      }
    } catch (e) {
      print(CustomSnackbar().InfoSnackBar('Error', e.toString()));
    }
  }
}
