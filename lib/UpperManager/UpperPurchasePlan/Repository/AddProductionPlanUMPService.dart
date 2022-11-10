import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:intl/intl.dart';

import '../../../CustomWidget/CustomSnackBar.dart';
import '../../../Utils/DioConfig.dart';
import '../../../generated/json/base/json_convert_content.dart';
import '../Model/get_art_no_entity.dart';
import '../Model/get_comapany_entity.dart';
import '../Model/get_product_by_artno_entity.dart';
import '../Model/get_upper_order_no_entity.dart';
import '../Model/get_uppper_plan_no_entity.dart';
import '../Model/pending_order_u_p_m_entity.dart';
import '../Model/response_entity_entity.dart';

class AddProductionPlanUPMSevice{
  Dio _dio = Dio(DioConfig.options);
  Future<GetUpperOrderNoEntity?>getOrderno()async{
    try{
      final response=await _dio.post('apigetupperorderno');
      if(response.statusCode==200){
        var data=response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<GetUpperOrderNoEntity>(data);

      }
    }
    catch(e){
      CustomSnackbar().InfoSnackBar('Error', e.toString());
    }
  }
  Future<GetComapanyEntity?>getCompany()async{
    try{
      final response=await _dio.post('apigetupperproductionmanager');
      if(response.statusCode==200){
        var data=response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<GetComapanyEntity>(data);

      }
    }
    catch(e){
      CustomSnackbar().InfoSnackBar('Error', e.toString());
    }
  }
  Future<PendingOrderUPMEntity?>getPendinigOrder(String company,String artnoid)async{
    try{
      final response=await _dio.post('apigetuupperpurchaseplanpendingorderlist',
      data: {
        "companyid":company,
        "artno":artnoid
      });
      if(response.statusCode==200){
        var data=response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<PendingOrderUPMEntity>(data);

      }
    }
    catch(e){
      CustomSnackbar().InfoSnackBar('Error', e.toString());
    }
  }

  Future<ResponseEntityEntity?>checkPendingOrder(String comapnyId,String artno)async{
    try{
      final response=await _dio.post('apicheckupperpurchasependingorderexist',
      data: {"companyid":comapnyId,
        "artno":artno
          });
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
  Future<GetUppperPlanNoEntity?>getUpperPlanNo(String compnayId)async{
    try{
      final response=await _dio.post('apigetuuppercompanyplanno',data: {"companyid":compnayId});
      if(response.statusCode==200){
        var data=response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<GetUppperPlanNoEntity>(data);

      }
    }
    catch(e){
      CustomSnackbar().InfoSnackBar('Error', e.toString());
    }
  }
  Future<GetUppperPlanNoEntity?>getUpperPlan(String compnayId,String artnoid)async{
    try{
      final response=await _dio.post('getupperplanno',data: {"companyid":compnayId,"artnoid":artnoid});
      if(response.statusCode==200){
        var data=response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<GetUppperPlanNoEntity>(data);

      }
    }
    catch(e){
      CustomSnackbar().InfoSnackBar('Error', e.toString());
    }
  }
  Future<GetArtNoEntity?> getArtNo() async {
    try {
      final response = await _dio.post('apigetproductartno');
      print(response.data);
      if (response.statusCode == 200) {
        var data = response.data;
        return JsonConvert.fromJsonAsT<GetArtNoEntity>(data);
      }
    } catch (e) {
      print(e);
    }
  }

  Future<GetProductByArtnoEntity?> getProductDetails(String ArtNo) async {
    try {
      final response = await _dio.post('apigetoprodutdetailsfororderbyartno',data: {
        "artno":ArtNo
      });
      print(response.statusCode);
      if (response.statusCode == 200) {
        var data = response.data;
        print(response.data);
        return JsonConvert.fromJsonAsT<GetProductByArtnoEntity>(data);
      }
    } catch (e) {
      print(e);
    }
  }
  Future<ResponseEntityEntity?> addUpperPurchase(String orderNo,String companyId,String companyplano,String umpid,List<Map<String, dynamic>> pList) async {
    try {
      print(pList);
      var now = DateTime.now();
      FormData formData=FormData.fromMap({
        "orderno":orderNo,
        "companyid":companyId,
        "companyplanno":companyplano,
        "status":"Pending",
        "ordertakenbyid":umpid,
        "ordertakenby":"",
        "orderdate":DateFormat('dd-MM-yyyy').format(now).toString(),
        "orderlist":jsonEncode(pList)
      });
      final response = await _dio.post('apiaddupperpurchaseplan',data:formData
      );
      print(response.statusCode);
      if (response.statusCode == 200) {
        var data = response.data;
        print(response.data);
        return JsonConvert.fromJsonAsT<ResponseEntityEntity>(data);
      }
    } catch (e) {
      print(e);
    }
  }
}