import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../Utils/InternetConnectivity.dart';
import '../Model/get_distributor_list_entity.dart';
import '../Repository/ViewBillService.dart';

class GetDistributorListController extends GetxController{
  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  RxBool searchBool = false.obs;
  RxList<GetDistributorListDistributorslist> filterList=List<GetDistributorListDistributorslist>.of([]).obs;
  Rx<GetDistributorListEntity> disListForRepEntity = GetDistributorListEntity().obs;

  checkNetworkStatus() async {
    try {
      networkStatus.value =
      (await NetworkConnectivity().checkConnectivityState())!;
      print(networkStatus.value);
    } catch (e) {
      print(e);
    }
  }

  filterSearch(String value) {
    RxList<GetDistributorListDistributorslist> reslutList =
        List<GetDistributorListDistributorslist>.of([]).obs;
    if (value.isEmpty) {
      searchBool.value=false;
      reslutList.value = disListForRepEntity.value.distributorslist!;
    } else {
      searchBool.value=true;
      reslutList.value = disListForRepEntity.value.distributorslist!
          .where((element) => element.name
          .toString()
          .toLowerCase()
          .contains(value.toLowerCase())||
          element.name
              .toString()
              .toLowerCase()
              .contains(value.toLowerCase())
      )
          .toList();
    }
    filterList.value=reslutList.value;
  }

  getDisList() async {
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true) {
      loadingBool.value = true;
      disListForRepEntity.value = (await ViewBillService().getDisList())!;
      loadingBool.value= false;
    }
  }
  @override
  void onInit() {
    // TODO: implement onInit
    checkNetworkStatus();
    getDisList();
    super.onInit();
  }
}