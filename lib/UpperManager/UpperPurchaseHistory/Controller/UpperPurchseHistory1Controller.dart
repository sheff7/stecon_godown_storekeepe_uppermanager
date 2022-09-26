import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../Utils/InternetConnectivity.dart';
import '../../UpperPurchaseOrder/Model/get_upper_purchse_plan_single_entity.dart';
import '../Repository/UpperPurchseHistoryService.dart';

class UpperPurchseHistory1Controller extends GetxController{
  final String upmId;
  final String id;
  final String orderno;
  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  Rx<GetUpperPurchsePlanSingleEntity> orderNoEntity=GetUpperPurchsePlanSingleEntity().obs;

  UpperPurchseHistory1Controller({required this.upmId, required this.id, required this.orderno});


  checkNetworkStatus() async {
    try {
      networkStatus.value =
      (await NetworkConnectivity().checkConnectivityState())!;
      print(networkStatus.value);
    } catch (e) {
      print(e);
    }
  }
  getUpperOrder()async{
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true){
      loadingBool.value=true;
      orderNoEntity.value=(await UpperPurchseHistoryService().getUpperPurchseOrderSingle(id, orderno))!;
      loadingBool.value=false;
    }
  }
  @override
  void onInit() {
    // TODO: implement onInit
    getUpperOrder();
    super.onInit();
  }
}