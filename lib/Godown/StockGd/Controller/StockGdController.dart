


import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../Utils/InternetConnectivity.dart';
import '../Model/stock_list_gd_entity.dart';
import '../Repository/StockGdServices.dart';


class StockListGdController extends GetxController{


  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  Rx<StockListGdEntity> productListEntity = StockListGdEntity().obs;
  RxString imgurl='null'.obs;
  RxBool searchBool = false.obs;
  RxList<StockListGdStocklist> artList =
      List<StockListGdStocklist>.of([]).obs;





  checkNetworkStatus() async {
    try {
      networkStatus.value =
      (await NetworkConnectivity().checkConnectivityState())!;
      print(networkStatus.value);
    } catch (e) {
      print(e);
    }
  }
  filterSearch(String value) {
    RxList<StockListGdStocklist> reslutList =
        List<StockListGdStocklist>.of([]).obs;
    if (value.isEmpty) {
      searchBool.value=false;
      reslutList.value = productListEntity.value.stocklist!;
    } else {
      searchBool.value=true;
      reslutList.value = productListEntity.value.stocklist!
          .where((element) => element.artno
          .toString()
          .toLowerCase()
          .contains(value.toLowerCase()))
          .toList();
      reslutList.value = productListEntity.value.stocklist!
          .where((element) => element.colorname
          .toString()
          .toLowerCase()
          .contains(value.toLowerCase()))
          .toList();
    }
    artList.value=reslutList.value;
  }

  getProductList() async {
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true) {
      loadingBool.value = true;
      productListEntity.value = (await StockGdServices().getPrdouctList())!;


      loadingBool.value= false;
      print("shahhh"+loadingBool.value.toString());
    }
  }


  @override
  void onInit() {
    // TODO: implement onInit
    checkNetworkStatus();
    getProductList();

    super.onInit();
  }

}