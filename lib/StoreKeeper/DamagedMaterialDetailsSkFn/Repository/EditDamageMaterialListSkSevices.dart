import 'package:dio/dio.dart';
import 'package:intl/intl.dart';


import '../../../CustomWidget/CustomSnackBar.dart';
import '../../../Utils/DioConfig.dart';
import '../../../generated/json/base/json_convert_content.dart';
import '../../IssuedMaterialSkFn/Model/get_company_entity.dart';
import '../../IssuedMaterialSkFn/Model/get_department_entity.dart';
import '../../IssuedMaterialSkFn/Model/get_issued_material_list_entity.dart';
import '../../IssuedMaterialSkFn/Model/get_material_item_entity.dart';
import '../../IssuedMaterialSkFn/Model/response_entity.dart';
import '../../MaterialReplacedDetailsSK/Model/get_material_replaced_sk_entity.dart';
import '../Model/get_damaged_material_list_sk_entity.dart';




class EditDamagedMaterialSkServices {
  Dio _dio = Dio(DioConfig.options);

  Future<GetDamagedMaterialListSkEntity?> getMaterialListbyOrderid(String id) async {
    try {
      final response = await _dio.post('apigetrbyidinmaterialdamagedbystore', data: {
        "id":id,
      });
      if (response.statusCode == 200) {
        var data = response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<GetDamagedMaterialListSkEntity>(data);
      }
    } catch (e) {
      print(e);
    }
  }


  Future<GetDepartmentEntity?> GetDis() async {
    try {
      final response = await _dio.post('apigetdepartment', data: {});
      if (response.statusCode == 200) {
        var data = response.data;
        return JsonConvert.fromJsonAsT<GetDepartmentEntity>(data);
      }
    } catch (e) {
      print(e);
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
      print(e);
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
      print(e);
    }
  }
  Future<GetIssuedMaterialListEntity?> getIssuedNo() async {
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
  Future<GetMaterialReplacedSkEntity?> getReplacedList() async {
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

  Future<ResponseEntity?> EditButton(String id,String departmntId, String itemId, String companyId,String qty,String type,String commnents) async {
    try {
      // var now = DateTime.now();
      final response = await _dio.post('apieditrmaterialdamagedystore', data: {
        "id":id,
        "department":departmntId,
        "item":itemId,
        "company":companyId,
        "quantity":qty,
        "type":type,
        "comments":commnents,
        // "date":DateFormat('dd-MM-yyyy').format(now).toString(),
      });
      print(response);
      if (response.statusCode == 200) {
        var data = response.data;
        return JsonConvert.fromJsonAsT<ResponseEntity>(data);
      }
    } catch (e) {
      print(e);
    }
  }






}
