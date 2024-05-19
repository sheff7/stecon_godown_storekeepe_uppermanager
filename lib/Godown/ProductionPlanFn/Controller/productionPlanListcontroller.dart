import 'package:get/get.dart';
import 'package:stecon_godown_storekeepe_uppermanager/Godown/ProductionPlanFn/Repository/productionPlanListService.dart';


import '../../../Utils/InternetConnectivity.dart';
import '../Model/production_plan_list_entity.dart';


class ProductionPlanListController extends GetxController {
  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  RxBool searchBool = false.obs;
  RxList<ProductionPlanListProductionlist> planList=List<ProductionPlanListProductionlist>.of([]).obs;
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

  filterSearch(String value) {
    RxList<ProductionPlanListProductionlist> reslutList =
        List<ProductionPlanListProductionlist>.of([]).obs;
    if (value.isEmpty) {
      searchBool.value=false;
      reslutList.value = productionPlanEntity.value.productionlist!;
    } else {
      searchBool.value=true;
      reslutList.value = productionPlanEntity.value.productionlist!
          .where((element) => element.id
          .toString()
          .toLowerCase()
          .contains(value.toLowerCase())||
          element.artnoname
              .toString()
              .toLowerCase()
              .contains(value.toLowerCase())
      )
          .toList();
    }
    planList.value=reslutList.value;
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
