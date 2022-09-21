import 'package:dio/dio.dart';


import '../../../CustomWidget/CustomSnackBar.dart';
import '../../../Utils/DioConfig.dart';
import '../../../generated/json/base/json_convert_content.dart';
import '../Model/um_profile_entity.dart';



class ProfileUmService{
  Dio _dio = Dio(DioConfig.options);
  Future<UmProfileEntity?>getProfile(String id)async{
    try{
      print("Upperman"+id.toString());
      final response=await _dio.post('apigetluppermanagerprofile',data:
      {"id": id});
      if(response.statusCode==200){
        var data=response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<UmProfileEntity>(data);

      }
    }
    catch(e){
      CustomSnackbar().InfoSnackBar('Error', e.toString());
    }
  }

}