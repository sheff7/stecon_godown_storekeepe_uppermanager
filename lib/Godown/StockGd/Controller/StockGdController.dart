


import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../Utils/InternetConnectivity.dart';
import '../Model/stock_list_gd_entity.dart';
import '../Repository/StockGdServices.dart';


class StockListGdController extends GetxController{


  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  int currentPage=1;
  int totalpage=0;
  Rx<StockListGdEntity> productListEntity = StockListGdEntity().obs;
  RxString imgurl='null'.obs;
  RxBool searchBool = false.obs;
  ScrollController controller = ScrollController();
  RxList<StockListGdStocklist> artList =
      List<StockListGdStocklist>.of([]).obs;
  RxList<StockListGdStocklist> productList =
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
      reslutList.value = productList!
          .where((element) => element.artno
          .toString()
          .toLowerCase()
          .contains(value.toLowerCase())||
          element.colorname
              .toString()
              .toLowerCase()
              .contains(value.toLowerCase())||
          element.categoryname
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
      productListEntity.value = (await StockGdServices().getPrdouctList(currentPage.toString()))!;
      loadingBool.value= false;
      productList.value.clear();
      if(productListEntity.value!=null && productListEntity.value.response=="Success"
      && productListEntity.value.stocklist!.length!=0){
        productList.value=productListEntity.value.stocklist!.toList().obs;
        totalpage=int.parse(productListEntity.value.totalPages.toString()??"0");
        currentPage=int.parse(productListEntity.value.nextpage.toString());
      }
    }
  }

  getMoreProductList() async {
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true) {
      productListEntity.value = (await StockGdServices().getPrdouctList(currentPage.toString()))!;
      if(productListEntity.value!=null && productListEntity.value.response=="Success"
          && productListEntity.value.stocklist!.length!=0){
        productList.value=[...productList.value,...productListEntity.value.stocklist!.toList().obs];
        totalpage=int.parse(productListEntity.value.totalPages.toString()??"0");
        currentPage=int.parse(productListEntity.value.nextpage.toString());
      }
    }
  }

  refresh() {
    controller.addListener(() {
      if (controller.position.maxScrollExtent == controller.position.pixels) {
        print("maxscroll");
        if (totalpage != null) {
          if (currentPage <= totalpage) {
            getMoreProductList();
          }
        }
      }
    });
  }


    @override
    void dispose() {
      // TODO: implement dispose

      super.dispose();
    }
    @override
    void onInit() {
      // TODO: implement onInit
      checkNetworkStatus();
      getProductList();
      refresh();

      super.onInit();
    }
  }