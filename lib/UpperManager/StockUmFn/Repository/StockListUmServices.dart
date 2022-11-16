
import 'package:dio/dio.dart';

import '../../../Utils/DioConfig.dart';
import '../../../generated/json/base/json_convert_content.dart';
import '../Model/stock_list_um_entity.dart';


class StockListUmServices{
  Dio _dio = Dio(DioConfig.options);
  Future<StockListUmEntity?>getStockList()async{
    try{
      final response=await _dio.post('apigetupperstocklist',data:{});
      if(response.statusCode==200){
        var data=response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<StockListUmEntity>(data);

      }
    }
    catch(e){
      print(e);

    }
  }

}