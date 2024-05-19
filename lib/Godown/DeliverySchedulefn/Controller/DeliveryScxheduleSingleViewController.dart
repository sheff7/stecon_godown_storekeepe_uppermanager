import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:stecon_godown_storekeepe_uppermanager/CustomWidget/CustomSnackBar.dart';
import 'package:stecon_godown_storekeepe_uppermanager/Godown/DeliverySchedulefn/Model/delivery_schedule_single_view_gd_entity.dart';
import 'package:stecon_godown_storekeepe_uppermanager/Godown/DeliverySchedulefn/Repository/DeliveryScheduleSingleViewGdServices.dart';
import 'package:stecon_godown_storekeepe_uppermanager/Utils/InternetConnectivity.dart';

import '../../../StoreKeeper/IssuedMaterialSkFn/Model/response_entity.dart';
import '../../OrderTaken/Repository/OrderTakenSingleService.dart';
import '../Model/update_order_entity.dart';

class DeliveryScheduleSingleViewController extends GetxController {
  final String id;
  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  Rx<DeliveryScheduleSingleViewGdEntity> deliveryScheduleSingleViewGdEntity =
      DeliveryScheduleSingleViewGdEntity().obs;
  Rx<ResponseEntity>responseEntity=ResponseEntity().obs;

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

  List<Map<String, dynamic>> billingproducts=[];

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

  RxList<String> drfaultList = (List<String>.of([])).obs;
  RxList<String> drfaultIdList = (List<String>.of([])).obs;

  RxList<bool> itemList = <bool>[].obs;
  RxBool allSelect = false.obs;

  RxList<Map<String, dynamic>>? producctList =
      (List<Map<String, dynamic>>.of([])).obs;

  DeliveryScheduleSingleViewController({required this.id});

  Rx<UpdateOrderEntity> updateOrderEntity = UpdateOrderEntity().obs;

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
      deliveryScheduleSingleViewGdEntity.value =
          (await DeliveryScheduleSingleViewtGd().getbyiddeliveryschedule(id))!;
      loadingBool.value = false;
      print(deliveryScheduleSingleViewGdEntity.value.deliveryschedule!.length);
      if (deliveryScheduleSingleViewGdEntity.value.deliveryschedule!.length !=
          0) {
        for (int i = 0;
            i <
                deliveryScheduleSingleViewGdEntity
                    .value.deliveryschedule!.length;
            i++) {
          drfaultList.add(deliveryScheduleSingleViewGdEntity
              .value.deliveryschedule![i].deliverybox
              .toString());
          drfaultIdList.add(deliveryScheduleSingleViewGdEntity
              .value.deliveryschedule![i].id
              .toString());
          itemList.add(false);
        }
      }
    }
  }

  updateOrder() async {
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true) {
      addBilling();
      // print(itemList.length.toString());
      // if(itemList.contains(true)){
      //   if (deliveryScheduleSingleViewGdEntity.value.deliveryschedule!.length !=
      //       0) {
      //     for (int i = 0;
      //     i <
      //         deliveryScheduleSingleViewGdEntity
      //             .value.deliveryschedule!.length;
      //     i++) {
      //       Map<String, dynamic> json = {
      //         "orderid": deliveryScheduleSingleViewGdEntity
      //             .value.deliveryschedule![i].orderid
      //             .toString(),
      //         "orderno": deliveryScheduleSingleViewGdEntity
      //             .value.deliveryschedule![i].orderno
      //             .toString(),
      //         "distributorid": deliveryScheduleSingleViewGdEntity
      //             .value.deliveryschedule![i].distributorid
      //             .toString(),
      //         "productid": deliveryScheduleSingleViewGdEntity
      //             .value.deliveryschedule![i].productid
      //             .toString(),
      //         "deliveredboxcount": deliveryScheduleSingleViewGdEntity
      //             .value.deliveryschedule![i].deliverybox
      //             .toString(),
      //         "deliverybox": deliveryScheduleSingleViewGdEntity
      //             .value.deliveryschedule![i].box
      //             .toString(),
      //         "boxpair": deliveryScheduleSingleViewGdEntity
      //             .value.deliveryschedule![i].pair
      //             .toString(),
      //         "catid": deliveryScheduleSingleViewGdEntity
      //             .value.deliveryschedule![i].category
      //             .toString(),
      //         "sizeid": deliveryScheduleSingleViewGdEntity
      //             .value.deliveryschedule![i].size
      //             .toString(),
      //         "deliveryproductid": deliveryScheduleSingleViewGdEntity
      //             .value.deliveryschedule![i].deliveryproductsid
      //             .toString(),
      //         "did": deliveryScheduleSingleViewGdEntity
      //             .value.deliveryschedule![i].did
      //             .toString(),
      //         "obox": drfaultList[i].toString(),
      //         // "did":drfaultIdList[i].toString(),
      //       };
      //       producctList!.add(json);
      //     }
      //     CustomSnackbar().LoadingBottomSheet();
      //     updateOrderEntity.value = (await DeliveryScheduleSingleViewtGd()
      //         .UpdateOrderGod(
      //         deliveryScheduleSingleViewGdEntity
      //             .value.deliveryschedule![0].did
      //             .toString(),
      //         deliveryScheduleSingleViewGdEntity
      //             .value.deliveryschedule![0].distributorid
      //             .toString(),
      //         producctList!))!;
      //     Get.back();
      //     if (updateOrderEntity.value != null) {
      //       if (updateOrderEntity.value.response.toString() ==
      //           'Updated successfully') {
      //         addBilling();
      //       } else {
      //         CustomSnackbar().InfoSnackBar(
      //             'Update Order', updateOrderEntity.value.response.toString());
      //       }
      //     }
      //   }
      //
      // }
    }
  }

  addBilling() async {
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true){
      if(itemList.length!=0){
        for(int i=0;i<itemList.length;i++){
          if(itemList[i]==true){
            Map<String,dynamic> json={
              "productid":deliveryScheduleSingleViewGdEntity.value.deliveryschedule![i].productid,
              "deliverybox":deliveryScheduleSingleViewGdEntity.value.deliveryschedule![i].deliverybox,
              "catid":deliveryScheduleSingleViewGdEntity.value.deliveryschedule![i].category,
              "sizeid":deliveryScheduleSingleViewGdEntity.value.deliveryschedule![i].size,
              "boxpair":deliveryScheduleSingleViewGdEntity.value.deliveryschedule![i].pair,
              "orderno":deliveryScheduleSingleViewGdEntity.value.deliveryschedule![i].orderno,
              "orderid":deliveryScheduleSingleViewGdEntity.value.deliveryschedule![i].orderid,
              "deliveryproductid":deliveryScheduleSingleViewGdEntity.value.deliveryschedule![i].deliveryproductsid,
            };
            billingproducts?.add(json);
          }
        }
      }
      CustomSnackbar().LoadingBottomSheet();
      responseEntity.value=(await DeliveryScheduleSingleViewtGd().addBilling(deliveryScheduleSingleViewGdEntity.value.deliveryschedule![0].did.toString(), deliveryScheduleSingleViewGdEntity.value.deliveryschedule![0].distributorid.toString(), billingproducts))!;
      Get.back();
      if(responseEntity.value.response=="Added successfully"){
        Get.back();
        CustomSnackbar().InfoSnackBar('Delivery Schedule', 'Added successfully');
      }
      else {
        CustomSnackbar().InfoSnackBar('Delivery Schedule', responseEntity.value.response.toString());
      }
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
