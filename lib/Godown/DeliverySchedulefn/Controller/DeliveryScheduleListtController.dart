
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../../Utils/InternetConnectivity.dart';
import '../Model/delivery_schedule_list_entity.dart';
import '../Repository/DeliveryScheduleListServices.dart';

class DeliveryScheduleListGdController extends GetxController {


  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  Rx<DeliveryScheduleListEntity> deliveryScheduleListEntity = DeliveryScheduleListEntity().obs;
  RxList <bool> itemList=<bool>[].obs;
  RxBool allSelect=false.obs;



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
      print('uhusdohds'+loadingBool.value.toString());
      if(deliveryScheduleListEntity.value.response=="success"
      && deliveryScheduleListEntity.value.deliveryschedulelist!.length!=0){
        for(int i=0;i<deliveryScheduleListEntity.value.deliveryschedulelist!.length;i++){
          itemList.add(false);
        }
      }
      loadingBool.value= false;
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
