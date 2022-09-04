import 'package:dio/dio.dart';
import 'package:stecon_godown_storekeepe_uppermanager/Utils/DioConfig.dart';

import '../../generated/json/base/json_convert_content.dart';
import '../Model/login_page_entity.dart';



class LoginPageService{
  Dio _dio = Dio(DioConfig.options);

  Future<LoginPageEntity?> Login(String username,String password) async{
    try{
      final response = await _dio.post('apiappauthenticateuser',
          data: {
            "username":username,
            "password":password
          });
      if(response.statusCode == 200){
        var data = response.data;
        return JsonConvert.fromJsonAsT<LoginPageEntity>(data);
      }

    }catch(e){
      print(e);
    }
  }
}