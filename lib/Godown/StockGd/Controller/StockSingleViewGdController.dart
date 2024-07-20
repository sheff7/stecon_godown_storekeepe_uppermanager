import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../CustomWidget/CustomBox1.dart';
import '../../../CustomWidget/CustomSnackBar.dart';
import '../../../Utils/InternetConnectivity.dart';
import '../Model/get_size_details_entity.dart';
import '../Model/product_single_view_rep_entity.dart';
import '../Repository/StockSingleViewServices.dart';



class ProductListSingleViewRepController extends GetxController {
  final String Productid;
  final String artNo;
  final String categoryid;
  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  RxString boxCount="".obs;
  Rx<ProductSingleViewRepEntity> productListEntity = ProductSingleViewRepEntity().obs;
  Rx<GetSizeDetailsEntity>getSizeEntity=GetSizeDetailsEntity().obs;

  RxList<Widget> sizeListGrid = (List<Widget>.of([])).obs;
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
  RxBool enablebox = true.obs;

  ProductListSingleViewRepController({required this.Productid, required this.artNo, required this.categoryid});

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



  checkNetworkStatus() async {
    try {
      networkStatus.value =
      (await NetworkConnectivity().checkConnectivityState())!;
      print(networkStatus.value);
    } catch (e) {
      print(e);
    }
  }

  getProductList() async {
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true) {
      loadingBool.value = true;
      int total=0;
      productListEntity.value = (await ProductListSingleViewRepServices()
          .getPrdouctList(Productid, artNo, categoryid))!;

      if(productListEntity.value!=null){
        if(productListEntity.value.response=='Success'){
          sizeListGrid.clear();
          int boxPair=int.parse(productListEntity.value.productlist![0].boxpair.toString());
          if(productListEntity.value.stock!.length!=0){

            size1controller.text=productListEntity.value.stock![0].s1.toString();
            size2controller.text=productListEntity.value.stock![0].s2.toString();
            size3controller.text=productListEntity.value.stock![0].s3.toString();
            size4controller.text=productListEntity.value.stock![0].s4.toString();
            size5controller.text=productListEntity.value.stock![0].s5.toString();
            size6controller.text=productListEntity.value.stock![0].s6.toString();
            size7controller.text=productListEntity.value.stock![0].s7.toString();
            size8controller.text=productListEntity.value.stock![0].s8.toString();
            size9controller.text=productListEntity.value.stock![0].s9.toString();
            size10controller.text=productListEntity.value.stock![0].s10.toString();
            size11controller.text=productListEntity.value.stock![0].s11.toString();
            size12controller.text=productListEntity.value.stock![0].s12.toString();
            size13controller.text=productListEntity.value.stock![0].s13.toString();


            if(productListEntity.value.stock![0].s1!.length!=0 || productListEntity.value.stock![0].s1!.isNotEmpty){
              total=total+int.parse(productListEntity.value.stock![0].s1.toString());
            }
            if(productListEntity.value.stock![0].s2!.length!=0 || productListEntity.value.stock![0].s2!.isNotEmpty){
              total=total+int.parse(productListEntity.value.stock![0].s2.toString());
            }
            if(productListEntity.value.stock![0].s3!.length!=0 || productListEntity.value.stock![0].s3!.isNotEmpty){
              total=total+int.parse(productListEntity.value.stock![0].s3.toString());
            }
            if(productListEntity.value.stock![0].s4!.length!=0 || productListEntity.value.stock![0].s4!.isNotEmpty){
              total=total+int.parse(productListEntity.value.stock![0].s4.toString());
            }
            if(productListEntity.value.stock![0].s5!.length!=0 || productListEntity.value.stock![0].s5!.isNotEmpty){
              total=total+int.parse(productListEntity.value.stock![0].s5.toString());
            }
            if(productListEntity.value.stock![0].s6!.length!=0 || productListEntity.value.stock![0].s6!.isNotEmpty){
              total=total+int.parse(productListEntity.value.stock![0].s6.toString());
            }
            if(productListEntity.value.stock![0].s7!.length!=0 || productListEntity.value.stock![0].s7!.isNotEmpty){
              total=total+int.parse(productListEntity.value.stock![0].s7.toString());
            }
            if(productListEntity.value.stock![0].s8!.length!=0 || productListEntity.value.stock![0].s8!.isNotEmpty){
              total=total+int.parse(productListEntity.value.stock![0].s8.toString());
            }
            if(productListEntity.value.stock![0].s9!.length!=0 || productListEntity.value.stock![0].s9!.isNotEmpty){
              total=total+int.parse(productListEntity.value.stock![0].s9.toString());
            }
            if(productListEntity.value.stock![0].s10!.length!=0 || productListEntity.value.stock![0].s10!.isNotEmpty){
              total=total+int.parse(productListEntity.value.stock![0].s10.toString());
            }
            if(productListEntity.value.stock![0].s11!.length!=0 || productListEntity.value.stock![0].s11!.isNotEmpty){
              total=total+int.parse(productListEntity.value.stock![0].s11.toString());
            }
            if(productListEntity.value.stock![0].s12!.length!=0 || productListEntity.value.stock![0].s12!.isNotEmpty){
              total=total+int.parse(productListEntity.value.stock![0].s12.toString());
            }
            if(productListEntity.value.stock![0].s13!.length!=0 || productListEntity.value.stock![0].s13!.isNotEmpty){
              total=total+int.parse(productListEntity.value.stock![0].s13.toString());
            }

            double boxC=total/boxPair;
            boxCount.value=boxC.toInt().toString();

          }

        }
      }

      loadingBool.value = false;
      print("shahhh" + loadingBool.value.toString());
      getSizeList(productListEntity.value.productlist![0].id.toString());
    }
  }

  getSizeList( String artnoId)async{
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true){
      CustomSnackbar().LoadingBottomSheet();
      getSizeEntity.value=(await ProductListSingleViewRepServices().getSizeList(artnoId))!;
      Get.back();
      sizeListGrid.clear();
      if(getSizeEntity.value.response=='Success'){
        if (getSizeEntity.value.sizearray!.length!=0) {
          for(int i=0; i<getSizeEntity.value.sizearray!.length;i++){
            if(getSizeEntity.value.sizearray![i].toString()=='1'){
              sizeListGrid.add(size1());
            }
            else if(getSizeEntity.value.sizearray![i].toString()=='2'){
              sizeListGrid.add(size2());
            }
            else if(getSizeEntity.value.sizearray![i].toString()=='3'){
              sizeListGrid.add(size3());
            }
            else if(getSizeEntity.value.sizearray![i].toString()=='4'){
              sizeListGrid.add(size4());
            }
            else if(getSizeEntity.value.sizearray![i].toString()=='5'){
              sizeListGrid.add(size5());
            }
            else if(getSizeEntity.value.sizearray![i].toString()=='6'){
              sizeListGrid.add(size6());
            }
            else if(getSizeEntity.value.sizearray![i].toString()=='7'){
              sizeListGrid.add(size7());
            }
            else if(getSizeEntity.value.sizearray![i].toString()=='8'){
              sizeListGrid.add(size8());
            }
            else if(getSizeEntity.value.sizearray![i].toString()=='9'){
              sizeListGrid.add(size9());
            }
            else if(getSizeEntity.value.sizearray![i].toString()=='10'){
              sizeListGrid.add(size10());
            }
            else if(getSizeEntity.value.sizearray![i].toString()=='11'){
              sizeListGrid.add(size1());
            }
            else if(getSizeEntity.value.sizearray![i].toString()=='12'){
              sizeListGrid.add(size12());
            }
            else if(getSizeEntity.value.sizearray![i].toString()=='13'){
              sizeListGrid.add(size13());
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
    getProductList();

    super.onInit();
  }
}
