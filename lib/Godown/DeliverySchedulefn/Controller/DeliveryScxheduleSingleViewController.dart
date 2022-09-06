import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:stecon_godown_storekeepe_uppermanager/Godown/DeliverySchedulefn/Model/delivery_schedule_single_view_gd_entity.dart';
import 'package:stecon_godown_storekeepe_uppermanager/Godown/DeliverySchedulefn/Repository/DeliveryScheduleSingleViewGdServices.dart';
import 'package:stecon_godown_storekeepe_uppermanager/Utils/InternetConnectivity.dart';

class DeliveryScheduleSingleViewController extends GetxController{
  final String id;
  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  Rx<DeliveryScheduleSingleViewGdEntity> deliveryScheduleSingleViewGdEntity = DeliveryScheduleSingleViewGdEntity().obs;


  final categoryController = TextEditingController();
  final colorController = TextEditingController();
  final size1controller = TextEditingController();
  final size2controller = TextEditingController();
  final size3controller = TextEditingController();
  final size4controller = TextEditingController();
  final size5controller = TextEditingController();
  final size6controller = TextEditingController();
  final size7controller = TextEditingController();
  final size8controller = TextEditingController();
  final size9controller = TextEditingController();
  final size10controller = TextEditingController();
  final size11controller = TextEditingController();
  final size12controller = TextEditingController();
  final size13controller = TextEditingController();
  final BoxController = TextEditingController();

  DeliveryScheduleSingleViewController({required this.id});



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
      deliveryScheduleSingleViewGdEntity.value = (await DeliveryScheduleSingleViewtGd().getbyiddeliveryschedule(id))!;
      loadingBool.value= false;
      print(deliveryScheduleSingleViewGdEntity.value.deliveryschedule!.length);
    //   if(deliveryScheduleSingleViewGdEntity.value.deliveryschedule!.length!=0){
    //
    //     "s1": deliveryScheduleSingleViewGdEntity.value.deliveryschedule![0]. s1.toString();
    // "s2": deliveryScheduleSingleViewGdEntity.value.deliveryschedule![0]. s2.toString();
    // "s3": deliveryScheduleSingleViewGdEntity.value.deliveryschedule![0]. s3.toString();
    // "s4":deliveryScheduleSingleViewGdEntity.value.deliveryschedule![0]. s4.toString();
    // "s5": deliveryScheduleSingleViewGdEntity.value.deliveryschedule![0].s5.toString();
    // "s6": deliveryScheduleSingleViewGdEntity.value.deliveryschedule![0].s6.toString();
    // "s7": deliveryScheduleSingleViewGdEntity.value.deliveryschedule![0].s7.toString();
    // "s8": deliveryScheduleSingleViewGdEntity.value.deliveryschedule![0].s8.toString();
    // "s9": deliveryScheduleSingleViewGdEntity.value.deliveryschedule![0].s9.toString();
    // "s10": deliveryScheduleSingleViewGdEntity.value.deliveryschedule![0].s10.toString();
    // "s11":deliveryScheduleSingleViewGdEntity.value.deliveryschedule![0]. s11.toString();
    // "s12": deliveryScheduleSingleViewGdEntity.value.deliveryschedule![0]. s12.toString();
    // "s13": deliveryScheduleSingleViewGdEntity.value.deliveryschedule![0]. s3.toString();
    }

    }



  @override
  void onInit() {
    // TODO: implement onInit
    checkNetworkStatus();
    getDeliverySchedule();


    size1controller.text=deliveryScheduleSingleViewGdEntity.value.deliveryschedule![0].s1.toString();
    size2controller.text=deliveryScheduleSingleViewGdEntity.value.deliveryschedule![0].s2.toString();
    size3controller.text=deliveryScheduleSingleViewGdEntity.value.deliveryschedule![0].s3.toString();
    size4controller.text=deliveryScheduleSingleViewGdEntity.value.deliveryschedule![0].s4.toString();
    size5controller.text=deliveryScheduleSingleViewGdEntity.value.deliveryschedule![0].s5.toString();
    size6controller.text=deliveryScheduleSingleViewGdEntity.value.deliveryschedule![0].s6.toString();
    size7controller.text=deliveryScheduleSingleViewGdEntity.value.deliveryschedule![0].s7.toString();
    size8controller.text=deliveryScheduleSingleViewGdEntity.value.deliveryschedule![0].s8.toString();
    size9controller.text=deliveryScheduleSingleViewGdEntity.value.deliveryschedule![0].s9.toString();
    size10controller.text=deliveryScheduleSingleViewGdEntity.value.deliveryschedule![0].s10.toString();
    size11controller.text=deliveryScheduleSingleViewGdEntity.value.deliveryschedule![0].s11.toString();
    size12controller.text=deliveryScheduleSingleViewGdEntity.value.deliveryschedule![0].s12.toString();
    size13controller.text= deliveryScheduleSingleViewGdEntity.value.deliveryschedule![0].s13.toString();
    super.onInit();
  }

}