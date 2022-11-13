import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../CustomWidget/CustomBox1.dart';
import '../../../Utils/InternetConnectivity.dart';
import '../Model/get_prodcut_single_entity.dart';
import '../Repository/OrderListService.dart';

class OrderListProductController extends GetxController{
  final String id;
  final String orderno;
  final String orderid;

  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  Rx<GetProdcutSingleEntity> historySingleViewDisEntity = GetProdcutSingleEntity().obs;


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
  RxList<Widget> sizeListGrid = (List<Widget>.of([])).obs;

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

  size1() {
    return CustomBox1(
      controller: size1controller,
      label: "Size-1",
      Enabled: enable1.value,
    );
  }
  size2() {
    return CustomBox1(
      controller: size2controller,
      label: "Size-2",
      Enabled: enable2.value,
    );
  }
  size3() {
    return CustomBox1(
      controller: size3controller,
      label: "Size-3",
      Enabled: enable3.value,
    );
  }
  size4() {
    return CustomBox1(
      controller: size4controller,
      label: "Size-4",
      Enabled: enable4.value,
    );
  }
  size5() {
    return CustomBox1(
      controller: size5controller,
      label: "Size-5",
      Enabled: enable5.value,
    );
  }
  size6() {
    return CustomBox1(
      controller: size6controller,
      label: "Size-6",
      Enabled: enable6.value,
    );
  }
  size7() {
    return CustomBox1(
      controller: size7controller,
      label: "Size-7",
      Enabled: enable7.value,
    );
  }
  size8() {
    return CustomBox1(
      controller: size8controller,
      label: "Size-8",
      Enabled: enable8.value,
    );
  }
  size9() {
    return CustomBox1(
      controller: size9controller,
      label: "Size-9",
      Enabled: enable9.value,
    );
  }
  size10() {
    return CustomBox1(
      controller: size10controller,
      label: "Size-10",
      Enabled: enable10.value,
    );
  }
  size11() {
    return CustomBox1(
      controller: size11controller,
      label: "Size-11",
      Enabled: enable11.value,
    );
  }
  size12() {
    return CustomBox1(
      controller: size12controller,
      label: "Size-12",
      Enabled: enable12.value,
    );
  }
  size13() {
    return CustomBox1(
      controller: size13controller,
      label: "Size-13",
      Enabled: enable13.value,
    );
  }


  OrderListProductController({required this.id, required this.orderno, required this.orderid});






  checkNetworkStatus() async {
    try {
      networkStatus.value =
      (await NetworkConnectivity().checkConnectivityState())!;
      print(networkStatus.value);
    } catch (e) {
      print(e);
    }
  }

  getHistory() async {
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true) {
      loadingBool.value = true;
      historySingleViewDisEntity.value = (await OrderListService().GetHistorySingleProduct(orderno,id,orderid))!;
      loadingBool.value= false;
      size1controller.text=historySingleViewDisEntity.value.orderproductlist![0].s1.toString();
      size2controller.text=historySingleViewDisEntity.value.orderproductlist![0].s2.toString();
      size3controller.text=historySingleViewDisEntity.value.orderproductlist![0].s3.toString();
      size4controller.text=historySingleViewDisEntity.value.orderproductlist![0].s4.toString();
      size5controller.text=historySingleViewDisEntity.value.orderproductlist![0].s5.toString();
      size6controller.text=historySingleViewDisEntity.value.orderproductlist![0].s6.toString();
      size7controller.text=historySingleViewDisEntity.value.orderproductlist![0].s7.toString();
      size8controller.text=historySingleViewDisEntity.value.orderproductlist![0].s8.toString();
      size9controller.text=historySingleViewDisEntity.value.orderproductlist![0].s9.toString();
      size10controller.text=historySingleViewDisEntity.value.orderproductlist![0].s10.toString();
      size11controller.text=historySingleViewDisEntity.value.orderproductlist![0].s11.toString();
      size12controller.text=historySingleViewDisEntity.value.orderproductlist![0].s12.toString();
      size13controller.text= historySingleViewDisEntity.value.orderproductlist![0].s13.toString();


      if(historySingleViewDisEntity.value.orderproductlist![0].s1.toString().length!=0){
        sizeListGrid.add(size1());
      }
      if(historySingleViewDisEntity.value.orderproductlist![0].s2.toString().length!=0){
        sizeListGrid.add(size2());
      }
      if(historySingleViewDisEntity.value.orderproductlist![0].s3.toString().length!=0){
        sizeListGrid.add(size3());
      }
      if(historySingleViewDisEntity.value.orderproductlist![0].s4.toString().length!=0){
        sizeListGrid.add(size4());
      }
      if(historySingleViewDisEntity.value.orderproductlist![0].s5.toString().length!=0){
        sizeListGrid.add(size5());
      }
      if(historySingleViewDisEntity.value.orderproductlist![0].s6.toString().length!=0){
        sizeListGrid.add(size6());
      }
      if(historySingleViewDisEntity.value.orderproductlist![0].s7.toString().length!=0){
        sizeListGrid.add(size7());
      }
      if(historySingleViewDisEntity.value.orderproductlist![0].s8.toString().length!=0){
        sizeListGrid.add(size8());
      }
      if(historySingleViewDisEntity.value.orderproductlist![0].s1.toString().length!=0){
        sizeListGrid.add(size9());
      }
      if(historySingleViewDisEntity.value.orderproductlist![0].s10.toString().length!=0){
        sizeListGrid.add(size10());
      }
      if(historySingleViewDisEntity.value.orderproductlist![0].s11.toString().length!=0){
        sizeListGrid.add(size11());
      }
      if(historySingleViewDisEntity.value.orderproductlist![0].s1.toString().length!=0){
        sizeListGrid.add(size12());
      }
      if(historySingleViewDisEntity.value.orderproductlist![0].s13.toString().length!=0){
        sizeListGrid.add(size13());
      }


    }


  }

  @override
  void onInit() {
    // TODO: implement onInit
    checkNetworkStatus();
    getHistory();




    super.onInit();
  }
}