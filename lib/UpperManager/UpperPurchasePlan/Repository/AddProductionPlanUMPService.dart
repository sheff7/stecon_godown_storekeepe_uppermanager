import 'package:dio/dio.dart';

import '../../../CustomWidget/CustomSnackBar.dart';
import '../../../Utils/DioConfig.dart';
import '../../../generated/json/base/json_convert_content.dart';
import '../Model/get_art_no_entity.dart';
import '../Model/get_comapany_entity.dart';
import '../Model/get_product_by_artno_entity.dart';
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
  Future<GetArtNoEntity?> getArtNo() async {
    try {
      final response = await _dio.post('apigetproductartno');
      print(response.data);
      if (response.statusCode == 200) {
        var data = response.data;
        return JsonConvert.fromJsonAsT<GetArtNoEntity>(data);
      }
    } catch (e) {
      print(e);
    }
  }

  Future<GetProductByArtnoEntity?> getProductDetails(String ArtNo) async {
    try {
      final response = await _dio.post('apigetoprodutdetailsfororderbyartno',data: {
        "artno":ArtNo
      });
      print(response.statusCode);
      if (response.statusCode == 200) {
        var data = response.data;
        print(response.data);
        return JsonConvert.fromJsonAsT<GetProductByArtnoEntity>(data);
      }
    } catch (e) {
      print(e);
    }
  }
}