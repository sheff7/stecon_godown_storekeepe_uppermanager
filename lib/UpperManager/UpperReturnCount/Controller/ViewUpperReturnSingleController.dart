import 'package:get/get.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperReturnCount/Repository/UpperReturnService.dart';

import '../../../Utils/InternetConnectivity.dart';
import '../Model/get_upper_return_single_entity.dart';

class ViewUpperReturnSingleController extends GetxController{
  final String id;
  final String orderId;
  final String orderNo;
  final String supplierId;

  ViewUpperReturnSingleController(
      {required this.id, required this.orderId, required this.orderNo, required this.supplierId});


  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  Rx<GetUpperReturnSingleEntity> orderNoEntity=GetUpperReturnSingleEntity().obs;


  RxBool enable1 = false.obs;
  RxBool enable2 = false.obs;
  RxBool enable3 = false.obs;
  RxBool enable4 = false.obs;
  RxBool enable5 = false.obs;
  RxBool enable6 = false.obs;
  RxBool enable7 = false.obs;
  RxBool enable8 = false.obs;
  RxBool enable9 = false.obs;
  RxBool enable10 = false.obs;
  RxBool enable11 = false.obs;
  RxBool enable12 = false.obs;
  RxBool enable13 = false.obs;


  checkNetworkStatus() async {
    try {
      networkStatus.value =
      (await NetworkConnectivity().checkConnectivityState())!;
      print(networkStatus.value);
    } catch (e) {
      print(e);
    }
  }
  getUpperOrder()async{
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true) {
      loadingBool.value = true;
      orderNoEntity.value =
      (await UpperReturnService().getUpperReturnSingle(
          id, supplierId,orderNo,orderId))!;
      loadingBool.value = false;

    }
  }
  @override
  void onInit() {
    // TODO: implement onInit
    checkNetworkStatus();
    getUpperOrder();

    super.onInit();
  }
}