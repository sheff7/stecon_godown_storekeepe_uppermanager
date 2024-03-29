import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperPurchasePlan/Model/response_entity_entity.dart';

import '../../../CustomWidget/CustomSnackBar.dart';
import '../../../Godown/StockGd/Model/get_size_details_entity.dart';
import '../../../Utils/DioConfig.dart';
import '../../../generated/json/base/json_convert_content.dart';
import '../Model/get_department_list_entity.dart';
import '../Model/get_purchse_plan_entity.dart';
import '../Model/get_staff_entity.dart';
import '../Model/get_upper_plan_count_entity.dart';
import '../Model/get_upper_purchase_plan_for_count_single_entity.dart';

class UpperCountStatus0UPMServie{
  Dio _dio = Dio(DioConfig.options);
  Future<GetPurchsePlanEntity?>getUpperPurchseOrder(String upmId)async{
    print("upm"+upmId.toString());
    try{
      final response=await _dio.post('apigetcupperpurchaseplanforcount',data: {"id":upmId});
      if(response.statusCode==200){
        var data=response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<GetPurchsePlanEntity>(data);
      }
    }
    catch(e){
      CustomSnackbar().InfoSnackBar('Error', e.toString());
    }
  }

  Future<GetUpperPurchasePlanForCountSingleEntity?>getUpperPurchseOrderSingle(String id,String orderno)async{
    print(id);
    print(orderno);

    try{
      final response=await _dio.post('apigetbyidinpupperpurchaseplanforcount',data: {"id":id,"orderno":orderno});
      if(response.statusCode==200){
        var data=response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<GetUpperPurchasePlanForCountSingleEntity>(data);

      }
    }
    catch(e){
      CustomSnackbar().InfoSnackBar('Error', e.toString());
    }
  }

  Future<GetUpperPlanCountEntity?>getUpperPlan(String id,String orderno,String comapnyId,String palnno,String upperOrder)async{
    print(id);
    print(orderno);

    try{
      final response=await _dio.post('apigetcuppercount',data: {
        "id":id,
        "orderno":orderno,
        "companyid":comapnyId,
        "palnno":palnno,
        "upperorderid":upperOrder
      });
      if(response.statusCode==200){
        var data=response.data;
        print("res"+response.data.toString());
        return JsonConvert.fromJsonAsT<GetUpperPlanCountEntity>(data);

      }
    }
    catch(e){
      CustomSnackbar().InfoSnackBar('Error', e.toString());
    }
  }
  Future<GetStaffEntity?>getStaff()async{

    try{
      final response=await _dio.post('apigetstaff');
      if(response.statusCode==200){
        var data=response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<GetStaffEntity>(data);

      }
    }
    catch(e){
      CustomSnackbar().InfoSnackBar('Error', e.toString());
    }
  }
  Future<ResponseEntityEntity?>addUpperCount(String orderno,
      String comnpanyPlanNo,
      String upperorderid,
      String companyid,
      String dateofcounting,
      String comments,
      String planno,
      List<Map<String,dynamic>>rcList,
      List<Map<String,dynamic>>dcList,
      List<Map<String,dynamic>>staffList,
      List<Map<String,dynamic>>rcCountList,
      List<Map<String,dynamic>>shortageCountList,
      List<Map<String,dynamic>>balanceCountList,

      )async{
    FormData formData=FormData.fromMap({
      "orderno":orderno,
      "companyplanno":comnpanyPlanNo,
      "upperorderid":upperorderid,
      "companyid":companyid,
      "supplierid":companyid,
      "dateofcounting":dateofcounting,
      "comments":comments,
      "planno":planno,
      "receivedlist":jsonEncode(rcCountList),
      "receivedcountlist":jsonEncode(rcList),
      "damagedcountlist":jsonEncode(dcList),
      "countstafflist":jsonEncode(staffList),
      "shortagecountlist":jsonEncode(shortageCountList),
      "balancecountlist":jsonEncode(balanceCountList)
    });
    try{
      final response=await _dio.post('apiaddcuppercount',data: formData);
      if(response.statusCode==200){
        var data=response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<ResponseEntityEntity>(data);

      }
    }
    catch(e){
      CustomSnackbar().InfoSnackBar('Error', e.toString());
    }
  }

  Future<ResponseEntityEntity?>editUpperCount(String orderno,
      String comnpanyPlanNo,
      String upperorderid,
      String companyid,
      String dateofcounting,
      String comments,
      String planno,
      List<Map<String,dynamic>>rcList,
      List<Map<String,dynamic>>dcList,
      List<Map<String,dynamic>>staffList,
      List<Map<String,dynamic>>rcCountList,
      List<Map<String,dynamic>>shortageCountList,
      List<Map<String,dynamic>>balanceCountList,
      String countid,
      String receivedid,
      String damagedid,
      String receivedsupid,
      String shortageId,
      String balanceId,

      )async{
    FormData formData=FormData.fromMap({
      "countid":countid,
      "receivedid":receivedid,
      "damagedid":damagedid,
      "receivedsupid":receivedsupid,
      "orderno":orderno,
      "companyplanno":comnpanyPlanNo,
      "upperorderid":upperorderid,
      "companyid":companyid,
      "supplierid":companyid,
      "dateofcounting":dateofcounting,
      "comments":comments,
      "planno":planno,
      "receivedcount":"",
      "receivedcountlist":jsonEncode(rcList),
      "damagedcountlist":jsonEncode(dcList),
      "countstafflist":jsonEncode(staffList),
      "receivedlist":jsonEncode(rcCountList),
      "shortagecountlist":jsonEncode(shortageCountList),
      "balancecountlist":jsonEncode(balanceCountList),
      "shortageid":shortageId,
      "balanceid":balanceId
    });
    try{
      final response=await _dio.post('apieditcuppercount',data: formData);
      if(response.statusCode==200){
        var data=response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<ResponseEntityEntity>(data);

      }
    }
    catch(e){
      CustomSnackbar().InfoSnackBar('Error', e.toString());
    }
  }

  Future<GetDepartmentListEntity?>getDepartments()async{
    try{
      final response=await _dio.post('apigetdepartmentlists');
      if(response.statusCode==200){
        var data=response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<GetDepartmentListEntity>(data);
      }
    }
    catch(e){
      print(e);
    }
  }

  Future<GetStaffEntity?>getStaffbyDepartment(String id)async{

    try{
      final response=await _dio.post('apiget_staffbydepartment',data: {
        "departmentid":id
      });
      if(response.statusCode==200){
        var data=response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<GetStaffEntity>(data);

      }
    }
    catch(e){
      CustomSnackbar().InfoSnackBar('Error', e.toString());
    }
  }

  Future<GetSizeDetailsEntity?>getSizeByArtNo(String artnoId)async{
    try{
      final response=await _dio.post('apigetpsizelistofproducts',data: {"artnoid":artnoId});
      if(response.statusCode==200){
        var data=response.data;
        return JsonConvert.fromJsonAsT<GetSizeDetailsEntity>(data);
      }
    }
    catch(e){
      print(e);
    }
  }

}