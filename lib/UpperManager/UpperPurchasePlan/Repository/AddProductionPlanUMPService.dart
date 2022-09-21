import 'package:dio/dio.dart';

import '../../../CustomWidget/CustomSnackBar.dart';
import '../../../Utils/DioConfig.dart';
import '../../../generated/json/base/json_convert_content.dart';
import '../Model/get_comapany_entity.dart';
import '../Model/get_upper_order_no_entity.dart';
import '../Model/get_uppper_plan_no_entity.dart';

class AddProductionPlanUPMSevice{
  Dio _dio = Dio(DioConfig.options);
  Future<GetUpperOrderNoEntity?>getOrderno()async{
    try{
      final response=await _dio.post('apigetupperorderno');
      if(response.statusCode==200){
        var data=response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<GetUpperOrderNoEntity>(data);

      }
    }
    catch(e){
      CustomSnackbar().InfoSnackBar('Error', e.toString());
    }
  }
  Future<GetComapanyEntity?>getCompany()async{
    try{
      final response=await _dio.post('apigetccompany');
      if(response.statusCode==200){
        var data=response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<GetComapanyEntity>(data);

      }
    }
    catch(e){
      CustomSnackbar().InfoSnackBar('Error', e.toString());
    }
  }
  Future<GetUppperPlanNoEntity?>getUpperPlanNo(String compnayId)async{
    try{
      final response=await _dio.post('apigetuuppercompanyplanno',data: {"companyid":compnayId});
      if(response.statusCode==200){
        var data=response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<GetUppperPlanNoEntity>(data);

      }
    }
    catch(e){
      CustomSnackbar().InfoSnackBar('Error', e.toString());
    }
  }
  Future<GetUppperPlanNoEntity?>getUpperPlan(String compnayId)async{
    try{
      final response=await _dio.post('getupperplanno',data: {"companyid":compnayId});
      if(response.statusCode==200){
        var data=response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<GetUppperPlanNoEntity>(data);

      }
    }
    catch(e){
      CustomSnackbar().InfoSnackBar('Error', e.toString());
    }
  }
}