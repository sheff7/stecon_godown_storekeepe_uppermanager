import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:intl/intl.dart';

import '../../../CustomWidget/CustomSnackBar.dart';
import '../../../Utils/DioConfig.dart';
import '../../../generated/json/base/json_convert_content.dart';
import '../Model/productin_plan_single_view_entity.dart';
import '../Model/production_plan_list_entity.dart';


class ProductionPlanService {
  Dio _dio = Dio(DioConfig.options);

  Future<ProductionPlanListEntity?> getProductionPlan() async {
    try {
      //  print("ddis" + rid.toString());
      final response =
      await _dio.post('apigetproductionplans', data: {});
      if (response.statusCode == 200) {
        var data = response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<ProductionPlanListEntity>(data);
      }
    } catch (e) {
      CustomSnackbar().InfoSnackBar('Error', e.toString());
    }
  }

  Future<ProductinPlanSingleViewEntity?> getProductionPlanSingle(
      String id) async {
    try {
      final response =
      await _dio.post(
          'apigetbyidinproductionplans', data: {
        "id": id
      });
      if (response.statusCode == 200) {
        var data = response.data;
        print(response.data.toString());
        return JsonConvert.fromJsonAsT<ProductinPlanSingleViewEntity>(data);
      }
    } catch (e) {
      CustomSnackbar().InfoSnackBar('Error', e.toString());
    }
  }
}