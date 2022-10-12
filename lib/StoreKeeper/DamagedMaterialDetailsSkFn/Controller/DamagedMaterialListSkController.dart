import 'package:get/get.dart';

import '../../../Utils/InternetConnectivity.dart';
import '../Model/get_damaged_material_list_sk_entity.dart';
import '../Repository/DamagedMaterialListSkServices.dart';




class GetDamagedMaterialListSkController extends GetxController{


  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  Rx<GetDamagedMaterialListSkEntity> DamagedMaterialListSkEntity = GetDamagedMaterialListSkEntity().obs;



  checkNetworkStatus() async {
    try {
      networkStatus.value =
      (await NetworkConnectivity().checkConnectivityState())!;
      print(networkStatus.value);
    } catch (e) {
      print(e);
    }
  }
  getDamageList() async {
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true) {
      loadingBool.value = true;
      DamagedMaterialListSkEntity.value = (await DamagedMaterialListSdkServices().getDamageList())!;

      loadingBool.value= false;
      print("shahhh"+loadingBool.value.toString());
    }
  }


  @override
  void onInit() {
    // TODO: implement onInit
    checkNetworkStatus();
    getDamageList();

    super.onInit();
  }

}