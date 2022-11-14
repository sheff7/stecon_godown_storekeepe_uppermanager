import 'package:get/get.dart';

import '../../../Utils/InternetConnectivity.dart';
import '../Model/get_material_received_count_entity.dart';
import '../Repository/materialReceivedService.dart';


class ViewMatrialRcCountController extends GetxController{
  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  Rx<GetMaterialReceivedCountEntity>viewMaterialOrderEntity=GetMaterialReceivedCountEntity().obs;
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
      loadingBool.value = true;
      viewMaterialOrderEntity.value = (await MaterialReceivedService().getMaterialRcCountSingle())!;
      loadingBool.value= false;
      print("Heaven"+loadingBool.value.toString());
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