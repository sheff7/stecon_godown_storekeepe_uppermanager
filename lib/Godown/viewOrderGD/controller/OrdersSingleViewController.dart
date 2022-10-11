import 'package:flutter/MATERIAL.dart';
import 'package:get/get.dart';

import '../../../Utils/InternetConnectivity.dart';
import '../model/orders_single_view_entity.dart';
import '../repository/ordersSingleViewServices.dart';







class OrderSingleViewGDController extends GetxController{

  final String orderno;
  final String orderid;

  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  Rx<OrdersSingleViewEntity> orderSingleViewEntity = OrdersSingleViewEntity().obs;


  final categoryController = TextEditingController();
  final colorController = TextEditingController();
  final size1controller = TextEditingController();
  final size2controller = TextEditingController();
  final size3controller = TextEditingController();
  final size4controller = TextEditingController();
  final size5controller = TextEditingController();
  final size6controller = TextEditingController();
  final size7controller = TextEditingController();
  final size8controller = TextEditingController();
  final size9controller = TextEditingController();
  final size10controller = TextEditingController();
  final size11controller = TextEditingController();
  final size12controller = TextEditingController();
  final size13controller = TextEditingController();
  final BoxController = TextEditingController();
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


  OrderSingleViewGDController({required this.orderno,required this.orderid});




  checkNetworkStatus() async {
    try {
      networkStatus.value =
      (await NetworkConnectivity().checkConnectivityState())!;
      print(networkStatus.value);
    } catch (e) {
      print(e);
    }
  }

  getProduct() async {
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true) {
      loadingBool.value = true;
      orderSingleViewEntity.value = (await OrderSingleViewGDServices().OrderSingleView(orderno,orderid))!;
      loadingBool.value= false;
      size1controller.text=orderSingleViewEntity.value.orderlist![0].s1.toString();
      size2controller.text=orderSingleViewEntity.value.orderlist![0].s2.toString();
      size3controller.text=orderSingleViewEntity.value.orderlist![0].s3.toString();
      size4controller.text=orderSingleViewEntity.value.orderlist![0].s4.toString();
      size5controller.text=orderSingleViewEntity.value.orderlist![0].s5.toString();
      size6controller.text=orderSingleViewEntity.value.orderlist![0].s6.toString();
      size7controller.text=orderSingleViewEntity.value.orderlist![0].s7.toString();
      size8controller.text=orderSingleViewEntity.value.orderlist![0].s8.toString();
      size9controller.text=orderSingleViewEntity.value.orderlist![0].s9.toString();
      size10controller.text=orderSingleViewEntity.value.orderlist![0].s10.toString();
      size11controller.text=orderSingleViewEntity.value.orderlist![0].s11.toString();
      size12controller.text=orderSingleViewEntity.value.orderlist![0].s12.toString();
      size13controller.text= orderSingleViewEntity.value.orderlist![0].s13.toString();


    }


  }

  @override
  void onInit() {
    // TODO: implement onInit
    checkNetworkStatus();
    getProduct();




    super.onInit();
  }
}