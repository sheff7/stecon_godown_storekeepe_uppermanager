


import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../Utils/InternetConnectivity.dart';
import '../Model/material_stock_single_view_sk_entity.dart';
import '../Repository/MaterialStockListProManagerServices.dart';




class MaterialStockSingleViewProManagerController extends GetxController{

  final String itemid;


  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  Rx<MaterialStockSingleViewSkEntity> productListEntity = MaterialStockSingleViewSkEntity().obs;
  RxBool searchBool = false.obs;

  MaterialStockSingleViewProManagerController({required this.itemid});






  checkNetworkStatus() async {
    try {
      networkStatus.value =
      (await NetworkConnectivity().checkConnectivityState())!;
      print(networkStatus.value);
    } catch (e) {
      print(e);
    }
  }

  getMaterialSingleView() async {
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true) {
      loadingBool.value = true;
      productListEntity.value = (await MaterialStockListProManagerServices().getMaterialStockSingleView(itemid))!;


      loadingBool.value= false;
      print("shahhh"+loadingBool.value.toString());
    }
  }


  @override
  void onInit() {
    // TODO: implement onInit
    checkNetworkStatus();
    getMaterialSingleView();

    super.onInit();
  }

}