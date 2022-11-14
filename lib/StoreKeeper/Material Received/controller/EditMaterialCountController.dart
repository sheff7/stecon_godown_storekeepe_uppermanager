import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stecon_godown_storekeepe_uppermanager/StoreKeeper/Material%20Received/controller/viewMaterialReceivedController.dart';

import '../../../CustomWidget/CustomSnackBar.dart';
import '../../../Utils/InternetConnectivity.dart';
import '../../IssuedMaterialSkFn/Model/response_entity.dart';
import '../Model/get_material_received_count_entity.dart';
import '../Repository/materialReceivedService.dart';



class EditMaterialRcCountController extends GetxController {
  final String id;
  final String oc;
  final String rc;
  final String dc;
  final String date;
  final String note;

  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  Rx<GetMaterialReceivedCountEntity> viewMaterialOrderEntity =
      GetMaterialReceivedCountEntity().obs;
  RxString buttonTxt='Submit'.obs;






  Rx<ResponseEntity> responseEntity = ResponseEntity().obs;

  EditMaterialRcCountController({ required this.date,
    required this.id, required this.oc, required this.rc, required this.dc, required this.note,});



  checkNetworkStatus() async {
    try {
      networkStatus.value =
      (await NetworkConnectivity().checkConnectivityState())!;
      print(networkStatus.value);

    } catch (e) {
      print(e);
    }
  }

  ViewMaterialOrder() async {
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true) {
      CustomSnackbar().LoadingBottomSheet();
      viewMaterialOrderEntity.value = (await MaterialReceivedService()
          .getMaterialRcCountSingle())!;
      Get.back();
      if (viewMaterialOrderEntity.value != null) {
        if (viewMaterialOrderEntity.value.materialrecievedlist!.length != 0) {
          // oc.value=viewMaterialOrderEntity.value.materialrecievedlist![0].oc.toString();
          // rc.value=viewMaterialOrderEntity.value.materialrecievedlist![0].rc.toString();
          // dc.value=viewMaterialOrderEntity.value.materialrecievedlist![0].dc.toString();
          // note.value=viewMaterialOrderEntity.value.materialrecievedlist![0].note.toString();
          // ocController.text=oc.value.toString();
          // dcController.text=dc.value.toString();
          // rcController.text=rc.value.toString();
          // noteController.text=note.value.toString();

        }
      }
    }
  }

  addCount(String rcC,String dcC,String noteC) async {
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true) {
      CustomSnackbar().LoadingBottomSheet();
      print(date);
      responseEntity.value = (await MaterialReceivedService()
          .editMaterialRecivedCount(
          oc,
          dcC,
          rcC,
          noteC,
          id,
          date))!;
      Get.back();
      if (responseEntity.value.response == 'Updated successfully') {
        final controller=Get.find<ViewMatrialRcCountController>();
        controller.ViewMaterialOrder();
        Get.back();
        CustomSnackbar().InfoSnackBar(
            'Edit Material Count', responseEntity.value.response.toString());
      } else {
        CustomSnackbar().InfoSnackBar(
            'Edit Material Count', responseEntity.value.response.toString());
      }
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    checkNetworkStatus();
    print('ddd');
    super.onInit();
  }
}
