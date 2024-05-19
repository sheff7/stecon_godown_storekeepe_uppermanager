import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:intl/intl.dart';

import '../../../CustomWidget/CustomSnackBar.dart';
import '../../../Utils/InternetConnectivity.dart';
import '../Model/get_billing_list_entity.dart';
import '../Model/view_bill_single_entity.dart';
import '../Repository/ViewBillService.dart';

class ViewBillController extends GetxController{

  final String distruberid;
  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  RxInt count=0.obs;
  RxInt totalPair=0.obs;
  RxInt totalBox=0.obs;
  RxDouble totalAmt=0.0.obs;
  RxDouble totallessdisc=0.0.obs;
  RxDouble totalTaxableValue=0.0.obs;
  RxDouble totalcgst=0.0.obs;
  RxDouble totalsgst=0.0.obs;
  RxDouble total=0.0.obs;

  RxString startDate=''.obs;
  RxString endDate = ''.obs;








  Rx<GetBillingListEntity>getBillListEntity=GetBillingListEntity().obs;
  Rx<ViewBillSingleEntity>billSingleEntity=ViewBillSingleEntity().obs;

  ViewBillController({required this.distruberid});

  checkNetworkStatus() async {
    try {
      networkStatus.value =
      (await NetworkConnectivity().checkConnectivityState())!;
      print(networkStatus.value);
    } catch (e) {
      print(e);
    }
  }

  getBillList() async {
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true) {
      loadingBool.value = true;
      getBillListEntity.value = (await ViewBillService().getBillList(distruberid))!;
      loadingBool.value= false;

    }
  }
  getBillListByDate() async {
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true) {
      loadingBool.value = true;
      getBillListEntity.value = (await ViewBillService().getBillListByDate(distruberid,startDate.value.toString(),endDate.value.toString()))!;
      loadingBool.value= false;

    }
  }
  Future<String> getBillSingle(String Id) async {
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true) {
      CustomSnackbar().LoadingBottomSheet();
      billSingleEntity.value = (await ViewBillService().getBillListById(Id))!;
      Get.back();
      if(billSingleEntity.value.response=='Success'){
        if(billSingleEntity.value.billingproductlist!.length!=0){
          for(int i=0;i<billSingleEntity.value.billingproductlist!.length;i++){
            totalPair.value=totalPair.value+int.parse(billSingleEntity.value.billingproductlist![i].qty.toString());
            totalBox.value=totalBox.value+int.parse(billSingleEntity.value.billingproductlist![i].altqty.toString());
            totalAmt.value=totalAmt.value+double.parse(billSingleEntity.value.billingproductlist![i].amt.toString());
            totallessdisc.value=totallessdisc.value+double.parse(billSingleEntity.value.billingproductlist![i].lessdiscamt.toString());
            totalTaxableValue.value=totalTaxableValue.value+double.parse(billSingleEntity.value.billingproductlist![i].txablevalue.toString());
            totalcgst.value=totalcgst.value+double.parse(billSingleEntity.value.billingproductlist![i].cgstamt.toString());
            totalsgst.value=totalsgst.value+double.parse(billSingleEntity.value.billingproductlist![i].sgastamt.toString());
            total.value=total.value+double.parse(billSingleEntity.value.billingproductlist![i].total.toString());







          }
        }
      }

    }
    return billSingleEntity.value.response.toString();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    checkNetworkStatus();
    var now = DateTime.now();
    startDate.value=DateFormat('dd-MM-yyyy').format(now).toString();
    endDate.value=DateFormat('dd-MM-yyyy').format(now).toString();
    getBillList();
    super.onInit();
  }
}