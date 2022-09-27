import 'package:flutter/material.dart';
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
  final String company;
  final String plan;
  final String upperOrder;
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
  RxString countId=''.obs;
  RxString rcId=''.obs;
  RxString dcId=''.obs;
  RxString comment=''.obs;
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

  final CommentsController = TextEditingController();
  final RC1Controller = TextEditingController();
  final RC2Controller = TextEditingController();
  final RC3Controller = TextEditingController();
  final RC4Controller = TextEditingController();
  final RC5Controller = TextEditingController();
  final RC6Controller = TextEditingController();
  final RC7Controller = TextEditingController();
  final RC8Controller = TextEditingController();
  final RC9Controller = TextEditingController();
  final RC10Controller = TextEditingController();
  final RC11Controller = TextEditingController();
  final RC12Controller = TextEditingController();
  final RC13Controller = TextEditingController();


  final DC1Controller = TextEditingController();
  final DC2Controller = TextEditingController();
  final DC3Controller = TextEditingController();
  final DC4Controller = TextEditingController();
  final DC5Controller = TextEditingController();
  final DC6Controller = TextEditingController();
  final DC7Controller = TextEditingController();
  final DC8Controller = TextEditingController();
  final DC9Controller = TextEditingController();
  final DC10Controller = TextEditingController();
  final DC11Controller = TextEditingController();
  final DC12Controller = TextEditingController();
  final DC13Controller = TextEditingController();



  AddUpperCountStatus2UPMController({required this.company, required this.plan, required this.upperOrder, required this.id, required this.orderno, required this.umpId});

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
      orderNoEntity.value=(await UpperCountStatus0UPMServie().getUpperPlan(id, orderno,company,plan,upperOrder))!;
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

          if(orderNoEntity.value.staffcountlist!.length!=0){
            for(int i=0;i<orderNoEntity.value.staffcountlist!.length;i++){
              filters.add(orderNoEntity.value.staffcountlist![i].staffname.toString());
            }
          }
          if(orderNoEntity.value.uppercountlist!.length!=0){
            dateofcounting.value=orderNoEntity.value.uppercountlist![0].dateofcounting.toString();
            countId.value=orderNoEntity.value.uppercountlist![0].id.toString();
            comment.value=orderNoEntity.value.uppercountlist![0].comments.toString();

          }
          if(orderNoEntity.value.receivedcountlist!.length!=0){
            rcId.value=orderNoEntity.value.receivedcountlist![0].id.toString();
            RC1Controller.text=orderNoEntity.value.receivedcountlist![0].s1.toString();
            RC2Controller.text=orderNoEntity.value.receivedcountlist![0].s2.toString();
            RC3Controller.text=orderNoEntity.value.receivedcountlist![0].s3.toString();
            RC4Controller.text=orderNoEntity.value.receivedcountlist![0].s4.toString();
            RC5Controller.text=orderNoEntity.value.receivedcountlist![0].s5.toString();
            RC6Controller.text=orderNoEntity.value.receivedcountlist![0].s6.toString();
            RC7Controller.text=orderNoEntity.value.receivedcountlist![0].s7.toString();
            RC8Controller.text=orderNoEntity.value.receivedcountlist![0].s8.toString();
            RC9Controller.text=orderNoEntity.value.receivedcountlist![0].s9.toString();
            RC10Controller.text=orderNoEntity.value.receivedcountlist![0].s10.toString();
            RC11Controller.text=orderNoEntity.value.receivedcountlist![0].s11.toString();
            RC12Controller.text=orderNoEntity.value.receivedcountlist![0].s12.toString();
            RC13Controller.text=orderNoEntity.value.receivedcountlist![0].s13.toString();

          }
          if(orderNoEntity.value.damagedcountlist!.length!=0){
            dcId.value=orderNoEntity.value.damagedcountlist![0].id.toString();
            DC1Controller.text=orderNoEntity.value.damagedcountlist![0].s1.toString();
            DC2Controller.text=orderNoEntity.value.damagedcountlist![0].s2.toString();
            DC3Controller.text=orderNoEntity.value.damagedcountlist![0].s3.toString();
            DC4Controller.text=orderNoEntity.value.damagedcountlist![0].s4.toString();
            DC5Controller.text=orderNoEntity.value.damagedcountlist![0].s5.toString();
            DC6Controller.text=orderNoEntity.value.damagedcountlist![0].s6.toString();
            DC7Controller.text=orderNoEntity.value.damagedcountlist![0].s7.toString();
            DC8Controller.text=orderNoEntity.value.damagedcountlist![0].s8.toString();
            DC9Controller.text=orderNoEntity.value.damagedcountlist![0].s9.toString();
            DC10Controller.text=orderNoEntity.value.damagedcountlist![0].s10.toString();
            DC11Controller.text=orderNoEntity.value.damagedcountlist![0].s11.toString();
            DC12Controller.text=orderNoEntity.value.damagedcountlist![0].s12.toString();
            DC13Controller.text=orderNoEntity.value.damagedcountlist![0].s13.toString();

          }

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
         CustomSnackbar().InfoSnackBar('Add Upper Count', responseEntity.value.response.toString());
       }
     else{
       CustomSnackbar().InfoSnackBar('Add Upper Count', responseEntity.value.response.toString());

     }
    }
  }
  editUpperCount(List<Map<String,dynamic>> rcList,List<Map<String,dynamic>> dcList,String comment)async{
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
      responseEntity.value=(await UpperCountStatus0UPMServie().editUpperCount(orderno, comapnyPlanno.value, upperOrderId.value, companyid.value, dateofcounting.value, comment, planNo.value, rcList, dcList, staffList,countId.value.toString(),rcId.value.toString(),dcId.value.toString()))!;
      Get.back();
      if(responseEntity.value.response=='Updated successfully')
      {
        Get.back();
        CustomSnackbar().InfoSnackBar('Add Upper Count', responseEntity.value.response.toString());
      }
      else{
        CustomSnackbar().InfoSnackBar('Add Upper Count', responseEntity.value.response.toString());

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