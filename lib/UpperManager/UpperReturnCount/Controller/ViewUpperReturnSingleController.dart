import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperReturnCount/Repository/UpperReturnService.dart';

import '../../../CustomFont/BoldText.dart';
import '../../../CustomWidget/CustomBox1.dart';
import '../../../CustomWidget/CustomSnackBar.dart';
import '../../../Utils/InternetConnectivity.dart';
import '../Model/get_upper_count_entity.dart';
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

  RxList<String> dynamicChips = (List<String>.of([])).obs;
  RxList<String> filters = (List<String>.of([])).obs;

  Rx<GetUpperCountEntity>countEntity=GetUpperCountEntity().obs;
  RxList<Widget> sizeListListView = (List<Widget>.of([])).obs;

  RxString artno=''.obs;
  RxString companyplanno=''.obs;
  RxString type=''.obs;
  RxString planNo=''.obs;
  RxString countId=''.obs;


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
      if(orderNoEntity.value!=null){
        if(orderNoEntity.value.response=='Success'){
          dynamicChips.clear();
          sizeListListView.clear();
          if(orderNoEntity.value.upperreturncountstafflist!.length!=0){
            for(int i=0;i<orderNoEntity.value.upperreturncountstafflist!.length;i++){
              dynamicChips.add(orderNoEntity.value.upperreturncountstafflist![i].staffname.toString());
            }
          }
          if(orderNoEntity.value.upperreturnlist!.length!=0){
            type.value=orderNoEntity.value.upperreturnlist![0].type.toString();
            countId.value=orderNoEntity.value.upperreturnlist![0].countid.toString();
            planNo.value=orderNoEntity.value.upperreturnlist![0].planno.toString();


          }
          if(orderNoEntity.value.upperreturncountlist!.length!=0){
            DC1Controller.text=orderNoEntity.value.upperreturncountlist![0].s1.toString();
            DC2Controller.text=orderNoEntity.value.upperreturncountlist![0].s2.toString();
            DC3Controller.text=orderNoEntity.value.upperreturncountlist![0].s3.toString();
            DC4Controller.text=orderNoEntity.value.upperreturncountlist![0].s4.toString();
            DC5Controller.text=orderNoEntity.value.upperreturncountlist![0].s5.toString();
            DC6Controller.text=orderNoEntity.value.upperreturncountlist![0].s6.toString();
            DC7Controller.text=orderNoEntity.value.upperreturncountlist![0].s7.toString();
            DC8Controller.text=orderNoEntity.value.upperreturncountlist![0].s8.toString();
            DC9Controller.text=orderNoEntity.value.upperreturncountlist![0].s9.toString();
            DC10Controller.text=orderNoEntity.value.upperreturncountlist![0].s10.toString();
            DC11Controller.text=orderNoEntity.value.upperreturncountlist![0].s11.toString();
            DC12Controller.text=orderNoEntity.value.upperreturncountlist![0].s12.toString();
            DC13Controller.text=orderNoEntity.value.upperreturncountlist![0].s13.toString();

          }
          getUpperCount(supplierId, orderNo, orderId, planNo.value, countId.value);
        }
      }

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

  getUpperCount(String supplierId,String orderno,String orderId,String planNo,String counId)async {
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true) {
      // CustomSnackbar().LoadingBottomSheet();
      countEntity.value = (await UpperReturnService().getUpperCount(
          supplierId, orderno, orderId, planNo, counId))!;
      // Get.back();
      if (countEntity.value != null) {
        if (countEntity.value.response == 'Success') {
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


          if (countEntity.value.receivedcountlist!.length != 0) {
            rc1.value = countEntity.value.receivedcountlist![0].s1.toString();
            rc2.value = countEntity.value.receivedcountlist![0].s2.toString();
            rc3.value = countEntity.value.receivedcountlist![0].s3.toString();
            rc4.value = countEntity.value.receivedcountlist![0].s4.toString();
            rc5.value = countEntity.value.receivedcountlist![0].s5.toString();
            rc6.value = countEntity.value.receivedcountlist![0].s6.toString();
            rc7.value = countEntity.value.receivedcountlist![0].s7.toString();
            rc8.value = countEntity.value.receivedcountlist![0].s8.toString();
            rc9.value = countEntity.value.receivedcountlist![0].s9.toString();
            rc10.value = countEntity.value.receivedcountlist![0].s10.toString();
            rc11.value = countEntity.value.receivedcountlist![0].s11.toString();
            rc12.value = countEntity.value.receivedcountlist![0].s12.toString();
            rc13.value = countEntity.value.receivedcountlist![0].s13.toString();
            planNoController.text =
                countEntity.value.ordercountlist![0].companyplanno.toString();
            companyplanno.value =
                countEntity.value.ordercountlist![0].companyplanno.toString();
          }
          if (countEntity.value.ordercountlist!.length != 0) {
            dc1.value = countEntity.value.ordercountlist![0].s1.toString();
            dc2.value = countEntity.value.ordercountlist![0].s2.toString();
            dc3.value = countEntity.value.ordercountlist![0].s3.toString();
            dc4.value = countEntity.value.ordercountlist![0].s4.toString();
            dc5.value = countEntity.value.ordercountlist![0].s5.toString();
            dc6.value = countEntity.value.ordercountlist![0].s6.toString();
            dc7.value = countEntity.value.ordercountlist![0].s7.toString();
            dc8.value = countEntity.value.ordercountlist![0].s8.toString();
            dc9.value = countEntity.value.ordercountlist![0].s9.toString();
            dc10.value = countEntity.value.ordercountlist![0].s10.toString();
            dc11.value = countEntity.value.ordercountlist![0].s11.toString();
            dc12.value = countEntity.value.ordercountlist![0].s12.toString();
            dc13.value = countEntity.value.ordercountlist![0].s13.toString();
            artnoController.text =
                countEntity.value.ordercountlist![0].artnoname.toString();
            artno.value = countEntity.value.ordercountlist![0].artno.toString();
          }

          for (int i = 0; i < countEntity.value.sizelist!.length; i++) {
            if (countEntity.value.sizelist![i].toString() == '1') {
              sizeListListView.add(sizeRow1());
            }
            if (countEntity.value.sizelist![i].toString() == '2') {
              sizeListListView.add(sizeRow2());
            }
            if (countEntity.value.sizelist![i].toString() == '3') {
              sizeListListView.add(sizeRow3());
            }
            if (countEntity.value.sizelist![i].toString() == '4') {
              sizeListListView.add(sizeRow4());
            }
            if (countEntity.value.sizelist![i].toString() == '5') {
              sizeListListView.add(sizeRow5());
            }
            if (countEntity.value.sizelist![i].toString() == '6') {
              sizeListListView.add(sizeRow6());
            }
            if (countEntity.value.sizelist![i].toString() == '7') {
              sizeListListView.add(sizeRow7());
            }
            if (countEntity.value.sizelist![i].toString() == '8') {
              sizeListListView.add(sizeRow8());
            }
            if (countEntity.value.sizelist![i].toString() == '9') {
              sizeListListView.add(sizeRow9());
            }
            if (countEntity.value.sizelist![i].toString() == '10') {
              sizeListListView.add(sizeRow10());
            }
            if (countEntity.value.sizelist![i].toString() == '11') {
              sizeListListView.add(sizeRow11());
            }
            if (countEntity.value.sizelist![i].toString() == '12') {
              sizeListListView.add(sizeRow12());
            }
            if (countEntity.value.sizelist![i].toString() == '13') {
              sizeListListView.add(sizeRow13());
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
      getUpperOrder();

      super.onInit();
    }
  }
