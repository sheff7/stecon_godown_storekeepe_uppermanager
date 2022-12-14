import 'package:get/get.dart';
import 'package:stecon_godown_storekeepe_uppermanager/CustomWidget/CustomSnackBar.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperPurchasePlan/Model/response_entity_entity.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperPurchasePlan/Repository/AddProductionPlanUMPService.dart';

import '../../../Utils/InternetConnectivity.dart';
import '../Model/get_comapany_entity.dart';
import '../Model/get_upper_order_no_entity.dart';
import '../Model/get_uppper_plan_no_entity.dart';

class AddProductionPlanUPMController extends GetxController{
  final String upmId;
  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  RxList<String> companyList =(List<String>.of([])).obs;
  RxString comapanySelected=''.obs;
  RxString companyIdSelected=''.obs;
  RxString orderNo=''.obs;
  Rx<GetUpperOrderNoEntity>orderNoEntity=GetUpperOrderNoEntity().obs;
  Rx<GetComapanyEntity>companyEntity=GetComapanyEntity().obs;
  Rx<GetUppperPlanNoEntity>upperPlanEntity=GetUppperPlanNoEntity().obs;
  RxString upperPlanNo=''.obs;
  RxInt count=0.obs;

  RxList<Map<String,dynamic>>? producctList=(List<Map<String,dynamic>>.of([])).obs;
  RxList<Map<String,dynamic>>? producctListShow=(List<Map<String,dynamic>>.of([])).obs;
  Rx<ResponseEntityEntity>responseEntity=ResponseEntityEntity().obs;


  AddProductionPlanUPMController({required this.upmId});

  checkNetworkStatus() async {
    try {
      networkStatus.value =
      (await NetworkConnectivity().checkConnectivityState())!;
      print(networkStatus.value);
    } catch (e) {
      print(e);
    }
  }
  getUpperOrderNo()async{
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true){
      CustomSnackbar().LoadingBottomSheet();
      orderNoEntity.value=(await AddProductionPlanUPMSevice().getOrderno())!;
      Get.back();
      if(orderNoEntity.value.response=='Success'){
        orderNo.value=orderNoEntity.value.upperorderno.toString();
      }
    }
    else if(nBool== false){
      CustomSnackbar().NoInernetSnackBar();
    }
  }
  addPurchsePlan(List<Map<String, dynamic>> pList)async{
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true){
      CustomSnackbar().LoadingBottomSheet();
      responseEntity.value=(await AddProductionPlanUPMSevice().addUpperPurchase(orderNo.value.toString(),
          companyIdSelected.value.toString(),
          upperPlanNo.value.toString(),
          upmId, pList))!;
      Get.back();
      if(responseEntity.value.response=='Added successfully'){
        Get.back();
        CustomSnackbar().InfoSnackBar('AddOrder', responseEntity.value.response.toString());
      }
      else{
        CustomSnackbar().InfoSnackBar('AddOrder', responseEntity.value.response.toString());
      }
    }
  }
  getCompnay()async{
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true){
      CustomSnackbar().LoadingBottomSheet();
      companyEntity.value=(await AddProductionPlanUPMSevice().getCompany())!;
      Get.back();
      if(companyEntity.value.response=='Success'){
        if(companyEntity.value.upperproductionmanagerlist!.length!=0){
          for(int i=0;i<companyEntity.value.upperproductionmanagerlist!.length;i++){
            companyList.add(companyEntity.value.upperproductionmanagerlist![i].name.toString());
          }
        }
      }
    }
  }

  getUpperPlanNo(String comapnyId)async{
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true){
      CustomSnackbar().LoadingBottomSheet();
      upperPlanEntity.value=(await AddProductionPlanUPMSevice().getUpperPlanNo(comapnyId))!;
      Get.back();
      if(upperPlanEntity.value.response=='Success'){
        upperPlanNo.value=upperPlanEntity.value.upperplanno.toString();
      }
    }
  }
  compnayType(String value){
    comapanySelected.value=value;
    for(int i=0;i<companyEntity.value.upperproductionmanagerlist!.length;i++){
      if(comapanySelected.value.toString()==companyEntity.value.upperproductionmanagerlist![i].name.toString()){
        companyIdSelected.value=companyEntity.value.upperproductionmanagerlist![i].id.toString();
        getUpperPlanNo(companyIdSelected.value.toString());
      }
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    checkNetworkStatus();
    getUpperOrderNo();
    getCompnay();
    super.onInit();
  }
}