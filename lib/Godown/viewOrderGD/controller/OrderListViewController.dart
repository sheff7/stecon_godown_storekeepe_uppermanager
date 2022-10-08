import 'package:get/get.dart';
import '../../../Utils/InternetConnectivity.dart';
import '../model/orders_list_view_entity.dart';
import '../repository/orderListSingleViewServices.dart';

class OrderListViewController extends GetxController{


  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  Rx<ViewOrdersListViewEntity> orderListViewEntity = ViewOrdersListViewEntity().obs;

  OrderListViewController();


  checkNetworkStatus() async {
    try {
      networkStatus.value =
      (await NetworkConnectivity().checkConnectivityState())!;
      print(networkStatus.value);
    } catch (e) {
      print(e);
    }
  }
  getOrderListView() async {
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true) {
      loadingBool.value = true;
      orderListViewEntity.value = (await OrderListViewService().getOrderListView())!;

      loadingBool.value= false;
      print("shahhh"+loadingBool.value.toString());
    }
  }


  @override
  void onInit() {
    // TODO: implement onInit
    checkNetworkStatus();
    getOrderListView();

    super.onInit();
  }

}