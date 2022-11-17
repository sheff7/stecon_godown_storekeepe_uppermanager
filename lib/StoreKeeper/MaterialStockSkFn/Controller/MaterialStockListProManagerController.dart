


import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../Utils/InternetConnectivity.dart';

import '../Model/material_stock_list_sk_entity.dart';
import '../Repository/MaterialStockListProManagerServices.dart';




class MaterialStockListProManagerController extends GetxController{


  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  Rx<MaterialStockListSkEntity> productListEntity = MaterialStockListSkEntity().obs;
  RxBool searchBool = false.obs;
  // RxList<MaterialStockListProManagerStocklist> artList =
  //     List<MaterialStockListProManagerStocklist>.of([]).obs;





  checkNetworkStatus() async {
    try {
      networkStatus.value =
      (await NetworkConnectivity().checkConnectivityState())!;
      print(networkStatus.value);
    } catch (e) {
      print(e);
    }
  }
  // filterSearch(String value) {
  //   RxList<MaterialStockListProManagerStocklist> reslutList =
  //       List<MaterialStockListProManagerStocklist>.of([]).obs;
  //   if (value.isEmpty) {
  //     searchBool.value=false;
  //     reslutList.value = productListEntity.value.stocklist!;
  //   } else {
  //     searchBool.value=true;
  //     reslutList.value = productListEntity.value.stocklist!
  //         .where((element) => element.artno
  //         .toString()
  //         .toLowerCase()
  //         .contains(value.toLowerCase()))
  //         .toList();
  //   }
  //   artList.value=reslutList.value;
  // }

  getMaterialList() async {
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true) {
      loadingBool.value = true;
      productListEntity.value = (await MaterialStockListProManagerServices().getMaterialStockList())!;


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