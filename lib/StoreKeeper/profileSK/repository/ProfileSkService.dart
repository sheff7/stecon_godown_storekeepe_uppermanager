import 'package:dio/dio.dart';


import '../../../CustomWidget/CustomSnackBar.dart';
import '../../../Utils/DioConfig.dart';
import '../../../generated/json/base/json_convert_content.dart';
import '../model/profile_sk_entity.dart';




class ProfileSkService{
  Dio _dio = Dio(DioConfig.options);
  Future<ProfileSkEntity?>getProfile(String id)async{
    try{
      print("Upperman"+id.toString());
      final response=await _dio.post('apigetastorekeeperprofile',data:
      {"id": id});
      if(response.statusCode==200){
        var data=response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<ProfileSkEntity>(data);

      }
    }
    catch(e){
      CustomSnackbar().InfoSnackBar('Error', e.toString());
    }
  }

}