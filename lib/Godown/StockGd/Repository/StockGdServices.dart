
import 'package:dio/dio.dart';
//
// import '../../../CustomWidget/CustomSnackBar.dart';
import '../../../Utils/DioConfig.dart';
import '../../../generated/json/base/json_convert_content.dart';
import '../Model/stock_list_gd_entity.dart';


class StockGdServices{
  Dio _dio = Dio(DioConfig.options);
  Future<StockListGdEntity?>getPrdouctList(String page)async{
    try{
      final response=await _dio.post('apigetlistinproductstock',data:{
        "page":page,
      });
      if(response.statusCode==200){
        var data=response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<StockListGdEntity>(data);

      }
    }
    catch(e){
      print(e);
      // CustomSnackbar().InfoSnackBar('Error', e.toString());
    }
  }

}