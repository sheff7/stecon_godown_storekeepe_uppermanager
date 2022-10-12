import 'package:get/get.dart';

import '../../../Utils/InternetConnectivity.dart';
import '../Model/get_material_replaced_sk_entity.dart';
import '../Repository/MaterialReplacedDetailsServicessk.dart';





class MaterialReplacedSkListController extends GetxController{


  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  Rx<GetMaterialReplacedSkEntity> MaterialReplacedListrEntity = GetMaterialReplacedSkEntity().obs;



  checkNetworkStatus() async {
    try {
      networkStatus.value =
      (await NetworkConnectivity().checkConnectivityState())!;
      print(networkStatus.value);
    } catch (e) {
      print(e);
    }
  }
  getMaterialList() async {
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true) {
      loadingBool.value = true;
      MaterialReplacedListrEntity.value = (await MaterialReplacedListSdkServices().getMaterialList())!;

      loadingBool.value= false;
      print("shahhh"+loadingBool.value.toString());
    }
  }


  @override
  void onInit() {
    // TODO: implement onInit
    checkNetworkStatus();
    getMaterialList();

    super.onInit();
  }

}