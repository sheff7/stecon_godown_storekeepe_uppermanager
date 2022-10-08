import 'package:dio/dio.dart';

import '../../../CustomWidget/CustomSnackBar.dart';
import '../../../Utils/DioConfig.dart';
import '../../../generated/json/base/json_convert_content.dart';
import '../model/loginby_status_g_d_entity.dart';




class LoginByStatusGDService{
  Dio _dio = Dio(DioConfig.options);
  Future<LoginbyStatusGDEntity?>getLoginByStatus(String logid)async{
    try{
      print("iddd"+logid.toString());
      final response=await _dio.post('apigetagodownmanagerloginstatus',data:
      {"logid":logid});
      if(response.statusCode==200){
        var data=response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<LoginbyStatusGDEntity>(data);

      }
    }
    catch(e){
      CustomSnackbar().InfoSnackBar('Error', e.toString());
    }
  }
}