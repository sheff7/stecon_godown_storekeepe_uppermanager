import 'package:get/get.dart';
import 'package:stecon_godown_storekeepe_uppermanager/CustomWidget/CustomSnackBar.dart';
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
  }
  getCompnay()async{
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true){
      CustomSnackbar().LoadingBottomSheet();
      companyEntity.value=(await AddProductionPlanUPMSevice().getCompany())!;
      Get.back();
      if(companyEntity.value.response=='Success'){
        if(companyEntity.value.companylist!.length!=0){
          for(int i=0;i<companyEntity.value.companylist!.length;i++){
            companyList.add(companyEntity.value.companylist![i].companyname.toString());
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
    for(int i=0;i<companyEntity.value.companylist!.length;i++){
      if(comapanySelected.value.toString()==companyEntity.value.companylist![i].companyname.toString()){
        companyIdSelected.value=companyEntity.value.companylist![i].id.toString();
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