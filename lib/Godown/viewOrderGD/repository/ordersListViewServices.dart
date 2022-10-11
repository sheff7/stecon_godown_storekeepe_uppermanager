import 'package:dio/dio.dart';
import '../../../CustomWidget/CustomSnackBar.dart';
import '../../../Utils/DioConfig.dart';
import '../../../generated/json/base/json_convert_content.dart';
import '../model/orders_list_view_entity.dart';




class OrderListViewService{
  Dio _dio = Dio(DioConfig.options);
  Future<ViewOrdersListViewEntity?>getOrderListView()async{
    try{
      final response=await _dio.post('apigetgorderlistforgodown',data:
      {});
      if(response.statusCode==200){
        var data=response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<ViewOrdersListViewEntity>(data);

      }
    }
    catch(e){
      CustomSnackbar().InfoSnackBar('Error', e.toString());
    }
  }

}