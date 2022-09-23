import 'package:get/get.dart';

import '../../../Utils/InternetConnectivity.dart';
import '../Model/get_upper_purchse_plan_single_entity.dart';
import '../Repository/UpperPurchseOrderRepository.dart';

class UpperPurchseOrder1Controller extends GetxController{
  final String upmId;
  final String id;
  final String orderno;
  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  Rx<GetUpperPurchsePlanSingleEntity> orderNoEntity=GetUpperPurchsePlanSingleEntity().obs;

  UpperPurchseOrder1Controller({required this.upmId, required this.id, required this.orderno});

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
      orderNoEntity.value=(await UpperPurchseOrderService().getUpperPurchseOrderSingle(id, orderno))!;
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