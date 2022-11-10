import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../CustomWidget/CustomSnackBar.dart';
import '../../../Utils/InternetConnectivity.dart';
import '../Model/get_art_no_entity.dart';
import '../Model/get_product_by_artno_entity.dart';
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


  final TotalController = TextEditingController();






  CreatePlanUPMController({required this.upmId, required this.companyId});



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
          getUpperPlanNo(companyId);
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