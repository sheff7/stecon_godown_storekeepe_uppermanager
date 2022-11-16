


import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../Utils/InternetConnectivity.dart';
import '../Model/stock_list_um_entity.dart';
import '../Repository/StockListUmServices.dart';


class StockListUmController extends GetxController{


  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  Rx<StockListUmEntity> productListEntity = StockListUmEntity().obs;
  RxString imgurl='null'.obs;
  RxBool searchBool = false.obs;
  RxList<StockListUmStocklist> artList =
      List<StockListUmStocklist>.of([]).obs;





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
    RxList<StockListUmStocklist> reslutList =
        List<StockListUmStocklist>.of([]).obs;
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
    }
    artList.value=reslutList.value;
  }

  getProductList() async {
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true) {
      loadingBool.value = true;
      productListEntity.value = (await StockListUmServices().getStockList())!;


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