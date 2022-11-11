import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../CustomWidget/CustomBox1.dart';
import '../../../CustomWidget/CustomBoxEditable.dart';
import '../../../CustomWidget/CustomSnackBar.dart';
import '../../../Utils/InternetConnectivity.dart';
import '../Model/get_art_no_entity.dart';
import '../Model/get_product_by_artno_entity.dart';
import '../Model/get_size_list_entity.dart';
import '../Model/get_uppper_plan_no_entity.dart';
import '../Model/response_entity_entity.dart';
import '../Repository/AddProductionPlanUMPService.dart';

class CreatePlanUPMController extends GetxController{
  final String upmId;
  final String companyId;
  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  Rx<GetUppperPlanNoEntity>upperPlanEntity=GetUppperPlanNoEntity().obs;
  RxString upperPlanNo=''.obs;
  RxList<String>? productList = ['Select Art no.'].obs;
  RxString artNoisSelected = 'Select Art no.'.obs;
  RxString artNoIdeSelected = ''.obs;
  Rx<GetArtNoEntity>getOrderNoEntity=GetArtNoEntity().obs;
  Rx<GetProductByArtnoEntity> productDetailsForOrderEntity =GetProductByArtnoEntity().obs;
  RxString imgurl='nourl'.obs;
  RxString cutOffDate=''.obs;
  RxString categoryName=''.obs;
  RxString colorName=''.obs;
  RxInt total=0.obs;
  RxInt s1=0.obs;
  RxInt s2=0.obs;
  RxInt s3=0.obs;
  RxInt s4=0.obs;
  RxInt s5=0.obs;
  RxInt s6=0.obs;
  RxInt s7=0.obs;
  RxInt s8=0.obs;
  RxInt s9=0.obs;
  RxInt s10=0.obs;
  RxInt s11=0.obs;
  RxInt s12=0.obs;
  RxInt s13=0.obs;


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


  final TotalController = TextEditingController();

  Rx<GetSizeListEntity>sizeArrayEntity=GetSizeListEntity().obs;

  RxList<Widget> sizeListGrid = (List<Widget>.of([])).obs;


  resetCount(){
     s1.value=0;
     s2.value=0;
     s3.value=0;
     s4.value=0;
     s5.value=0;
     s6.value=0;
     s7.value=0;
     s8.value=0;
     s9.value=0;
     s10.value=0;
     s11.value=0;
     s12.value=0;
     s13.value=0;
     s1.refresh();
     s2.refresh();
     s3.refresh();
     s4.refresh();
     s5.refresh();
     s6.refresh();
     s7.refresh();
     s8.refresh();
     s9.refresh();
     s10.refresh();
     s11.refresh();
     s12.refresh();
     s13.refresh();

     getTotal();
  }








  CreatePlanUPMController({required this.upmId, required this.companyId});



  size1() {
    return CustomBoxEditable(
      controller: size1controller,
      label: "Size-1",
      onValueChange: (String value) {
        if(value.isNotEmpty ||value.toString().length!=0){
          int t=int.parse(value.toString());
          s1.value=t;
         getTotal();

        }
        else if(value.isEmpty ||value.toString().length!=0){
          s1.value=0;
          size1controller.text=s1.value.toString();
          getTotal();
        }
      },);
  }
  size2() {
    return CustomBoxEditable(
      controller: size2controller,
      label: "Size-2",
      onValueChange: (String value) {
        if(value.isNotEmpty ||value.toString().length!=0){
          int t=int.parse(value.toString());
          s2.value=t;
          getTotal();

        }
        else if(value.isEmpty ||value.toString().length!=0){
          s2.value=0;
          size2controller.text=s2.value.toString();
          getTotal();
        }
      },);
  }
  size3() {
    return CustomBoxEditable(
      controller: size3controller,
      label: "Size-3",
      onValueChange: (String value) {
        if(value.isNotEmpty ||value.toString().length!=0){
          int t=int.parse(value.toString());
          s3.value=t;
         getTotal();

        }
        else if(value.isEmpty ||value.toString().length!=0){
          s3.value=0;
          size3controller.text=s3.value.toString();
          getTotal();
        }
      },);
  }
  size4() {
    return CustomBoxEditable(
      controller: size4controller,
      label: "Size-4",
      onValueChange: (String value) {
        if(value.isNotEmpty ||value.toString().length!=0){
          int t=int.parse(value.toString());
          s4.value=t;
          getTotal();

        }
        else if(value.isEmpty ||value.toString().length!=0){
          s4.value=0;
         size4controller.text=s4.value.toString();
          getTotal();
        }
      },);
  }
  size5() {
    return  CustomBoxEditable(
      controller: size5controller,
      label: "Size-5",
      onValueChange: (String value) {
        if(value.isNotEmpty ||value.toString().length!=0){
          int t=int.parse(value.toString());
          s5.value=t;
          getTotal();

        }
        else if(value.isEmpty ||value.toString().length!=0){
          s5.value=0;
          size5controller.text=s5.value.toString();
          getTotal();
        }
      },);
  }
  size6() {
    return   CustomBoxEditable(
      controller:size6controller,
      label: "Size-6",
      onValueChange: (String value) {
        if(value.isNotEmpty ||value.toString().length!=0){
          int t=int.parse(value.toString());
          s6.value=t;
          getTotal();

        }
        else if(value.isEmpty ||value.toString().length!=0){
          s6.value=0;
          size6controller.text=s6.value.toString();
          getTotal();
        }
      },);
  }
  size7() {
    return CustomBoxEditable(
      controller: size7controller,
      label: "Size-7",
      onValueChange: (String value) {
        if(value.isNotEmpty ||value.toString().length!=0){
          int t=int.parse(value.toString());
          s7.value=t;getTotal();

        }
        else if(value.isEmpty ||value.toString().length!=0){
          s7.value=0;
          size7controller.text=s7.value.toString();
          getTotal();
        }
      },);
  }
  size8() {
    return CustomBoxEditable(
      controller: size8controller,
      label: "Size-8",
      onValueChange: (String value) {
        if(value.isNotEmpty ||value.toString().length!=0){
          int t=int.parse(value.toString());
          s8.value=t;
          getTotal();

        }
        else if(value.isEmpty ||value.toString().length!=0){
          s8.value=0;
          size8controller.text=s8.value.toString();
          getTotal();
        }
      },) ;
  }
  size9() {
    return CustomBoxEditable(
      controller: size9controller,
      label: "Size-9",
      onValueChange: (String value) {
        if(value.isNotEmpty ||value.toString().length!=0){
          int t=int.parse(value.toString());
          s9.value=t;
          getTotal();

        }
        else if(value.isEmpty ||value.toString().length!=0){
         s9.value=0;
          size9controller.text=s9.value.toString();
          getTotal();
        }
      },);
  }
  size10() {
    return CustomBoxEditable(
      controller: size10controller,
      label: "Size-10",
      onValueChange: (String value) {
        if(value.isNotEmpty ||value.toString().length!=0){
          int t=int.parse(value.toString());
          s10.value=t;
          getTotal();

        }
        else if(value.isEmpty ||value.toString().length!=0){
          s10.value=0;
          size10controller.text=s10.value.toString();
          getTotal();
        }
      },);
  }
  size11() {
    return CustomBoxEditable(
      controller: size11controller,
      label: "Size-11",onValueChange: (String value) {
      if(value.isNotEmpty ||value.toString().length!=0){
        int t=int.parse(value.toString());
        s11.value=t;
        getTotal();

      }
      else if(value.isEmpty ||value.toString().length!=0){
        s11.value=0;
        size11controller.text=s11.value.toString();
        getTotal();
      }
    },);
  }
  size12() {
    return CustomBoxEditable(
      controller: size12controller,
      label: "Size-12",onValueChange: (String value) {
      if(value.isNotEmpty ||value.toString().length!=0){
        int t=int.parse(value.toString());
        s12.value=t;
        getTotal();

      }
      else if(value.isEmpty ||value.toString().length!=0){
        s12.value=0;
        size12controller.text=s12.value.toString();
        getTotal();
      }
    },);
  }
  size13() {
    return CustomBoxEditable(
      controller:size13controller,
      label: "Size-13", onValueChange: (String value) {
      if(value.isNotEmpty ||value.toString().length!=0){
        int t=int.parse(value.toString());
        s13.value=t;
        getTotal();

      }
      else if(value.isEmpty ||value.toString().length!=0){
        s13.value=0;
        size13controller.text=s13.value.toString();
        getTotal();
      }
    },);
  }



  getUpperPlanNo(String comapnyId)async{
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true){
      CustomSnackbar().LoadingBottomSheet();
      upperPlanEntity.value=(await AddProductionPlanUPMSevice().getUpperPlan(comapnyId,artNoIdeSelected.value.toString()))!;
      Get.back();
      if(upperPlanEntity.value.response=='Success'){
        upperPlanNo.value=upperPlanEntity.value.upperplanno.toString();
      }
    }else if(nBool==false){
      CustomSnackbar().NoInernetSnackBar();
    }
  }


  Future<String> checkPendingOrder()async{
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true){
      CustomSnackbar().LoadingBottomSheet();
      ResponseEntityEntity entity=ResponseEntityEntity();
      entity=(await AddProductionPlanUPMSevice().checkPendingOrder(companyId, artNoIdeSelected.value.toString()))!;
      Get.back();
      if(entity!=null){
        return entity.response.toString();
      }
    }
    return 'error';
  }

  getArtNo() async {
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true) {
      CustomSnackbar().LoadingBottomSheet();
      getOrderNoEntity.value = (await AddProductionPlanUPMSevice().getArtNo())!;
      Get.back();
      if (getOrderNoEntity.value != null) {
        if (getOrderNoEntity.value.response == 'Success') {
          if (getOrderNoEntity.value.productlist!.length != 0) {
            for (int i = 0;
            i < getOrderNoEntity.value.productlist!.length;
            i++) {
              productList!
                  .add(getOrderNoEntity.value.productlist![i].artno.toString());
            }
          }
        }
      }
    }

  }

  getArtnoType(String value)async{
    if(value!='Select Art no.'){
      artNoisSelected.value=value.toString();
      for(int i=0;i<getOrderNoEntity.value.productlist!.length;i++){
        if(artNoisSelected.value==getOrderNoEntity.value.productlist![i].artno.toString()){
          artNoIdeSelected.value=getOrderNoEntity.value.productlist![i].id.toString();
          print('id'+getOrderNoEntity.value.productlist![i].id.toString());
          await getProductSingle(artNoIdeSelected.value.toString());
         await  getUpperPlanNo(companyId);
         await GetsizesArray(artNoIdeSelected.value.toString());
          resetCount();

        }
      }
    }
  }
  GetsizesArray(String sid) async {
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true) {
      CustomSnackbar().LoadingBottomSheet();
      sizeArrayEntity.value = (await AddProductionPlanUPMSevice().getSizeList(sid))!;
      Get.back();
      if(sizeArrayEntity.value!=null){
        if(sizeArrayEntity.value.response=='Success'){
          sizeListGrid.value.clear();
          if (sizeArrayEntity.value.sizearray!.length!=0) {
            for(int i=0;i<sizeArrayEntity.value.sizearray!.length;i++){
              if(sizeArrayEntity.value.sizearray![i].toString()=='1'){
                sizeListGrid.add(size1());
              }
              else if(sizeArrayEntity.value.sizearray![i].toString()=='2'){
                sizeListGrid.add(size2());
              }
              else if(sizeArrayEntity.value.sizearray![i].toString()=='3'){
                sizeListGrid.add(size3());
              }
              else if(sizeArrayEntity.value.sizearray![i].toString()=='4'){
                sizeListGrid.add(size4());
              }
              else if(sizeArrayEntity.value.sizearray![i].toString()=='5'){
                sizeListGrid.add(size5());
              }
              else if(sizeArrayEntity.value.sizearray![i].toString()=='6'){
                sizeListGrid.add(size6());
              }
              else if(sizeArrayEntity.value.sizearray![i].toString()=='7'){
                sizeListGrid.add(size7());
              }
              else if(sizeArrayEntity.value.sizearray![i].toString()=='8'){
                sizeListGrid.add(size8());
              }
              else if(sizeArrayEntity.value.sizearray![i].toString()=='9'){
                sizeListGrid.add(size9());
              }
              else if(sizeArrayEntity.value.sizearray![i].toString()=='10'){
                sizeListGrid.add(size10());
              }
              else if(sizeArrayEntity.value.sizearray![i].toString()=='11'){
                sizeListGrid.add(size11());
              }
              else if(sizeArrayEntity.value.sizearray![i].toString()=='12'){
                sizeListGrid.add(size12());
              }
              else if(sizeArrayEntity.value.sizearray![i].toString()=='13'){
                sizeListGrid.add(size13());
              }
            }
          }
        }
      }

    }

  }
  getProductSingle(String id)async{
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true){
      CustomSnackbar().LoadingBottomSheet();
      productDetailsForOrderEntity.value =
      (await AddProductionPlanUPMSevice().getProductDetails(id))!;
      Get.back();
      if(productDetailsForOrderEntity.value.response=='Success'){
        imgurl.value=productDetailsForOrderEntity.value.productlist![0].coverimageurl.toString();
        categoryName.value=productDetailsForOrderEntity.value.productlist![0].categoryname.toString();
        colorName.value=productDetailsForOrderEntity.value.productlist![0].colorname.toString();

      }
    }
  }
  getTotal(){
    total.value=s1.value+s2.value+s3.value+s4.value+s5.value+s6.value+s7.value+s8.value+
        s9.value+s10.value+s11.value+s12.value+s13.value;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    size1controller.text=s1.value.toString();
    size2controller.text=s2.value.toString();
    size3controller.text=s3.value.toString();
    size4controller.text=s4.value.toString();
    size5controller.text=s5.value.toString();
    size6controller.text=s6.value.toString();
    size7controller.text=s7.value.toString();
    size8controller.text=s8.value.toString();
    size9controller.text=s9.value.toString();
    size10controller.text=s10.value.toString();
    size11controller.text=s11.value.toString();
    size12controller.text=s12.value.toString();
    size13controller.text=s13.value.toString();
    getTotal();
    TotalController.text=total.value.toString();



    getArtNo();
    super.onInit();
  }
}