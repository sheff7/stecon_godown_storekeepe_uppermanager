import 'package:get/get.dart';

import '../../../CustomWidget/CustomSnackBar.dart';
import '../../../Utils/InternetConnectivity.dart';
import '../Model/get_uppper_plan_no_entity.dart';
import '../Repository/AddProductionPlanUMPService.dart';

class CreatePlanUPMController extends GetxController{
  final String upmId;
  final String companyId;
  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  Rx<GetUppperPlanNoEntity>upperPlanEntity=GetUppperPlanNoEntity().obs;
  RxString upperPlanNo='aaa'.obs;

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
  @override
  void onInit() {
    // TODO: implement onInit
    getUpperPlanNo(companyId);
    super.onInit();
  }
}