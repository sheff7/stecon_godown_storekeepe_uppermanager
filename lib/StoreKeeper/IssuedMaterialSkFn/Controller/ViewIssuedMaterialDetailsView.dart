import 'package:get/get.dart';

import '../../../Utils/InternetConnectivity.dart';
import '../Model/get_issued_material_list_entity.dart';
import '../Repository/IssuedMaterialListServices.dart';




class IssuedMaterialSdkListController extends GetxController{


  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  Rx<GetIssuedMaterialListEntity> IssuedMaterialListEntity = GetIssuedMaterialListEntity().obs;



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
      IssuedMaterialListEntity.value = (await IssuedMaterialListSdkServices().getMaterialList())!;

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