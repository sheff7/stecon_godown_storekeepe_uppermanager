import 'package:flutter/MATERIAL.dart';
import 'package:get/get.dart';

import '../../../Utils/InternetConnectivity.dart';
import '../Model/get_upper_purchse_plan_single_entity.dart';
import '../Repository/UpperPurchseOrderRepository.dart';

class UpperPurchseOrder1Controller extends GetxController{
  final String upmId;
  final String id;
  final String orderno;
  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  Rx<GetUpperPurchsePlanSingleEntity> orderNoEntity=GetUpperPurchsePlanSingleEntity().obs;


  RxBool enable1 = false.obs;
  RxBool enable2 = false.obs;
  RxBool enable3 = false.obs;
  RxBool enable4 = false.obs;
  RxBool enable5 = false.obs;
  RxBool enable6 = false.obs;
  RxBool enable7 = false.obs;
  RxBool enable8 = false.obs;
  RxBool enable9 = false.obs;
  RxBool enable10 = false.obs;
  RxBool enable11 = false.obs;
  RxBool enable12 = false.obs;
  RxBool enable13 = false.obs;

  UpperPurchseOrder1Controller({required this.upmId, required this.id, required this.orderno});

  checkNetworkStatus() async {
    try {
      networkStatus.value =
      (await NetworkConnectivity().checkConnectivityState())!;
      print(networkStatus.value);
    } catch (e) {
      print(e);
    }
  }
  getUpperOrder()async{
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true) {
      loadingBool.value = true;
      orderNoEntity.value =
      (await UpperPurchseOrderService().getUpperPurchseOrderSingle(
          id, orderno))!;
      loadingBool.value = false;

    }
  }
  @override
  void onInit() {
    // TODO: implement onInit
    checkNetworkStatus();
    getUpperOrder();

    super.onInit();
  }
}