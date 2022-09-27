import 'package:get/get.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperPurchasePlan/Model/response_entity_entity.dart';

import '../../../Utils/InternetConnectivity.dart';
import '../Model/order_list_entity.dart';
import '../Repository/OrderListService.dart';

class OrderListController extends GetxController{
  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  Rx<OrderListEntity>orderEntity=OrderListEntity().obs;

  checkNetworkStatus() async {
    try {
      networkStatus.value =
      (await NetworkConnectivity().checkConnectivityState())!;
      print(networkStatus.value);
    } catch (e) {
      print(e);
    }
  }
  getHistoryList() async {
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true) {
      loadingBool.value = true;
      orderEntity.value = (await OrderListService().getOrderList())!;
      loadingBool.value = false;
    }
  }

    @override
  void onInit() {
    // TODO: implement onInit
      checkNetworkStatus();
      getHistoryList();
    super.onInit();
  }
}