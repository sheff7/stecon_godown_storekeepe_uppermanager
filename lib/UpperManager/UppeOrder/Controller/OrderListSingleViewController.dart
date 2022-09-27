import 'package:get/get.dart';

import '../../../Utils/InternetConnectivity.dart';
import '../Model/get_order_single_view_entity.dart';
import '../Repository/OrderListService.dart';

class OrderListSingleViewController extends GetxController{
  final String distruberid;
  final String orderno;
  final String orderid;
  Rx<GetOrderSingleViewEntity>orderEntity=GetOrderSingleViewEntity().obs;

  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;

  OrderListSingleViewController({required this.distruberid, required this.orderno, required this.orderid});
  checkNetworkStatus() async {
    try {
      networkStatus.value =
      (await NetworkConnectivity().checkConnectivityState())!;
      print(networkStatus.value);
    } catch (e) {
      print(e);
    }
  }
  getHistory() async {
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true) {
      loadingBool.value = true;
      orderEntity.value = (await OrderListService().GetOrderSingle(orderno,distruberid,orderid))!;
      loadingBool.value= false;
    }


  }

  @override
  void onInit() {
    // TODO: implement onInit
    checkNetworkStatus();
    getHistory();
    super.onInit();
  }
}