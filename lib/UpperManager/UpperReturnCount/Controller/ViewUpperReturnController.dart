import 'package:get/get.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperReturnCount/Repository/UpperReturnService.dart';

import '../../../Utils/InternetConnectivity.dart';
import '../../UpperPurchaseOrder/Model/get_upper_purchse_plan_entity.dart';
import '../Model/get_upper_return_entity.dart';

class ViewUpperReturnController extends GetxController{

  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  RxBool searchBool = false.obs;
  RxList<GetUpperReturnUpperreturnlist> filterList=List<GetUpperReturnUpperreturnlist>.of([]).obs;
  Rx<GetUpperReturnEntity> orderNoEntity=GetUpperReturnEntity().obs;
  RxString choosestatus="".obs;
  RxList statusList = ["Confirmed","Pending","Cancelled"].obs;

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
    RxList<GetUpperReturnUpperreturnlist> reslutList =
        List<GetUpperReturnUpperreturnlist>.of([]).obs;
    if (value.isEmpty) {
      searchBool.value=false;
      reslutList.value = orderNoEntity.value.upperreturnlist!;
    } else {
      searchBool.value=true;
      reslutList.value = orderNoEntity.value.upperreturnlist!
          .where((element) => element.name
          .toString()
          .toLowerCase()
          .contains(value.toLowerCase())||
          element.orderno
              .toString()
              .toLowerCase()
              .contains(value.toLowerCase())
      )
          .toList();
    }
    filterList.value=reslutList.value;
  }

  getUpperOrder()async{
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true){
      loadingBool.value=true;
      orderNoEntity.value=(await UpperReturnService().getUpperReturn())!;
      loadingBool.value=false;

    }
  }
  // getUpperOrderFilter()async{
  //   bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
  //   if (nBool == true){
  //     loadingBool.value=true;
  //     orderNoEntity.value=(await UpperPurchseOrderService().getUpperPurchseOrderFilter(upmId,choosestatus.value.toString()))!;
  //     loadingBool.value=false;
  //
  //   }
  // }

  getStatustype(String value){
    choosestatus.value= value.toString();
  }
  @override
  void onInit() {
    // TODO: implement onInit
    getUpperOrder();
    super.onInit();
  }
}