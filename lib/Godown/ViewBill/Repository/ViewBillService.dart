import 'package:dio/dio.dart';

import '../../../Utils/DioConfig.dart';
import '../../../generated/json/base/json_convert_content.dart';
import '../Model/get_billing_list_entity.dart';
import '../Model/get_distributor_list_entity.dart';
import '../Model/view_bill_single_entity.dart';

class ViewBillService{
  Dio _dio = Dio(DioConfig.options);

  Future<GetDistributorListEntity?> getDisList() async {
    try {

      final response =
      await _dio.post('apigetdistributors' );
      if (response.statusCode == 200) {
        var data = response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<GetDistributorListEntity>(data);
      }
    } catch (e) {
      print(e);
    }
  }

  Future<GetBillingListEntity?>getBillList(String id)async{
    try {
      final response = await _dio.post('apiget_savedbillbydid',data: {"did":id});
      print(response.statusCode);
      if (response.statusCode == 200) {
        var data = response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<GetBillingListEntity>(data);
      }
    } catch (e) {
      print(e);
    }
  }
  Future<GetBillingListEntity?>getBillListByDate(String id,String sDate,String eDate)async{
    try {
      final response = await _dio.post('api_get_filterinsavedgstbill',data: {"did":id,
      "fdate":sDate,
      "tdate":eDate});
      print(response.statusCode);
      if (response.statusCode == 200) {
        var data = response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<GetBillingListEntity>(data);
      }
    } catch (e) {
      print(e);
    }
  }
  Future<ViewBillSingleEntity?>getBillListById(String id)async{
    try {
      final response = await _dio.post('apigetbyidinsavedgstbillbilling',data: {"id":id});
      print(response.statusCode);
      if (response.statusCode == 200) {
        var data = response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<ViewBillSingleEntity>(data);
      }
    } catch (e) {
      print(e);
    }
  }
}