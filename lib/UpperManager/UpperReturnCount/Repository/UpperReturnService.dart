import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:intl/intl.dart';

import '../../../StoreKeeper/IssuedMaterialSkFn/Model/response_entity.dart';
import '../../../Utils/DioConfig.dart';
import '../../../generated/json/base/json_convert_content.dart';
import '../../UpperPurchaseCount/Model/get_staff_entity.dart';
import '../Model/get_mr_no_entity.dart';
import '../Model/get_upper_count_entity.dart';
import '../Model/get_upper_order_entity.dart';
import '../Model/get_upper_plan_entity.dart';
import '../Model/get_upper_return_entity.dart';
import '../Model/get_upper_return_single_entity.dart';

class UpperReturnService {
  Dio _dio = Dio(DioConfig.options);

  Future<GetUpperOrderEntity?> getOrderno(String supplieid) async {
    try {
      final response = await _dio.post('apigetreturnorderno', data: {
        "supplierid": supplieid
      });
      if (response.statusCode == 200) {
        var data = response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<GetUpperOrderEntity>(data);
      }
    }
    catch (e) {}
  }

  Future<GetUpperPlanEntity?> getplan(String supplieid, String orderno,
      String orderId) async {
    try {
      final response = await _dio.post('apigetreturnupperplanno', data: {
        "supplierid": supplieid,
        "orderid": orderId,
        "orderno": orderno
      });
      if (response.statusCode == 200) {
        var data = response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<GetUpperPlanEntity>(data);
      }
    }
    catch (e) {}
  }

  Future<GetMrNoEntity?> getMrNo(String supplieid, String orderno,
      String orderId, String planno) async {
    try {
      final response = await _dio.post('apigetmrno', data: {
        "companyid": supplieid,
        "orderid": orderId,
        "orderno": orderno,
        "planno": planno
      });
      if (response.statusCode == 200) {
        var data = response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<GetMrNoEntity>(data);
      }
    }
    catch (e) {}
  }

  Future<GetStaffEntity?> getStaff() async {
    try {
      final response = await _dio.post('apigetstaff');
      if (response.statusCode == 200) {
        var data = response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<GetStaffEntity>(data);
      }
    }
    catch (e) {
      // CustomSnackbar().InfoSnackBar('Error', e.toString());
    }
  }

  Future<GetUpperCountEntity?> getUpperCount(String supplieid, String orderno,
      String orderId, String planno, String counttId) async {
    try {
      final response = await _dio.post('apigetuppercountvalues', data: {
        "supplierid": supplieid,
        "orderid": orderId,
        "orderno": orderno,
        "planno": planno,
        "countid": counttId
      });
      if (response.statusCode == 200) {
        var data = response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<GetUpperCountEntity>(data);
      }
    }
    catch (e) {
      print(e);
    }
  }

  Future<ResponseEntity?> addCount(String supplieid, String orderno,
      String orderId, String planno, String counttId,String productid,String mrno,
      String companyplanno,String type, List<Map<String,dynamic>>staffList,
      List<Map<String,dynamic>>rcCountList,) async {
    try {
      var now = DateTime.now();
      final response = await _dio.post('apiaddupperreturncount', data: {
        "supplierid": supplieid,
        "orderid": orderId,
        "orderno": orderno,
        "planno": planno,
        "countid": counttId,
        "productid":productid,
        "mrno":mrno,
        "companyplanno":companyplanno,
        "date": DateFormat('dd-MM-yyyy').format(now).toString(),
        "type":type,
        "returncountlist":jsonEncode(rcCountList),
        "countstafflist":jsonEncode(staffList),
        
      });
      if (response.statusCode == 200) {
        var data = response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<ResponseEntity>(data);
      }
    }
    catch (e) {
      print(e);
    }
  }

  Future<GetUpperReturnEntity?> getUpperReturn() async {
    try {
      final response = await _dio.post('apigetreturnuppercount', data: {

      });
      if (response.statusCode == 200) {
        var data = response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<GetUpperReturnEntity>(data);
      }
    }
    catch (e) {}
  }

  Future<GetUpperReturnSingleEntity?> getUpperReturnSingle(String id,String supplierid,String orderno,String orderid) async {
    try {
      final response = await _dio.post('apigetbyidinreturnuppercount', data: {
        "id":id,
        "supplierid":supplierid,
        "orderno":orderno,
        "orderid":orderid
      });
      if (response.statusCode == 200) {
        var data = response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<GetUpperReturnSingleEntity>(data);
      }
    }
    catch (e) {}
  }
}