

import'package:dio/dio.dart';

import '../../../Utils/DioConfig.dart';
import '../../../generated/json/base/json_convert_content.dart';
import '../Model/product_single_view_rep_entity.dart';


class ProductListSingleViewRepServices{
  Dio _dio = Dio(DioConfig.options);
  Future<ProductSingleViewRepEntity?>getPrdouctList(String Productid,String artNo, String categoryid)async{
    try{
      final response=await _dio.post('apigetbyidinrepgallery',data:{
        "productid":Productid,
        "artno":artNo,
        "categoryid":categoryid
      });
      if(response.statusCode==200){
        var data=response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<ProductSingleViewRepEntity>(data);

      }
    }
    catch(e){
      print(e);
      // CustomSnackbar().InfoSnackBar('Error', e.toString());
    }
  }

}