import 'package:dio/dio.dart';

import '../../../CustomWidget/CustomSnackBar.dart';
import '../../../Utils/DioConfig.dart';
import '../../../generated/json/base/json_convert_content.dart';
import '../Model/get_upper_purchse_plan_entity.dart';
import '../Model/get_upper_purchse_plan_single_entity.dart';

class UpperPurchseOrderService{
  Dio _dio = Dio(DioConfig.options);
  Future<GetUpperPurchsePlanEntity?>getUpperPurchseOrder(String upmId)async{
    try{
      final response=await _dio.post('apigetaupperpurchaseplan',data: {"id":upmId});
      if(response.statusCode==200){
        var data=response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<GetUpperPurchsePlanEntity>(data);

      }
    }
    catch(e){
      CustomSnackbar().InfoSnackBar('Error', e.toString());
    }
  }
  Future<GetUpperPurchsePlanSingleEntity?>getUpperPurchseOrderSingle(String id,String orderno)async{
    try{
      final response=await _dio.post('apigetbyidinpurchaseplan',data: {"id":id,"orderno":orderno});
      if(response.statusCode==200){
        var data=response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<GetUpperPurchsePlanSingleEntity>(data);

      }
    }
    catch(e){
      CustomSnackbar().InfoSnackBar('Error', e.toString());
    }
  }
}