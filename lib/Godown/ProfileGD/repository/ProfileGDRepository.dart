import 'package:dio/dio.dart';
import '../../../CustomWidget/CustomSnackBar.dart';
import '../../../Utils/DioConfig.dart';
import '../../../generated/json/base/json_convert_content.dart';
import '../model/profile_g_d_entity.dart';




class ProfileGDService{
  Dio _dio = Dio(DioConfig.options);
  Future<ProfileGDEntity?>getProfile(String id)async{
    try{
      print("Upperman"+id.toString());
      final response=await _dio.post('apigetagodownmanagerprofile',data:
      {"id": id});
      if(response.statusCode==200){
        var data=response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<ProfileGDEntity>(data);

      }
    }
    catch(e){
      CustomSnackbar().InfoSnackBar('Error', e.toString());
    }
  }

}