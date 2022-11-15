import 'package:dio/dio.dart';
import '../../../CustomWidget/CustomSnackBar.dart';
import '../../../Utils/DioConfig.dart';
import '../../../generated/json/base/json_convert_content.dart';
import '../model/login_by_status_entity.dart';




class LoginByStatusService{
  Dio _dio = Dio(DioConfig.options);
  Future<LoginByStatusEntity?>getLoginByStatus(String logid)async{
    try{
      print("iddd"+logid.toString());
      final response=await _dio.post('apigetastorekeeperloginstatus',data:
      {"logid":logid});
      if(response.statusCode==200){
        var data=response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<LoginByStatusEntity>(data);

      }
    }
    catch(e){
      print(e);
    }
  }




}