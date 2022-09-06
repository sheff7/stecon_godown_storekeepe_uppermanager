
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../../Utils/InternetConnectivity.dart';
import '../Model/delivery_schedule_list_entity.dart';
import '../Repository/DeliveryScheduleListServices.dart';

class DeliveryScheduleListGdController extends GetxController {


  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  Rx<DeliveryScheduleListEntity> deliveryScheduleListEntity = DeliveryScheduleListEntity().obs;



  checkNetworkStatus() async {
    try {
      networkStatus.value =
      (await NetworkConnectivity().checkConnectivityState())!;
      print(networkStatus.value);
    } catch (e) {
      print(e);
    }
  }

  getDeliverySchedule() async {
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true) {
      loadingBool.value = true;
      deliveryScheduleListEntity.value = (await DeliveryScheduleListGd().GetDeliverySchedule())!;
      loadingBool.value= false;
      print('uhusdohds'+loadingBool.value.toString());
    }
  }
  @override
  void onInit() {
    // TODO: implement onInit
    checkNetworkStatus();
    getDeliverySchedule();
    super.onInit();
  }
}
