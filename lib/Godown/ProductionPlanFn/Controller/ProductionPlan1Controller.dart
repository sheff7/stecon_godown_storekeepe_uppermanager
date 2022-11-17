import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../CustomWidget/CustomBox1.dart';
import '../../../Utils/InternetConnectivity.dart';
import '../Model/productin_plan_single_view_entity.dart';
import '../Repository/productionPlanListService.dart';


class ProductionPlanSingle extends GetxController{
  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  final String id;
  Rx<ProductinPlanSingleViewEntity> productionPlanEntity =
      ProductinPlanSingleViewEntity().obs;
  RxString buttonTxt='Start Production Plan'.obs;

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
  RxList<Widget> sizeListGridT = (List<Widget>.of([])).obs;

  final size1controllerU = TextEditingController();
  final size2controllerU = TextEditingController();
  final size3controllerU = TextEditingController();
  final size4controllerU = TextEditingController();
  final size5controllerU = TextEditingController();
  final size6controllerU = TextEditingController();
  final size7controllerU = TextEditingController();
  final size8controllerU = TextEditingController();
  final size9controllerU = TextEditingController();
  final size10controllerU = TextEditingController();
  final size11controllerU = TextEditingController();
  final size12controllerU = TextEditingController();
  final size13controllerU = TextEditingController();
  RxList<Widget> sizeListGridU = (List<Widget>.of([])).obs;

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


  size1U() {
    return CustomBox1(
      controller: size1controllerU,
      label: "Size-1",
      Enabled: enable1.value,
    );
  }
  size2U() {
    return CustomBox1(
      controller: size2controllerU,
      label: "Size-2",
      Enabled: enable2.value,
    );
  }
  size3U() {
    return CustomBox1(
      controller: size3controllerU,
      label: "Size-3",
      Enabled: enable3.value,
    );
  }
  size4U() {
    return CustomBox1(
      controller: size4controllerU,
      label: "Size-4",
      Enabled: enable4.value,
    );
  }
  size5U() {
    return CustomBox1(
      controller: size5controllerU,
      label: "Size-5",
      Enabled: enable5.value,
    );
  }
  size6U() {
    return CustomBox1(
      controller: size6controllerU,
      label: "Size-6",
      Enabled: enable6.value,
    );
  }
  size7U() {
    return CustomBox1(
      controller: size7controllerU,
      label: "Size-7",
      Enabled: enable7.value,
    );
  }
  size8U() {
    return CustomBox1(
      controller: size8controllerU,
      label: "Size-8",
      Enabled: enable8.value,
    );
  }
  size9U() {
    return CustomBox1(
      controller: size9controllerU,
      label: "Size-9",
      Enabled: enable9.value,
    );
  }
  size10U() {
    return CustomBox1(
      controller: size10controllerU,
      label: "Size-10",
      Enabled: enable10.value,
    );
  }
  size11U() {
    return CustomBox1(
      controller: size11controllerU,
      label: "Size-11",
      Enabled: enable11.value,
    );
  }
  size12U() {
    return CustomBox1(
      controller: size12controllerU,
      label: "Size-12",
      Enabled: enable12.value,
    );
  }
  size13U() {
    return CustomBox1(
      controller: size13controllerU,
      label: "Size-13",
      Enabled: enable13.value,
    );
  }





  ProductionPlanSingle({required this.id});

  checkNetworkStatus() async {
    try {
      networkStatus.value =
      (await NetworkConnectivity().checkConnectivityState())!;
    } catch (e) {
      print(e);
    }
  }

  getProductionPlanList() async {
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true) {
      loadingBool.value = true;
      productionPlanEntity.value =
      (await ProductionPlanService().getProductionPlanSingle(id))!;
      loadingBool.value = false;
      if(productionPlanEntity.value!=null){
        if(productionPlanEntity.value.response=='Success'){
          if(productionPlanEntity.value.productionlist![0].status=='Started'){
            buttonTxt.value='Edit Production Plan';

          }

          if(productionPlanEntity.value.totalproductionlist!.length!=0){
            size1controller.text=productionPlanEntity.value.totalproductionlist![0].s1.toString();
            size2controller.text=productionPlanEntity.value.totalproductionlist![0].s2.toString();
            size3controller.text=productionPlanEntity.value.totalproductionlist![0].s3.toString();
            size4controller.text=productionPlanEntity.value.totalproductionlist![0].s4.toString();
            size5controller.text=productionPlanEntity.value.totalproductionlist![0].s5.toString();
            size6controller.text=productionPlanEntity.value.totalproductionlist![0].s6.toString();
            size7controller.text=productionPlanEntity.value.totalproductionlist![0].s7.toString();
            size8controller.text=productionPlanEntity.value.totalproductionlist![0].s8.toString();
            size9controller.text=productionPlanEntity.value.totalproductionlist![0].s9.toString();
            size10controller.text=productionPlanEntity.value.totalproductionlist![0].s10.toString();
            size11controller.text=productionPlanEntity.value.totalproductionlist![0].s11.toString();
            size12controller.text=productionPlanEntity.value.totalproductionlist![0].s12.toString();
            size13controller.text=productionPlanEntity.value.totalproductionlist![0].s13.toString();


            if(productionPlanEntity.value.totalproductionlist![0].s1.toString()!='0'){
              sizeListGridT.add(size1());
            }
            if(productionPlanEntity.value.totalproductionlist![0].s2.toString()!='0'){
              sizeListGridT.add(size2());
            }
            if(productionPlanEntity.value.totalproductionlist![0].s3.toString()!='0'){
              sizeListGridT.add(size3());
            }
            if(productionPlanEntity.value.totalproductionlist![0].s4.toString()!='0'){
              sizeListGridT.add(size4());
            }
            if(productionPlanEntity.value.totalproductionlist![0].s5.toString()!='0'){
              sizeListGridT.add(size5());
            }
            if(productionPlanEntity.value.totalproductionlist![0].s6.toString()!='0'){
              sizeListGridT.add(size6());
            }
            if(productionPlanEntity.value.totalproductionlist![0].s7.toString()!='0'){
              sizeListGridT.add(size7());
            }
            if(productionPlanEntity.value.totalproductionlist![0].s8.toString()!='0'){
              sizeListGridT.add(size8());
            }
            if(productionPlanEntity.value.totalproductionlist![0].s9.toString()!='0'){
              sizeListGridT.add(size9());
            }
            if(productionPlanEntity.value.totalproductionlist![0].s10.toString()!='0'){
              sizeListGridT.add(size10());
            }
            if(productionPlanEntity.value.totalproductionlist![0].s11.toString()!='0'){
              sizeListGridT.add(size11());
            }
            if(productionPlanEntity.value.totalproductionlist![0].s12.toString()!='0'){
              sizeListGridT.add(size12());
            }
            if(productionPlanEntity.value.totalproductionlist![0].s13.toString()!='0'){
              sizeListGridT.add(size13());
            }

          }
          if(productionPlanEntity.value.totalupperlist!.length!=0){
            size1controllerU.text=productionPlanEntity.value.totalupperlist![0].s1.toString();
            size2controllerU.text=productionPlanEntity.value.totalupperlist![0].s2.toString();
            size3controllerU.text=productionPlanEntity.value.totalupperlist![0].s3.toString();
            size4controllerU.text=productionPlanEntity.value.totalupperlist![0].s4.toString();
            size5controllerU.text=productionPlanEntity.value.totalupperlist![0].s5.toString();
            size6controllerU.text=productionPlanEntity.value.totalproductionlist![0].s6.toString();
            size7controllerU.text=productionPlanEntity.value.totalupperlist![0].s7.toString();
            size8controllerU.text=productionPlanEntity.value.totalupperlist![0].s8.toString();
            size9controllerU.text=productionPlanEntity.value.totalupperlist![0].s9.toString();
            size10controllerU.text=productionPlanEntity.value.totalupperlist![0].s10.toString();
            size11controllerU.text=productionPlanEntity.value.totalupperlist![0].s11.toString();
            size12controllerU.text=productionPlanEntity.value.totalupperlist![0].s12.toString();
            size13controllerU.text=productionPlanEntity.value.totalupperlist![0].s13.toString();
            if(productionPlanEntity.value.totalupperlist![0].s1.toString()!='0'){
              sizeListGridU.add(size1U());
            }
            if(productionPlanEntity.value.totalupperlist![0].s2.toString()!='0'){
              sizeListGridU.add(size2U());
            }
            if(productionPlanEntity.value.totalupperlist![0].s3.toString()!='0'){
              sizeListGridU.add(size3U());
            }
            if(productionPlanEntity.value.totalupperlist![0].s4.toString()!='0'){
              sizeListGridU.add(size4U());
            }
            if(productionPlanEntity.value.totalupperlist![0].s5.toString()!='0'){
              sizeListGridU.add(size5U());
            }
            if(productionPlanEntity.value.totalupperlist![0].s6.toString()!='0'){
              sizeListGridU.add(size6U());
            }
            if(productionPlanEntity.value.totalupperlist![0].s7.toString()!='0'){
              sizeListGridU.add(size7U());
            }
            if(productionPlanEntity.value.totalupperlist![0].s8.toString()!='0'){
              sizeListGridU.add(size8U());
            }
            if(productionPlanEntity.value.totalupperlist![0].s9.toString()!='0'){
              sizeListGridU.add(size9U());
            }
            if(productionPlanEntity.value.totalupperlist![0].s10.toString()!='0'){
              sizeListGridU.add(size10U());
            }
            if(productionPlanEntity.value.totalupperlist![0].s11.toString()!='0'){
              sizeListGridU.add(size11U());
            }
            if(productionPlanEntity.value.totalproductionlist![0].s12.toString()!='0'){
              sizeListGridU.add(size12U());
            }
            if(productionPlanEntity.value.totalproductionlist![0].s13.toString()!='0'){
              sizeListGridU.add(size13U());
            }

          }

        }
      }
    }
  }
  @override
  void onInit() {
    // TODO: implement onInit
    checkNetworkStatus();
    getProductionPlanList();
    super.onInit();
  }
}