import 'package:flutter/MATERIAL.dart';
import 'package:get/get.dart';
import 'package:stecon_godown_storekeepe_uppermanager/CustomWidget/CustomSnackBar.dart';
import 'package:stecon_godown_storekeepe_uppermanager/StoreKeeper/Material%20Received/controller/viewMaterialReceivedController.dart';
import '../../../Utils/InternetConnectivity.dart';
import '../../IssuedMaterialSkFn/Model/response_entity.dart';
import '../Model/get_material_order_entity.dart';
import '../Repository/materialReceivedService.dart';



class AddMaterialReceivedController extends GetxController {
  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  RxList<String>? orderList = ['Select Order'].obs;
  final itemController = TextEditingController();
  final categoryController = TextEditingController();
  final companyController = TextEditingController();
  final typeController = TextEditingController();
  final ocController = TextEditingController();
  final rcController = TextEditingController();
  final dcController = TextEditingController();
  final noteController = TextEditingController();
  RxString orderisselected = ''.obs;
  RxString orderid = ''.obs;
  RxString itemId = ''.obs;
  RxString companyId = ''.obs;

  Rx<ResponseEntity> responseEntity = ResponseEntity().obs;

  Rx<GetMaterialOrderEntity> viewMaterialOrderNoEntity =
      GetMaterialOrderEntity().obs;

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
      viewMaterialOrderNoEntity.value =
          (await MaterialReceivedService().ViewMaterialOrder())!;
      Get.back();
      if (viewMaterialOrderNoEntity.value != null) {
        if (viewMaterialOrderNoEntity.value.materialorderlist!.length != 0) {
          for (int i = 0;
              i < viewMaterialOrderNoEntity.value.materialorderlist!.length;
              i++) {
            orderList!.add(viewMaterialOrderNoEntity
                .value.materialorderlist![i].materialorderno
                .toString());
          }
        }
      }
    }
  }

  orderType(String value) {
    if (value != 'Select Order') {
      orderisselected.value = value;
      for (int i = 0;
          i < viewMaterialOrderNoEntity.value.materialorderlist!.length;
          i++) {
        if (value ==
            viewMaterialOrderNoEntity
                .value.materialorderlist![i].materialorderno) {
          orderid.value = viewMaterialOrderNoEntity
              .value.materialorderlist![i].id
              .toString();
          // getProduct();
          itemController.text = viewMaterialOrderNoEntity
              .value.materialorderlist![i].itemname
              .toString();
          categoryController.text = viewMaterialOrderNoEntity
              .value.materialorderlist![i].categoryname
              .toString();
          companyController.text = viewMaterialOrderNoEntity
              .value.materialorderlist![i].companyname
              .toString();
          typeController.text = viewMaterialOrderNoEntity
              .value.materialorderlist![i].type
              .toString();
          companyId.value = viewMaterialOrderNoEntity
              .value.materialorderlist![i].companyid
              .toString();
          itemId.value = viewMaterialOrderNoEntity
              .value.materialorderlist![i].itemid
              .toString();
          ocController.text = viewMaterialOrderNoEntity
              .value.materialorderlist![i].qty
              .toString();
        }
      }
    }
  }

  addCount() async {
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true) {
      CustomSnackbar().LoadingBottomSheet();
      responseEntity.value = (await MaterialReceivedService()
          .addMaterialRecivedCount(
              orderid.value,
              orderisselected.value,
              itemId.value,
              categoryController.text.toString(),
              companyId.value,
              typeController.text.toString(),
              ocController.text.toString(),
              dcController.text.toString(),
              rcController.text.toString(),
              noteController.text.toString()))!;
      Get.back();
      if (responseEntity.value.response == 'Added successfully') {
        final controller = Get.find<ViewMatrialRcCountController>();
        controller.ViewMaterialOrder();
        Get.back();
        CustomSnackbar().InfoSnackBar(
            'Add Material Count', responseEntity.value.response.toString());
      } else {
        CustomSnackbar().InfoSnackBar(
            'Add Material Count', responseEntity.value.response.toString());
      }
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    checkNetworkStatus();
    ViewMaterialOrder();
    super.onInit();
  }
}
