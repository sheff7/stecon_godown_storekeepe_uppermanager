

import 'package:dio/dio.dart';

import '../../../Utils/DioConfig.dart';
import '../../../generated/json/base/json_convert_content.dart';
import '../Model/stock_single_view_um_entity.dart';


class StockSingleViewUmServices{
  Dio _dio = Dio(DioConfig.options);
  Future<StockSingleViewUmEntity?>getPrdouctList(String Productid)async{
    try{
      final response=await _dio.post('apigetbyidinupperstock',data:{
        "productid":Productid,
      });
      if(response.statusCode==200){
        var data=response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<StockSingleViewUmEntity>(data);

      }
    }
    catch(e){
      print(e);
    }
  }

}