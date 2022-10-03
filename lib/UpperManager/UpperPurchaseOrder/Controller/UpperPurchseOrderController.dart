import 'package:get/get.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperPurchaseOrder/Repository/UpperPurchseOrderRepository.dart';

import '../../../Utils/InternetConnectivity.dart';
import '../Model/get_upper_purchse_plan_entity.dart';

class UpperPurchseOrderController extends GetxController{
  final String upmId;
  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  Rx<GetUpperPurchsePlanEntity> orderNoEntity=GetUpperPurchsePlanEntity().obs;
  RxString choosestatus="".obs;
  RxList statusList = ["Confirmed","Pending","Cancelled"].obs;

  UpperPurchseOrderController({required this.upmId});
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
      orderNoEntity.value=(await UpperPurchseOrderService().getUpperPurchseOrder(upmId))!;
      loadingBool.value=false;

    }
  }
  getUpperOrderFilter()async{
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true){
      loadingBool.value=true;
      orderNoEntity.value=(await UpperPurchseOrderService().getUpperPurchseOrderFilter(upmId,choosestatus.value.toString()))!;
      loadingBool.value=false;

    }
  }

  getStatustype(String value){
    choosestatus.value= value.toString();
  }
  @override
  void onInit() {
    // TODO: implement onInit
    getUpperOrder();
    super.onInit();
  }
}