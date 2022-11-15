import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:stecon_godown_storekeepe_uppermanager/StoreKeeper/IssuedMaterialSkFn/Model/response_entity.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperReturnCount/Repository/UpperReturnService.dart';

import '../../../CustomFont/BoldText.dart';
import '../../../CustomWidget/CustomBox1.dart';
import '../../../CustomWidget/CustomSnackBar.dart';
import '../../../Utils/InternetConnectivity.dart';
import '../../UpperPurchaseCount/Model/get_staff_entity.dart';
import '../../UpperPurchasePlan/Model/get_comapany_entity.dart';
import '../../UpperPurchasePlan/Repository/AddProductionPlanUMPService.dart';
import '../Model/get_mr_no_entity.dart';
import '../Model/get_upper_count_entity.dart';
import '../Model/get_upper_order_entity.dart';
import '../Model/get_upper_plan_entity.dart';

class AddUpperReturnCountController extends GetxController{
  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  RxList<String> companyList =(List<String>.of([])).obs;
  Rx<GetComapanyEntity>companyEntity=GetComapanyEntity().obs;
  RxString comapanySelected=''.obs;
  RxString companyIdSelected=''.obs;
  Rx<GetStaffEntity> staffEnebtity = GetStaffEntity().obs;
  RxList<String> dynamicChips = (List<String>.of([])).obs;
  RxList<String> filters = (List<String>.of([])).obs;
  Rx<ResponseEntity>responseEntity=ResponseEntity().obs;
  Rx<GetUpperOrderEntity>orderEntity=GetUpperOrderEntity().obs;
  RxList<String> orderList =(List<String>.of([])).obs;
  RxString orderSelected=''.obs;
  RxString orderIdSelected=''.obs;
  Rx<GetUpperPlanEntity>planEntity=GetUpperPlanEntity().obs;
  RxList<String> planList =(List<String>.of([])).obs;
  RxString planSelected=''.obs;
  RxString planIdSelected=''.obs;
  Rx<GetMrNoEntity>mrEntity=GetMrNoEntity().obs;
  RxList<String> mrList =(List<String>.of([])).obs;
  RxString mrSelected=''.obs;
  RxString mrIdSelected=''.obs;
  Rx<GetUpperCountEntity>countEntity=GetUpperCountEntity().obs;
  RxList<Widget> sizeListListView = (List<Widget>.of([])).obs;
  RxList<String> typeList =['Shortage','Damage','No Pair'].obs;
  RxString typeSelected=''.obs;
  RxString artno=''.obs;
  RxString companyplanno=''.obs;

  typeTye(String value){
    typeSelected.value=value;
  }





  checkNetworkStatus() async {
    try {
      networkStatus.value =
      (await NetworkConnectivity().checkConnectivityState())!;
      print(networkStatus.value);
    } catch (e) {
      print(e);
    }
  }


  RxString rc1 = ''.obs;
  RxString rc2 = ''.obs;
  RxString rc3 = ''.obs;
  RxString rc4 = ''.obs;
  RxString rc5 = ''.obs;
  RxString rc6 = ''.obs;
  RxString rc7 = ''.obs;
  RxString rc8 = ''.obs;
  RxString rc9 = ''.obs;
  RxString rc10 = ''.obs;
  RxString rc11 = ''.obs;
  RxString rc12 = ''.obs;
  RxString rc13 = ''.obs;

  RxString dc1 = ''.obs;
  RxString dc2 = ''.obs;
  RxString dc3 = ''.obs;
  RxString dc4 = ''.obs;
  RxString dc5 = ''.obs;
  RxString dc6 = ''.obs;
  RxString dc7 = ''.obs;
  RxString dc8 = ''.obs;
  RxString dc9 = ''.obs;
  RxString dc10 = ''.obs;
  RxString dc11 = ''.obs;
  RxString dc12 = ''.obs;
  RxString dc13 = ''.obs;

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

  final artnoController = TextEditingController();
  final planNoController = TextEditingController();

  RxBool enable1 = true.obs;
  RxBool enable2 = true.obs;
  RxBool enable3 = true.obs;
  RxBool enable4 = true.obs;
  RxBool enable5 = true.obs;
  RxBool enable6 = true.obs;
  RxBool enable7 = true.obs;
  RxBool enable8 = true.obs;
  RxBool enable9 = true.obs;
  RxBool enable10 = true.obs;
  RxBool enable11 = true.obs;
  RxBool enable12 = true.obs;
  RxBool enable13 = true.obs;


  sizeRow1() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                  height: 6.h,
                  width: double.infinity,
                  child: Center(
                    child: BoldText(
                      text: '1',
                    ),
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                  height: 6.h,
                  width: double.infinity,
                  child: Center(
                    child: BoldText(
                      text: rc1.value.toString(),
                    ),
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                  height: 6.h,
                  width: double.infinity,
                  child: Center(
                    child: BoldText(
                      text: dc1.value.toString(),
                    ),
                  ),
                )),
            Expanded(
                flex: 1,
                child: CustomBox1(
                  controller: DC1Controller,
                  label: 'Enter ',
                  Enabled: enable1.value,
                ))
          ],
        ),
        Divider(
          height: 5,
        ),
      ],
    );
  }
  sizeRow2(){
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                  height: 6.h,
                  width: double.infinity,
                  child: Center(
                    child: BoldText(
                      text: '2',
                    ),
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                  height: 6.h,
                  width: double.infinity,
                  child: Center(
                    child: BoldText(
                      text: rc2.value.toString(),
                    ),
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                  height: 6.h,
                  width: double.infinity,
                  child: Center(
                    child: BoldText(
                      text: dc2.value.toString(),
                    ),
                  ),
                )),
            Expanded(
                flex: 1,
                child: CustomBox1(
                  controller: DC2Controller,
                  label: 'Enter',
                  Enabled: enable2.value,
                ))
          ],
        ),
        Divider(
          height: 5,
        ),
      ],
    );
  }

  sizeRow3(){
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                  height: 6.h,
                  width: double.infinity,
                  child: Center(
                    child: BoldText(
                      text: '3',
                    ),
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                  height: 6.h,
                  width: double.infinity,
                  child: Center(
                    child: BoldText(
                      text: rc3.value.toString(),
                    ),
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                  height: 6.h,
                  width: double.infinity,
                  child: Center(
                    child: BoldText(
                      text: dc3.value.toString(),
                    ),
                  ),
                )),
            Expanded(
                flex: 1,
                child: CustomBox1(
                  controller: DC3Controller,
                  label: 'Enter',
                  Enabled: enable3.value,
                ))
          ],
        ),
        Divider(
          height: 5,
        ),
      ],
    );
  }

  sizeRow4(){
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                  height: 6.h,
                  width: double.infinity,
                  child: Center(
                    child: BoldText(
                      text: '4',
                    ),
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                  height: 6.h,
                  width: double.infinity,
                  child: Center(
                    child: BoldText(
                      text:rc4.value.toString(),
                    ),
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                  height: 6.h,
                  width: double.infinity,
                  child: Center(
                    child: BoldText(
                      text:dc4.value.toString(),
                    ),
                  ),
                )),
            Expanded(
                flex: 1,
                child: CustomBox1(
                  controller: DC4Controller,
                  label: 'Enter',
                  Enabled: enable4.value,
                ))
          ],
        ),
        Divider(
          height: 5,
        ),
      ],
    );
  }

  sizeRow5(){
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                  height: 6.h,
                  width: double.infinity,
                  child: Center(
                    child: BoldText(
                      text: '5',
                    ),
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                  height: 6.h,
                  width: double.infinity,
                  child: Center(
                    child: BoldText(
                      text: rc5.value.toString(),
                    ),
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                  height: 6.h,
                  width: double.infinity,
                  child: Center(
                    child: BoldText(
                      text: dc5.value.toString(),
                    ),
                  ),
                )),
            Expanded(
                flex: 1,
                child: CustomBox1(
                  controller: DC5Controller,
                  label: 'Enter',
                  Enabled: enable5.value,
                ))
          ],
        ),
        Divider(
          height: 5,
        ),
      ],
    );
  }
  sizeRow6(){
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                  height: 6.h,
                  width: double.infinity,
                  child: Center(
                    child: BoldText(
                      text: '6',
                    ),
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                  height: 6.h,
                  width: double.infinity,
                  child: Center(
                    child: BoldText(
                      text: rc6.value.toString(),
                    ),
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                  height: 6.h,
                  width: double.infinity,
                  child: Center(
                    child: BoldText(
                      text: dc6.value.toString(),
                    ),
                  ),
                )),
            Expanded(
                flex: 1,
                child: CustomBox1(
                  controller: DC6Controller,
                  label: 'Enter',
                  Enabled: enable6.value,
                ))
          ],
        ),
        Divider(
          height: 5,
        ),
      ],
    );
  }

  sizeRow7(){
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                  height: 6.h,
                  width: double.infinity,
                  child: Center(
                    child: BoldText(
                      text: '7',
                    ),
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                  height: 6.h,
                  width: double.infinity,
                  child: Center(
                    child: BoldText(
                      text:rc7.value.toString(),
                    ),
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                  height: 6.h,
                  width: double.infinity,
                  child: Center(
                    child: BoldText(
                      text:dc7.value.toString(),
                    ),
                  ),
                )),
            Expanded(
                flex: 1,
                child: CustomBox1(
                  controller: DC7Controller,
                  label: 'Enter',
                  Enabled: enable7.value,
                ))
          ],
        ),
        Divider(
          height: 5,
        ),
      ],
    );
  }

  sizeRow8(){
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                  height: 6.h,
                  width: double.infinity,
                  child: Center(
                    child: BoldText(
                      text: '8',
                    ),
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                  height: 6.h,
                  width: double.infinity,
                  child: Center(
                    child: BoldText(
                      text: rc8.value.toString(),
                    ),
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                  height: 6.h,
                  width: double.infinity,
                  child: Center(
                    child: BoldText(
                      text: dc8.value.toString(),
                    ),
                  ),
                )),
            Expanded(
                flex: 1,
                child: CustomBox1(
                  controller: DC8Controller,
                  label: 'Enter',
                  Enabled: enable8.value,
                ))
          ],
        ),
        Divider(
          height: 5,
        ),
      ],
    );
  }
  sizeRow9(){
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                  height: 6.h,
                  width: double.infinity,
                  child: Center(
                    child: BoldText(
                      text: '9',
                    ),
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                  height: 6.h,
                  width: double.infinity,
                  child: Center(
                    child: BoldText(
                      text: rc9.value.toString(),
                    ),
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                  height: 6.h,
                  width: double.infinity,
                  child: Center(
                    child: BoldText(
                      text: dc9.value.toString(),
                    ),
                  ),
                )),
            Expanded(
                flex: 1,
                child: CustomBox1(
                  controller: DC9Controller,
                  label: 'Enter',
                  Enabled: enable9.value,
                ))
          ],
        ),
        Divider(
          height: 5,
        ),
      ],
    );
  }

  sizeRow10(){
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                  height: 6.h,
                  width: double.infinity,
                  child: Center(
                    child: BoldText(
                      text: '10',
                    ),
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                  height: 6.h,
                  width: double.infinity,
                  child: Center(
                    child: BoldText(
                      text: rc10.value.toString(),
                    ),
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                  height: 6.h,
                  width: double.infinity,
                  child: Center(
                    child: BoldText(
                      text: dc10.value.toString(),
                    ),
                  ),
                )),
            Expanded(
                flex: 1,
                child: CustomBox1(
                  controller: DC10Controller,
                  label: 'Enter',
                  Enabled: enable10.value,
                ))
          ],
        ),
        Divider(
          height: 5,
        ),
      ],
    );
  }
  sizeRow11(){
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                  height: 6.h,
                  width: double.infinity,
                  child: Center(
                    child: BoldText(
                      text: '11',
                    ),
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                  height: 6.h,
                  width: double.infinity,
                  child: Center(
                    child: BoldText(
                      text: rc11.value.toString(),
                    ),
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                  height: 6.h,
                  width: double.infinity,
                  child: Center(
                    child: BoldText(
                      text: dc11.value.toString(),
                    ),
                  ),
                )),
            Expanded(
                flex: 1,
                child: CustomBox1(
                  controller: DC11Controller,
                  label: 'Enter',
                  Enabled: enable11.value,
                ))
          ],
        ),
        Divider(
          height: 5,
        ),
      ],
    );
  }

  sizeRow12(){
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                  height: 6.h,
                  width: double.infinity,
                  child: Center(
                    child: BoldText(
                      text: '12',
                    ),
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                  height: 6.h,
                  width: double.infinity,
                  child: Center(
                    child: BoldText(
                      text: rc12.value.toString(),
                    ),
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                  height: 6.h,
                  width: double.infinity,
                  child: Center(
                    child: BoldText(
                      text: dc12.value.toString(),
                    ),
                  ),
                )),
            Expanded(
                flex: 1,
                child: CustomBox1(
                  controller: DC12Controller,
                  label: 'Enter',
                  Enabled: enable12.value,
                ))
          ],
        ),
        Divider(
          height: 5,
        ),
      ],
    );
  }

  sizeRow13(){
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                  height: 6.h,
                  width: double.infinity,
                  child: Center(
                    child: BoldText(
                      text: '13',
                    ),
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                  height: 6.h,
                  width: double.infinity,
                  child: Center(
                    child: BoldText(
                      text: rc13.value.toString(),
                    ),
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                  height: 6.h,
                  width: double.infinity,
                  child: Center(
                    child: BoldText(
                      text: dc13.value.toString(),
                    ),
                  ),
                )),
            Expanded(
                flex: 1,
                child: CustomBox1(
                  controller: DC13Controller,
                  label: 'Enter',
                  Enabled: enable13.value,
                ))
          ],
        ),
        Divider(
          height: 5,
        ),
      ],
    );
  }



  getCompnay()async{
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true){
      CustomSnackbar().LoadingBottomSheet();
      companyEntity.value=(await AddProductionPlanUPMSevice().getCompany())!;
      Get.back();
      if(companyEntity.value.response=='Success'){
        if(companyEntity.value.upperproductionmanagerlist!.length!=0){
          for(int i=0;i<companyEntity.value.upperproductionmanagerlist!.length;i++){
            companyList.add(companyEntity.value.upperproductionmanagerlist![i].name.toString());
          }
        }
      }
    }
  }
  compnayType(String value){
    comapanySelected.value=value;
    for(int i=0;i<companyEntity.value.upperproductionmanagerlist!.length;i++){
      if(comapanySelected.value.toString()==companyEntity.value.upperproductionmanagerlist![i].name.toString()){
        companyIdSelected.value=companyEntity.value.upperproductionmanagerlist![i].id.toString();
        // getUpperPlanNo(companyIdSelected.value.toString());
        getOrderNo(companyIdSelected.value.toString());
      }
    }
  }
  getOrderNo(String supplierId)async{
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true){
      CustomSnackbar().LoadingBottomSheet();
      orderEntity.value=(await UpperReturnService().getOrderno(supplierId))!;
      Get.back();
      if(orderEntity.value!=null){
        if (orderEntity.value.response=='Success') {
          orderList.value.clear();
          orderSelected.value='';
          orderIdSelected.value='';
          planList.value.clear();
          planSelected.value='';
          planIdSelected.value='';
          mrList.value.clear();
          mrSelected.value='';
          mrIdSelected.value='';
          if(orderEntity.value.upperordernolist!.length
          !=0){
            for(int i=0;i<orderEntity.value.upperordernolist!.length;i++){
              orderList.add(orderEntity.value.upperordernolist![i].orderno.toString());
            }
          }
        }  
      }
    }
  }
  orderType(String value){
    orderSelected.value=value;
    for(int i=0;i<orderEntity.value.upperordernolist!.length;i++){
      if(orderSelected.value.toString()==orderEntity.value.upperordernolist![i].orderno.toString()){
        orderIdSelected.value=orderEntity.value.upperordernolist![i].id.toString();
        // getUpperPlanNo(companyIdSelected.value.toString());
        getPlanNo( companyIdSelected.value, orderSelected.value, orderIdSelected.value);
      }
    }
  }

  getPlanNo(String supplierId,String orderno,String orderId)async{
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true){
      CustomSnackbar().LoadingBottomSheet();
      planEntity.value=(await UpperReturnService().getplan(supplierId,orderno,orderId))!;
      Get.back();
      if(planEntity.value!=null){
        if (planEntity.value.response=='Success') {
          planList.value.clear();
          planSelected.value='';
          planIdSelected.value='';
          if(planEntity.value.plannolist!.length
              !=0){
            for(int i=0;i<planEntity.value.plannolist!.length;i++){
              planList.add(planEntity.value.plannolist![i].planno.toString());
            }
          }
        }
      }
    }
  }

  planType(String value){
    planSelected.value=value;
    for(int i=0;i<planEntity.value.plannolist!.length;i++){
      if(planSelected.value.toString()==planEntity.value.plannolist![i].planno.toString()){
        planIdSelected.value=planEntity.value.plannolist![i].id.toString();
        // getUpperPlanNo(companyIdSelected.value.toString());
        getMrNo(companyIdSelected.value, orderSelected.value, orderIdSelected.value, planSelected.value);
      }
    }
  }

  getMrNo(String supplierId,String orderno,String orderId,String planNo)async{
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true){
      CustomSnackbar().LoadingBottomSheet();
      mrEntity.value=(await UpperReturnService().getMrNo(supplierId,orderno,orderId,planNo))!;
      Get.back();
      if(mrEntity.value!=null){
        if (mrEntity.value.response=='Success') {
          mrList.value.clear();
          mrSelected.value='';
          mrIdSelected.value='';
          if(mrEntity.value.mrnolist!.length
              !=0){
            for(int i=0;i<mrEntity.value.mrnolist!.length;i++){
              mrList.add(mrEntity.value.mrnolist![i].mrno.toString());
            }
          }
        }
      }
    }
  }
  mrType(String value){
    mrSelected.value=value;
    for(int i=0;i<mrEntity.value.mrnolist!.length;i++){
      if(mrSelected.value.toString()==mrEntity.value.mrnolist![i].mrno.toString()){
        mrIdSelected.value=mrEntity.value.mrnolist![i].countid.toString();
        // getUpperPlanNo(companyIdSelected.value.toString());
        getUpperCount(companyIdSelected.value, orderSelected.value, orderIdSelected.value, planSelected.value, mrIdSelected.value);
      }
    }
  }
  getUpperCount(String supplierId,String orderno,String orderId,String planNo,String counId)async{
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true){
      CustomSnackbar().LoadingBottomSheet();
      countEntity.value=(await UpperReturnService().getUpperCount(supplierId,orderno,orderId,planNo,counId))!;
      Get.back();
      if(countEntity.value!=null){
        if(countEntity.value.response=='Success'){
          // DC1Controller.clear();
          // DC2Controller.clear();
          // DC3Controller.clear();
          // DC4Controller.clear();
          // DC5Controller.clear();
          // DC6Controller.clear();
          // DC7Controller.clear();
          // DC8Controller.clear();
          // DC9Controller.clear();
          // DC10Controller.clear();
          // DC11Controller.clear();
          // DC12Controller.clear();
          // DC13Controller.clear();
          // sizeListListView.clear();

          if(countEntity.value.receivedcountlist!.length!=0){
            rc1.value=countEntity.value.receivedcountlist![0].s1.toString();
            rc2.value=countEntity.value.receivedcountlist![0].s2.toString();
            rc3.value=countEntity.value.receivedcountlist![0].s3.toString();
            rc4.value=countEntity.value.receivedcountlist![0].s4.toString();
            rc5.value=countEntity.value.receivedcountlist![0].s5.toString();
            rc6.value=countEntity.value.receivedcountlist![0].s6.toString();
            rc7.value=countEntity.value.receivedcountlist![0].s7.toString();
            rc8.value=countEntity.value.receivedcountlist![0].s8.toString();
            rc9.value=countEntity.value.receivedcountlist![0].s9.toString();
            rc10.value=countEntity.value.receivedcountlist![0].s10.toString();
            rc11.value=countEntity.value.receivedcountlist![0].s11.toString();
            rc12.value=countEntity.value.receivedcountlist![0].s12.toString();
            rc13.value=countEntity.value.receivedcountlist![0].s13.toString();
            planNoController.text=countEntity.value.ordercountlist![0].companyplanno.toString();
            companyplanno.value=countEntity.value.ordercountlist![0].companyplanno.toString();

          }
          if(countEntity.value.ordercountlist!.length!=0){
            dc1.value=countEntity.value.ordercountlist![0].s1.toString();
            dc2.value=countEntity.value.ordercountlist![0].s2.toString();
            dc3.value=countEntity.value.ordercountlist![0].s3.toString();
            dc4.value=countEntity.value.ordercountlist![0].s4.toString();
            dc5.value=countEntity.value.ordercountlist![0].s5.toString();
            dc6.value=countEntity.value.ordercountlist![0].s6.toString();
            dc7.value=countEntity.value.ordercountlist![0].s7.toString();
            dc8.value=countEntity.value.ordercountlist![0].s8.toString();
            dc9.value=countEntity.value.ordercountlist![0].s9.toString();
            dc10.value=countEntity.value.ordercountlist![0].s10.toString();
            dc11.value=countEntity.value.ordercountlist![0].s11.toString();
            dc12.value=countEntity.value.ordercountlist![0].s12.toString();
            dc13.value=countEntity.value.ordercountlist![0].s13.toString();
            artnoController.text=countEntity.value.ordercountlist![0].artnoname.toString();
            artno.value=countEntity.value.ordercountlist![0].artno.toString();


          }
          // if(countEntity.value.ordercountlist![0].s1.toString().length!=0 ||
          //     countEntity.value.ordercountlist![0].s1.toString().length!=0){
          //   sizeListListView.add(sizeRow1());
          // }
          // if(countEntity.value.ordercountlist![0].s2.toString().length!=0 ||
          //     countEntity.value.ordercountlist![0].s2.toString().length!=0){
          //   sizeListListView.add(sizeRow2());
          // }
          // if(countEntity.value.ordercountlist![0].s3.toString().length!=0 ||
          //     countEntity.value.ordercountlist![0].s3.toString().length!=0){
          //   sizeListListView.add(sizeRow3());
          // }
          // if(countEntity.value.ordercountlist![0].s4.toString().length!=0 ||
          //     countEntity.value.ordercountlist![0].s4.toString().length!=0){
          //   sizeListListView.add(sizeRow4());
          // }
          // if(countEntity.value.ordercountlist![0].s5.toString().length!=0 ||
          //     countEntity.value.ordercountlist![0].s5.toString().length!=0){
          //   sizeListListView.add(sizeRow5());
          // }
          // if(countEntity.value.ordercountlist![0].s6.toString().length!=0 ||
          //     countEntity.value.ordercountlist![0].s6.toString().length!=0){
          //   sizeListListView.add(sizeRow6());
          // }
          // if(countEntity.value.ordercountlist![0].s7.toString().length!=0 ||
          //     countEntity.value.ordercountlist![0].s7.toString().length!=0){
          //   sizeListListView.add(sizeRow7());
          // }
          // if(countEntity.value.ordercountlist![0].s8.toString().length!=0 ||
          //     countEntity.value.ordercountlist![0].s8.toString().length!=0){
          //   sizeListListView.add(sizeRow8());
          // }
          // if(countEntity.value.ordercountlist![0].s9.toString().length!=0 ||
          //     countEntity.value.ordercountlist![0].s9.toString().length!=0){
          //   sizeListListView.add(sizeRow9());
          // }
          // if(countEntity.value.ordercountlist![0].s10.toString().length!=0 ||
          //     countEntity.value.ordercountlist![0].s10.toString().length!=0){
          //   sizeListListView.add(sizeRow10());
          // }
          // if(countEntity.value.ordercountlist![0].s11.toString().length!=0 ||
          //     countEntity.value.ordercountlist![0].s11.toString().length!=0){
          //   sizeListListView.add(sizeRow11());
          // }
          // if(countEntity.value.ordercountlist![0].s12.toString().length!=0 ||
          //     countEntity.value.ordercountlist![0].s12.toString().length!=0){
          //   sizeListListView.add(sizeRow12());
          // }
          // if(countEntity.value.ordercountlist![0].s13.toString().length!=0 ||
          //     countEntity.value.ordercountlist![0].s13.toString().length!=0){
          //   sizeListListView.add(sizeRow13());
          // }
          for(int i=0;i<countEntity.value.sizelist!.length;i++){
            if(countEntity.value.sizelist![i].toString()=='1'){
             sizeListListView.add(sizeRow1()) ;
            }
            if(countEntity.value.sizelist![i].toString()=='2'){
              sizeListListView.add(sizeRow2()) ;
            }
            if(countEntity.value.sizelist![i].toString()=='3'){
              sizeListListView.add(sizeRow3()) ;
            }
            if(countEntity.value.sizelist![i].toString()=='4'){
              sizeListListView.add(sizeRow4()) ;
            }
            if(countEntity.value.sizelist![i].toString()=='5'){
              sizeListListView.add(sizeRow5()) ;
            }
            if(countEntity.value.sizelist![i].toString()=='6'){
              sizeListListView.add(sizeRow6()) ;
            }
            if(countEntity.value.sizelist![i].toString()=='7'){
              sizeListListView.add(sizeRow7()) ;
            }
            if(countEntity.value.sizelist![i].toString()=='8'){
              sizeListListView.add(sizeRow8()) ;
            }
            if(countEntity.value.sizelist![i].toString()=='9'){
              sizeListListView.add(sizeRow9()) ;
            }
            if(countEntity.value.sizelist![i].toString()=='10'){
              sizeListListView.add(sizeRow10()) ;
            }
            if(countEntity.value.sizelist![i].toString()=='11'){
              sizeListListView.add(sizeRow11()) ;
            }
            if(countEntity.value.sizelist![i].toString()=='12'){
              sizeListListView.add(sizeRow12()) ;
            }
            if(countEntity.value.sizelist![i].toString()=='13'){
              sizeListListView.add(sizeRow13()) ;
            }

          }


        }
      }
      // if(mrEntity.value!=null){
      //   if (mrEntity.value.response=='Success') {
      //     mrList.value.clear();
      //     mrSelected.value='';
      //     mrIdSelected.value='';
      //     if(mrEntity.value.mrnolist!.length
      //         !=0){
      //       for(int i=0;i<mrEntity.value.mrnolist!.length;i++){
      //         mrList.add(mrEntity.value.mrnolist![i].mrno.toString());
      //       }
      //     }
      //   }
      // }
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
    }
  }
  addCount()async{
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true){
      List<Map<String,dynamic>>rcCountList=[];
      Map<String,dynamic>rcCountJson={
        "s1":DC1Controller.text.toString(),
        "s2":DC2Controller.text.toString(),
        "s3":DC3Controller.text.toString(),
        "s4":DC4Controller.text.toString(),
        "s5":DC5Controller.text.toString(),
        "s6":DC6Controller.text.toString(),
        "s7":DC7Controller.text.toString(),
        "s8":DC8Controller.text.toString(),
        "s9":DC9Controller.text.toString(),
        "s10":DC10Controller.text.toString(),
        "s11":DC11Controller.text.toString(),
        "s12":DC12Controller.text.toString(),
        "s13":DC13Controller.text.toString(),
      };
      rcCountList.add(rcCountJson);
      List<Map<String, dynamic>> staffList = [];
      for (int i = 0; i < staffEnebtity.value.stafflist!.length; i++) {
        for (int j = 0; j < filters.length; j++) {
          if (staffEnebtity.value.stafflist![i].name.toString() == filters[j]) {
            Map<String, dynamic> json = {
              "staffid": staffEnebtity.value.stafflist![i].id.toString()
            };
            staffList.add(json);
          }
        }
      }
      CustomSnackbar().LoadingBottomSheet();
      responseEntity.value=(await UpperReturnService().addCount(
          companyIdSelected.value, orderSelected.value, orderIdSelected.value, planSelected.value, mrIdSelected.value, artno.value, mrSelected.value, companyplanno.value, typeSelected.value, staffList, rcCountList))!;
      Get.back();
      if(responseEntity.value.response=='Added successfully'){
        Get.back();
        CustomSnackbar().InfoSnackBar('Upper Return Count', responseEntity.value.response.toString());
      }
      else {
        CustomSnackbar().InfoSnackBar('Upper Return Count', responseEntity.value.response.toString());

      }

    }
  }
  @override
  void onInit() {
    // TODO: implement onInit
    checkNetworkStatus();
    getCompnay();
    getUpperStaf();
    super.onInit();
  }
}