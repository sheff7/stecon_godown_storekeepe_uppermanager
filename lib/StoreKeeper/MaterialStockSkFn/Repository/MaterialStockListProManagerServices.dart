
import 'package:dio/dio.dart';

import '../../../Utils/DioConfig.dart';
import '../../../generated/json/base/json_convert_content.dart';

import '../Model/material_stock_list_sk_entity.dart';
import '../Model/material_stock_single_view_sk_entity.dart';





class MaterialStockListProManagerServices{
  Dio _dio = Dio(DioConfig.options);
  Future<MaterialStockListSkEntity?>getMaterialStockList()async{
    try{
      final response=await _dio.post('apigetmaterialstocklist',data:{});
      if(response.statusCode==200){
        var data=response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<MaterialStockListSkEntity>(data);

      }
    }
    catch(e){
      print(e);

    }
  }
  Future<MaterialStockSingleViewSkEntity?>getMaterialStockSingleView(
      String itemid,
      )async{
    try{
      final response=await _dio.post('apigetbyidinmaterialstock',data:{
        "itemid":itemid,
      });
      if(response.statusCode==200){
        var data=response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<MaterialStockSingleViewSkEntity>(data);

      }
    }
    catch(e){
      print(e);

    }
  }


}