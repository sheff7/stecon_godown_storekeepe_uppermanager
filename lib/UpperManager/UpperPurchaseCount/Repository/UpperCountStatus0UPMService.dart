import 'package:dio/dio.dart';

import '../../../CustomWidget/CustomSnackBar.dart';
import '../../../Utils/DioConfig.dart';
import '../../../generated/json/base/json_convert_content.dart';
import '../Model/get_purchse_plan_entity.dart';
import '../Model/get_upper_purchase_plan_for_count_single_entity.dart';

class UpperCountStatus0UPMServie{
  Dio _dio = Dio(DioConfig.options);
  Future<GetPurchsePlanEntity?>getUpperPurchseOrder(String upmId)async{
    try{
      final response=await _dio.post('apigetcupperpurchaseplanforcount',data: {"id":upmId});
      if(response.statusCode==200){
        var data=response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<GetPurchsePlanEntity>(data);

      }
    }
    catch(e){
      CustomSnackbar().InfoSnackBar('Error', e.toString());
    }
  }

  Future<GetUpperPurchasePlanForCountSingleEntity?>getUpperPurchseOrderSingle(String id,String orderno)async{
    print(id);
    print(orderno);

    try{
      final response=await _dio.post('apigetbyidinpupperpurchaseplanforcount',data: {"id":id,"orderno":orderno});
      if(response.statusCode==200){
        var data=response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<GetUpperPurchasePlanForCountSingleEntity>(data);

      }
    }
    catch(e){
      CustomSnackbar().InfoSnackBar('Error', e.toString());
    }
  }
}