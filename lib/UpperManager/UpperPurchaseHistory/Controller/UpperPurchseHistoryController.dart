import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../Utils/InternetConnectivity.dart';
import '../../UpperPurchaseOrder/Model/get_upper_purchse_plan_entity.dart';
import '../Repository/UpperPurchseHistoryService.dart';

class UpperPurchseHistoryController extends GetxController {
  final String upmId;
  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  RxString startDate=''.obs;
  RxBool searchBool = false.obs;
  RxString endDate = ''.obs;
  RxList<GetUpperPurchsePlanPurchaseplanlist> filterList=List<GetUpperPurchsePlanPurchaseplanlist>.of([]).obs;
  Rx<GetUpperPurchsePlanEntity> orderNoEntity=GetUpperPurchsePlanEntity().obs;

  UpperPurchseHistoryController({required this.upmId});

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
      orderNoEntity.value=(await UpperPurchseHistoryService().getUpperPurchseOrder(upmId))!;
      loadingBool.value=false;

    }
  }

  filterSearch(String value) {
    RxList<GetUpperPurchsePlanPurchaseplanlist> reslutList =
        List<GetUpperPurchsePlanPurchaseplanlist>.of([]).obs;
    if (value.isEmpty) {
      searchBool.value=false;
      reslutList.value = orderNoEntity.value.purchaseplanlist!;
    } else {
      searchBool.value=true;
      reslutList.value = orderNoEntity.value.purchaseplanlist!
          .where((element) => element.companyplanno
          .toString()
          .toLowerCase()
          .contains(value.toLowerCase())||
          element.orderno
              .toString()
              .toLowerCase()
              .contains(value.toLowerCase())
      )
          .toList();
    }
    filterList.value=reslutList.value;
  }

  getUpperOrderFilter()async{
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true){
      loadingBool.value=true;
      orderNoEntity.value=(await UpperPurchseHistoryService().getUpperPurchseOrderFilter(upmId,startDate.value.toString(),endDate.value.toString()))!;
      loadingBool.value=false;

    }
  }
  @override
  void onInit() {
    // TODO: implement onInit
    print(upmId);
    checkNetworkStatus();
    getUpperOrder();
    super.onInit();
  }
}