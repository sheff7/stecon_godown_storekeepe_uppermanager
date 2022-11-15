import 'package:dio/dio.dart';

import '../../../CustomWidget/CustomSnackBar.dart';
import '../../../Utils/DioConfig.dart';
import '../../../generated/json/base/json_convert_content.dart';
import '../Model/get_issued_material_list_entity.dart';

class IssuedMaterialListSdkServices {
  Dio _dio = Dio(DioConfig.options);

  Future<GetIssuedMaterialListEntity?> getMaterialList() async {
    try {
      final response = await _dio.post('apigetissuedmaterialitems', data: {});
      if (response.statusCode == 200) {
        var data = response.data;
        print("undda"+response.data.toString());
        return JsonConvert.fromJsonAsT<GetIssuedMaterialListEntity>(data);
      }
    } catch (e) {
      print(e);
    }
  }
}
