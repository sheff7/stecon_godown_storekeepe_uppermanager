import 'package:dio/dio.dart';
import 'package:intl/intl.dart';

import '../../../CustomWidget/CustomSnackBar.dart';
import '../../../Utils/DioConfig.dart';
import '../../../generated/json/base/json_convert_content.dart';
import '../Model/get_company_entity.dart';
import '../Model/get_department_entity.dart';
import '../Model/get_material_item_entity.dart';
import '../Model/response_entity.dart';


class AddIssuedMaterialOrderSkServices {
  Dio _dio = Dio(DioConfig.options);

  Future<GetDepartmentEntity?> GetDis() async {
    try {
      final response = await _dio.post('apigetdepartment', data: {});
      if (response.statusCode == 200) {
        var data = response.data;
        return JsonConvert.fromJsonAsT<GetDepartmentEntity>(data);
      }
    } catch (e) {
      (CustomSnackbar().InfoSnackBar('error', e.toString()));
    }
  }
  Future<GetMaterialItemEntity?> GetCatgryItem() async {
    try {
      final response = await _dio.post('apigeimaterialitems', data: {});
      if (response.statusCode == 200) {
        var data = response.data;
        return JsonConvert.fromJsonAsT<GetMaterialItemEntity>(data);
      }
    } catch (e) {
     (CustomSnackbar().InfoSnackBar('error', e.toString()));
    }
  }


  Future<GetCompanyEntity?> GetCompany() async {
    try {
      final response = await _dio.post('apigetccompany', data: {});
      if (response.statusCode == 200) {
        var data = response.data;
        return JsonConvert.fromJsonAsT<GetCompanyEntity>(data);
      }
    } catch (e) {
      (CustomSnackbar().InfoSnackBar('error', e.toString()));
    }
  }
  Future<ResponseEntity?> AddButton(String departmntId, String itemId, String companyId,String qty,String type,String commnents) async {
    try {
      var now = DateTime.now();
      final response = await _dio.post('apiaddissuedmaterial', data: {
        "department":departmntId,
        "item":itemId,
        "company":companyId,
        "quantity":qty,
        "type":type,
        "comments":commnents,
        "date":DateFormat('dd-MM-yyyy').format(now).toString(),
      });
      if (response.statusCode == 200) {
        var data = response.data;
        return JsonConvert.fromJsonAsT<ResponseEntity>(data);
      }
    } catch (e) {
      (CustomSnackbar().InfoSnackBar('error', e.toString()));
    }
  }




}
