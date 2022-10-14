import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../Utils/InternetConnectivity.dart';
import '../Model/get_upper_purchase_plan_for_count_single_entity.dart';
import '../Repository/UpperCountStatus0UPMService.dart';

class UpperCountStatus1UPMController extends GetxController{
  final String upmId;
  final String id;
  final String orderno;
  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  Rx<GetUpperPurchasePlanForCountSingleEntity>orderNoEntity=GetUpperPurchasePlanForCountSingleEntity().obs;


  RxBool enable1 = false.obs;
  RxBool enable2 = false.obs;
  RxBool enable3 = false.obs;
  RxBool enable4 = false.obs;
  RxBool enable5 = false.obs;
  RxBool enable6 = false.obs;
  RxBool enable7 = false.obs;
  RxBool enable8 = false.obs;
  RxBool enable9 = false.obs;
  RxBool enable10 = false.obs;
  RxBool enable11 = false.obs;
  RxBool enable12 = false.obs;
  RxBool enable13 = false.obs;

  UpperCountStatus1UPMController({required this.upmId, required this.id, required this.orderno});

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
      orderNoEntity.value=(await UpperCountStatus0UPMServie().getUpperPurchseOrderSingle(id, orderno))!;
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