import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../Utils/InternetConnectivity.dart';
import '../../DeliverySchedulefn/Model/delivery_schedule_list_entity.dart';
import '../Model/order_taken_entity.dart';
import '../Repository/OrderTakenListService.dart';

class OrderTakenListController extends GetxController{


  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  Rx<OrderTakenEntity> deliveryScheduleListEntity = OrderTakenEntity().obs;
  RxList <bool> itemList=<bool>[].obs;
  RxBool allSelect=false.obs;
  RxBool searchBool=false.obs;
  RxList<OrderTakenDeliveryschedule> filterList=(List<OrderTakenDeliveryschedule>.of([])).obs;



  checkNetworkStatus() async {
    try {
      networkStatus.value =
      (await NetworkConnectivity().checkConnectivityState())!;
      print(networkStatus.value);
    } catch (e) {
      print(e);
    }
  }


  filterSearch(String value) {
    RxList<OrderTakenDeliveryschedule> reslutList =
        List<OrderTakenDeliveryschedule>.of([]).obs;
    if (value.isEmpty) {
      searchBool.value=false;
      reslutList.value = deliveryScheduleListEntity.value.deliveryschedule!;
    } else {
      searchBool.value=true;
      reslutList.value = deliveryScheduleListEntity.value.deliveryschedule!
          .where((element) => element.name
          .toString()
          .toLowerCase()
          .contains(value.toLowerCase()))
          .toList();


    }
    filterList.value=reslutList.value;
  }


  getDeliverySchedule() async {
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true) {
      loadingBool.value = true;
      deliveryScheduleListEntity.value = (await OrderTakenListService().GetDeliverySchedule())!;
      print('uhusdohds'+loadingBool.value.toString());
      if(deliveryScheduleListEntity.value.response=="success"
          && deliveryScheduleListEntity.value.deliveryschedule!.length!=0){
        for(int i=0;i<deliveryScheduleListEntity.value.deliveryschedule!.length;i++){
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