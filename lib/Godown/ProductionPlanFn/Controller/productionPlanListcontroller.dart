import 'package:get/get.dart';
import 'package:stecon_godown_storekeepe_uppermanager/Godown/ProductionPlanFn/Repository/productionPlanListService.dart';


import '../../../Utils/InternetConnectivity.dart';
import '../Model/production_plan_list_entity.dart';


class ProductionPlanListController extends GetxController {
  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  Rx<ProductionPlanListEntity> productionPlanEntity =
      ProductionPlanListEntity().obs;

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
          (await ProductionPlanService().getProductionPlan())!;
      loadingBool.value = false;
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
