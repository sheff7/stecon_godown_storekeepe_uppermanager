import 'package:dio/dio.dart';

import '../../../CustomWidget/CustomSnackBar.dart';
import '../../../Utils/DioConfig.dart';
import '../../../generated/json/base/json_convert_content.dart';
import '../Model/get_login_by_statusa_entity.dart';



class LoginByStatusService{
  Dio _dio = Dio(DioConfig.options);
  Future<GetLoginByStatusaEntity?>getLoginByStatus(String logid)async{
    try{
      print("iddd"+logid.toString());
      final response=await _dio.post('apigetluppermanagerloginstatus',data:
      {"logid":logid});
      if(response.statusCode==200){
        var data=response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<GetLoginByStatusaEntity>(data);

      }
    }
    catch(e){
      CustomSnackbar().InfoSnackBar('Error', e.toString());
    }
  }
//  Future<LatestOrderDisEntity?>latestOrder(String id)async{
//    try{
//      print("disddi"+id.toString());
//      final response=await _dio.post('apialdistributororderbylimited',data:
//      {"distributorid": id,
//      });
//      if(response.statusCode==200){
//        var data=response.data;
//        print(response.data.toString());
//        return JsonConvert.fromJsonAsT<LatestOrderDisEntity>(data);
//
//      }
//    }
//    catch(e){
//      CustomSnackbar().InfoSnackBar('Error', e.toString());
//    }
//  }



}