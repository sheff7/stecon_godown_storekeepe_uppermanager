import 'package:get/get.dart';

import '../../../CustomWidget/CustomSnackBar.dart';
import '../../../Utils/InternetConnectivity.dart';
import '../Model/get_art_no_entity.dart';
import '../Model/get_product_by_artno_entity.dart';
import '../Model/get_uppper_plan_no_entity.dart';
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



  CreatePlanUPMController({required this.upmId, required this.companyId});



  getUpperPlanNo(String comapnyId)async{
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true){
      CustomSnackbar().LoadingBottomSheet();
      upperPlanEntity.value=(await AddProductionPlanUPMSevice().getUpperPlan(comapnyId))!;
      Get.back();
      if(upperPlanEntity.value.response=='Success'){
        upperPlanNo.value=upperPlanEntity.value.upperplanno.toString();
      }
    }
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

  getArtnoType(String value){
    if(value!='Select Art no.'){
      artNoisSelected.value=value.toString();
      for(int i=9;i<getOrderNoEntity.value.productlist!.length;i++){
        if(artNoisSelected.value==getOrderNoEntity.value.productlist![i].artno.toString()){
          artNoIdeSelected.value=getOrderNoEntity.value.productlist![i].id.toString();
          getProductSingle(artNoIdeSelected.value.toString());
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
  @override
  void onInit() {
    // TODO: implement onInit
    getUpperPlanNo(companyId);
    getArtNo();
    super.onInit();
  }
}