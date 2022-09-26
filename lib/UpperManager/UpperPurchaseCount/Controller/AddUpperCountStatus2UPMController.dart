import 'package:get/get.dart';
import 'package:stecon_godown_storekeepe_uppermanager/CustomWidget/CustomSnackBar.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperPurchasePlan/Model/response_entity_entity.dart';

import '../../../Utils/InternetConnectivity.dart';
import '../Model/get_staff_entity.dart';
import '../Model/get_upper_plan_count_entity.dart';
import '../Repository/UpperCountStatus0UPMService.dart';

class AddUpperCountStatus2UPMController  extends GetxController{
  final String id;
  final String orderno;
  final String umpId;
  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  RxString artnoName=''.obs;
  RxString categoryName=''.obs;
  RxString colorName=''.obs;
  RxString dateofcounting=''.obs;
  RxString comapnyPlanno=''.obs;
  RxString upperOrderId=''.obs;
  RxString companyid=''.obs;
  RxString planNo=''.obs;
  Rx<GetUpperPlanCountEntity>orderNoEntity=GetUpperPlanCountEntity().obs;
  RxList<String> dynamicChips=(List<String>.of([])).obs;
  RxList<String> filters=(List<String>.of([])).obs;
  Rx<GetStaffEntity>staffEnebtity=GetStaffEntity().obs;
  Rx<ResponseEntityEntity>responseEntity=ResponseEntityEntity().obs;
  RxString oc1=''.obs;
  RxString oc2=''.obs;
  RxString oc3=''.obs;
  RxString oc4=''.obs;
  RxString oc5=''.obs;
  RxString oc6=''.obs;
  RxString oc7=''.obs;
  RxString oc8=''.obs;
  RxString oc9=''.obs;
  RxString oc10=''.obs;
  RxString oc11=''.obs;
  RxString oc12=''.obs;
  RxString oc13=''.obs;



  AddUpperCountStatus2UPMController({required this.id, required this.orderno, required this.umpId});

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
    if (nBool == true){
      CustomSnackbar().LoadingBottomSheet();
      orderNoEntity.value=(await UpperCountStatus0UPMServie().getUpperPlan(id, orderno))!;
      Get.back();
      if(orderNoEntity.value!=null){
        if(orderNoEntity.value.response=='Success'){
          artnoName.value=orderNoEntity.value.purchaseproductlist![0].artnoname.toString();
          categoryName.value=orderNoEntity.value.purchaseproductlist![0].categoryname.toString();
          colorName.value=orderNoEntity.value.purchaseproductlist![0].colorname.toString();
          comapnyPlanno.value=orderNoEntity.value.purchaseproductlist![0].companyplanno.toString();
          companyid.value=orderNoEntity.value.purchaseproductlist![0].companyid.toString();
          planNo.value=orderNoEntity.value.purchaseproductlist![0].planno.toString();
          upperOrderId.value=orderNoEntity.value.purchaseproductlist![0].porderid.toString();



          // dateofcounting.value=orderNoEntity.value.purchaseproductlist![0].cutofdate.toString();
          oc1.value=orderNoEntity.value.purchaseproductlist![0].s1.toString();
          oc2.value=orderNoEntity.value.purchaseproductlist![0].s2.toString();
          oc3.value=orderNoEntity.value.purchaseproductlist![0].s3.toString();
          oc4.value=orderNoEntity.value.purchaseproductlist![0].s4.toString();
          oc5.value=orderNoEntity.value.purchaseproductlist![0].s5.toString();
          oc6.value=orderNoEntity.value.purchaseproductlist![0].s6.toString();
          oc7.value=orderNoEntity.value.purchaseproductlist![0].s7.toString();
          oc8.value=orderNoEntity.value.purchaseproductlist![0].s8.toString();
          oc9.value=orderNoEntity.value.purchaseproductlist![0].s9.toString();
          oc10.value=orderNoEntity.value.purchaseproductlist![0].s10.toString();
          oc11.value=orderNoEntity.value.purchaseproductlist![0].s11.toString();
          oc12.value=orderNoEntity.value.purchaseproductlist![0].s12.toString();
          oc13.value=orderNoEntity.value.purchaseproductlist![0].s13.toString();


        }
      }
    }
  }
  addUpperCount(List<Map<String,dynamic>> rcList,List<Map<String,dynamic>> dcList,String comment)async{
    List<Map<String,dynamic>>staffList=[];
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true){
     for(int i=0;i<staffEnebtity.value.stafflist!.length;i++){
       for(int j=0;j<filters.length;j++){
         if(staffEnebtity.value.stafflist![i].name.toString()==filters[j]){
           Map<String,dynamic>json={
             "staffid":staffEnebtity.value.stafflist![i].id.toString()
           };
           staffList.add(json);
         }
       }
     }
     CustomSnackbar().LoadingBottomSheet();
     responseEntity.value=(await UpperCountStatus0UPMServie().addUpperCount(orderno, comapnyPlanno.value, upperOrderId.value, companyid.value, dateofcounting.value, comment, planNo.value, rcList, dcList, staffList))!;
     Get.back();
     if(responseEntity.value.response=='Added successfully')
       {
         Get.back();
       }
    }
  }
  getUpperStaf()async{
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true){
      CustomSnackbar().LoadingBottomSheet();
      staffEnebtity.value=(await UpperCountStatus0UPMServie().getStaff())!;
      Get.back();
      if(staffEnebtity.value.response=='Success'){
        for(int i=0;i<staffEnebtity.value.stafflist!.length;i++){
         dynamicChips.add(staffEnebtity.value.stafflist![i].name.toString());
        }
      }
    }
  }
  @override
  void onInit() {
    // TODO: implement onInit
    getUpperOrder();
    getUpperStaf();
    super.onInit();
  }
}