import 'package:get/get.dart';

import '../../../CustomWidget/CustomSnackBar.dart';
import '../../../Utils/InternetConnectivity.dart';
import '../../UpperPurchaseCount/Model/get_staff_entity.dart';
import '../Model/get_upper_return_single_entity.dart';
import '../Repository/UpperReturnService.dart';

class EditUpperReturnController extends GetxController{
  final String id;
  final String orderId;
  final String orderNo;
  final String supplierId;

  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  Rx<GetUpperReturnSingleEntity> orderNoEntity=GetUpperReturnSingleEntity().obs;

  RxList<String> dynamicChips = (List<String>.of([])).obs;
  RxList<String> filters = (List<String>.of([])).obs;

  Rx<GetStaffEntity> staffEnebtity = GetStaffEntity().obs;


  EditUpperReturnController(
      {required this.id, required this.orderId, required this.orderNo, required this.supplierId});
  checkNetworkStatus() async {
    try {
      networkStatus.value =
      (await NetworkConnectivity().checkConnectivityState())!;
      print(networkStatus.value);
    } catch (e) {
      print(e);
    }
  }

  getUpperStaf() async {
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true) {
      CustomSnackbar().LoadingBottomSheet();
      staffEnebtity.value = (await UpperReturnService().getStaff())!;
      Get.back();
      if (staffEnebtity.value.response == 'Success') {
        for (int i = 0; i < staffEnebtity.value.stafflist!.length; i++) {
          dynamicChips.add(staffEnebtity.value.stafflist![i].name.toString());
        }
      }
      getUpperOrder();
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
      if(orderNoEntity.value!=null){
        if(orderNoEntity.value.response=='Success'){
          if(orderNoEntity.value.upperreturncountstafflist!.length!=0){
            for(int i=0;i<orderNoEntity.value.upperreturncountstafflist!.length;i++){
              filters.add(orderNoEntity.value.upperreturncountstafflist![i].staffname.toString());
            }
          }
        }
      }

    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    checkNetworkStatus();
    getUpperStaf();

    super.onInit();
  }
}