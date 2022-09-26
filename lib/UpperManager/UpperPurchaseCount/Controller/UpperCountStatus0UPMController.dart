import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../Utils/InternetConnectivity.dart';
import '../Model/get_purchse_plan_entity.dart';
import '../Repository/UpperCountStatus0UPMService.dart';

class UpperCountStatus0UPMController extends GetxController{
  final String upmId;
  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  Rx<GetPurchsePlanEntity>orderNoEntity=GetPurchsePlanEntity().obs;

  UpperCountStatus0UPMController({required this.upmId});
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
      orderNoEntity.value=(await UpperCountStatus0UPMServie().getUpperPurchseOrder(upmId))!;
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