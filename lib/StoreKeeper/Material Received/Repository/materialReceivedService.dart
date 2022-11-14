import 'package:dio/dio.dart';
import 'package:intl/intl.dart';
import '../../../CustomWidget/CustomSnackBar.dart';
import '../../../Utils/DioConfig.dart';
import '../../../generated/json/base/json_convert_content.dart';
import '../../IssuedMaterialSkFn/Model/response_entity.dart';
import '../Model/get_material_order_entity.dart';
import '../Model/get_material_received_count_entity.dart';

class MaterialReceivedService {
  Dio _dio = Dio(DioConfig.options);

  Future<GetMaterialOrderEntity?> ViewMaterialOrder() async {
    try {
      final response = await _dio.post('apigetamaterialorder', data: {});
      if (response.statusCode == 200) {
        var data = response.data;
        return JsonConvert.fromJsonAsT<GetMaterialOrderEntity>(data);
      }
    } catch (e) {
      (CustomSnackbar().InfoSnackBar('error', e.toString()));
    }
  }

  Future<ResponseEntity?> addMaterialRecivedCount(
      String orderid,
      String orderno,
      String itemid,
      String category,
      String companyid,
      String type,
      String oc,
      String dc,
      String rc,
      String note) async {
    try {
      var now = DateTime.now();
      final response = await _dio.post('apiaddstorematerialrecieved', data: {
        "orderid": orderid,
        "orderno": orderno,
        "itemid": itemid,
        "category": category,
        "companyid": companyid,
        "type": type,
        "oc": oc,
        "dc": dc,
        "rc": rc,
        "note": note,
        "date": DateFormat('dd-MM-yyyy').format(now).toString(),
      });
      if (response.statusCode == 200) {
        var data = response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<ResponseEntity>(data);
      }
    } catch (e) {}
  }

  Future<GetMaterialReceivedCountEntity?> getMaterialRcCountSingle() async {
    try {
      var now = DateTime.now();
      final response = await _dio.post('apigetstorematerialreceived', data: {});
      if (response.statusCode == 200) {
        var data = response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<GetMaterialReceivedCountEntity>(data);
      }
    } catch (e) {}
  }
  Future<ResponseEntity?> editMaterialRecivedCount(String oc,String dc,String rc,String note,String id,String date) async {
    try {
      var now = DateTime.now();
      print('id'+id.toString());
      print('oc'+oc.toString());
      print('dc'+dc.toString());
      print('rc'+rc.toString());
      print('note'+note.toString());


      final response = await _dio.post('apieditstorematerialrecieved', data: {
        "id":id,
        "oc":oc,
        "dc":dc,
        "rc":rc,
        "note":note,
        "date":date,
      });
      if (response.statusCode == 200) {
        var data = response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<ResponseEntity>(data);
      }
    } catch (e) {
      print(e);
    }
  }
}
