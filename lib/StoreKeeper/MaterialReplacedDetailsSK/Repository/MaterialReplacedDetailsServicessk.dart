import 'package:dio/dio.dart';

import '../../../CustomWidget/CustomSnackBar.dart';
import '../../../Utils/DioConfig.dart';
import '../../../generated/json/base/json_convert_content.dart';
import '../Model/get_material_replaced_sk_entity.dart';


class MaterialReplacedListSdkServices {
  Dio _dio = Dio(DioConfig.options);

  Future<GetMaterialReplacedSkEntity?> getMaterialList() async {
    try {
      final response = await _dio.post('apigetrmaterialreplacedbystore', data: {});
      if (response.statusCode == 200) {
        var data = response.data;
        print("undda"+response.data.toString());
        return JsonConvert.fromJsonAsT<GetMaterialReplacedSkEntity>(data);
      }
    } catch (e) {
      print(e);
    }
  }
}
