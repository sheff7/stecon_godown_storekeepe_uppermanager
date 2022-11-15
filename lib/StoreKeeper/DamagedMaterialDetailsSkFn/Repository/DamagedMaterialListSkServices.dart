import 'package:dio/dio.dart';

import '../../../CustomWidget/CustomSnackBar.dart';
import '../../../Utils/DioConfig.dart';
import '../../../generated/json/base/json_convert_content.dart';
import '../Model/get_damaged_material_list_sk_entity.dart';


class DamagedMaterialListSdkServices {
  Dio _dio = Dio(DioConfig.options);

  Future<GetDamagedMaterialListSkEntity?> getDamageList() async {
    try {
      final response = await _dio.post('apigetdmaterialrdamagedbystore', data: {});
      if (response.statusCode == 200) {
        var data = response.data;
        print("undda"+response.data.toString());
        return JsonConvert.fromJsonAsT<GetDamagedMaterialListSkEntity>(data);
      }
    } catch (e) {
      print(e);
    }
  }
}
