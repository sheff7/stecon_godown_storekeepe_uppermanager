import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:stecon_godown_storekeepe_uppermanager/CustomWidget/CustomSnackBar.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperPurchasePlan/Model/response_entity_entity.dart';

import '../../../CustomFont/BoldText.dart';
import '../../../CustomWidget/CustomBox1.dart';
import '../../../Utils/InternetConnectivity.dart';
import '../Model/get_staff_entity.dart';
import '../Model/get_upper_plan_count_entity.dart';
import '../Repository/UpperCountStatus0UPMService.dart';
import 'UpperCountStatus1UPMController.dart';

class AddUpperCountStatus2UPMController extends GetxController {
  final String id;
  final String orderno;
  final String umpId;
  final String company;
  final String plan;
  final String upperOrder;
  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  RxString artnoName = ''.obs;
  RxString categoryName = ''.obs;
  RxString colorName = ''.obs;
  RxString dateofcounting = ''.obs;
  RxString comapnyPlanno = ''.obs;
  RxString upperOrderId = ''.obs;
  RxString companyid = ''.obs;
  RxString planNo = ''.obs;
  Rx<GetUpperPlanCountEntity> orderNoEntity = GetUpperPlanCountEntity().obs;
  RxList<String> dynamicChips = (List<String>.of([])).obs;
  RxList<String> filters = (List<String>.of([])).obs;
  RxString countId = ''.obs;
  RxString rcId = ''.obs;
  RxString dcId = ''.obs;
  RxString shortageId=''.obs;
  RxString balanceId=''.obs;

  RxString rcCountId = ''.obs;
  RxString comment = ''.obs;
  Rx<GetStaffEntity> staffEnebtity = GetStaffEntity().obs;
  Rx<ResponseEntityEntity> responseEntity = ResponseEntityEntity().obs;

  RxList<Widget> sizeListGrid = (List<Widget>.of([])).obs;
  RxList<Widget> sizeListListView = (List<Widget>.of([])).obs;

  RxString oc1 = ''.obs;
  RxString oc2 = ''.obs;
  RxString oc3 = ''.obs;
  RxString oc4 = ''.obs;
  RxString oc5 = ''.obs;
  RxString oc6 = ''.obs;
  RxString oc7 = ''.obs;
  RxString oc8 = ''.obs;
  RxString oc9 = ''.obs;
  RxString oc10 = ''.obs;
  RxString oc11 = ''.obs;
  RxString oc12 = ''.obs;
  RxString oc13 = ''.obs;

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

  final colorController = TextEditingController();
  final size1controller = TextEditingController();
  final size2controller = TextEditingController();
  final size3controller = TextEditingController();
  final size4controller = TextEditingController();
  final size5controller = TextEditingController();
  final size6controller = TextEditingController();
  final size7controller = TextEditingController();
  final size8controller = TextEditingController();
  final size9controller = TextEditingController();
  final size10controller = TextEditingController();
  final size11controller = TextEditingController();
  final size12controller = TextEditingController();
  final size13controller = TextEditingController();

  final shortage1controller = TextEditingController();
  final shortage2controller = TextEditingController();
  final shortage3controller = TextEditingController();
  final shortage4controller = TextEditingController();
  final shortage5controller = TextEditingController();
  final shortage6controller = TextEditingController();
  final shortage7controller = TextEditingController();
  final shortage8controller = TextEditingController();
  final shortage9controller = TextEditingController();
  final shortage10controller = TextEditingController();
  final shortage11controller = TextEditingController();
  final shortage12controller = TextEditingController();
  final shortage13controller = TextEditingController();

  final balance1controller = TextEditingController();
  final balance2controller = TextEditingController();
  final balance3controller = TextEditingController();
  final balance4controller = TextEditingController();
  final balance5controller = TextEditingController();
  final balance6controller = TextEditingController();
  final balance7controller = TextEditingController();
  final balance8controller = TextEditingController();
  final balance9controller = TextEditingController();
  final balance10controller = TextEditingController();
  final balance11controller = TextEditingController();
  final balance12controller = TextEditingController();
  final balance13controller = TextEditingController();

  size1() {
    return CustomBox1(
      controller: size1controller,
      label: "Size-1",
      Enabled: enableR1.value,
    );
  }

  size2() {
    return CustomBox1(
      controller: size2controller,
      label: "Size-2",
      Enabled: enableR2.value,
    );
  }

  size3() {
    return CustomBox1(
      controller: size3controller,
      label: "Size-3",
      Enabled: enableR3.value,
    );
  }

  size4() {
    return CustomBox1(
      controller: size4controller,
      label: "Size-4",
      Enabled: enableR4.value,
    );
  }

  size5() {
    return CustomBox1(
      controller: size5controller,
      label: "Size-5",
      Enabled: enableR5.value,
    );
  }

  size6() {
    return CustomBox1(
      controller: size6controller,
      label: "Size-6",
      Enabled: enableR6.value,
    );
  }

  size7() {
    return CustomBox1(
      controller: size7controller,
      label: "Size-7",
      Enabled: enableR7.value,
    );
  }

  size8() {
    return CustomBox1(
      controller: size8controller,
      label: "Size-8",
      Enabled: enableR8.value,
    );
  }

  size9() {
    return CustomBox1(
      controller: size9controller,
      label: "Size-9",
      Enabled: enableR9.value,
    );
  }

  size10() {
    return CustomBox1(
      controller: size10controller,
      label: "Size-10",
      Enabled: enableR10.value,
    );
  }

  size11() {
    return CustomBox1(
      controller: size11controller,
      label: "Size-11",
      Enabled: enableR11.value,
    );
  }

  size12() {
    return CustomBox1(
      controller: size12controller,
      label: "Size-12",
      Enabled: enableR12.value,
    );
  }

  size13() {
    return CustomBox1(
      controller: size13controller,
      label: "Size-13",
      Enabled: enableR13.value,
    );
  }

  Heading() {
    return Container(
      color: Colors.grey[200],
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              width: 12.h,
              margin: EdgeInsets.only(top: 2.h, bottom: 2.h, left: 1.h),
              alignment: Alignment.center,
              child: Text(
                'Size',
                style: GoogleFonts.radioCanada(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              width: 12.h,
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 2.h, bottom: 2.h, left: 1.h),
              child: Text(
                'OC',
                style: GoogleFonts.radioCanada(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              width: 12.h,
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 2.h, bottom: 2.h, left: 1.h),
              child: Text(
                'Count',
                style: GoogleFonts.radioCanada(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              width: 12.h,
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 2.h, bottom: 2.h, left: 1.h),
              child: Text(
                'Damaged',
                style: GoogleFonts.radioCanada(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              width: 12.h,
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 2.h, bottom: 2.h, left: 1.h),
              child: Text(
                'Shortage',
                style: GoogleFonts.radioCanada(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              width: 12.h,
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 2.h, bottom: 2.h,),
              child: Text(
                'Balance',
                style: GoogleFonts.radioCanada(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  sizeRow1() {
    return Container(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: 12.h,
                  margin: EdgeInsets.only(top: 2.h, bottom: 2.h,),
                  alignment: Alignment.center,
                  child: Container(
                    // margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                    height: 6.h,
                    width: double.infinity,
                    child: Center(
                      child: BoldText(
                        text: '1',
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 2.h, bottom: 2.h,),
                  child: Container(
                    // margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                    height: 6.h,
                    width: double.infinity,
                    child: Center(
                      child: BoldText(
                        text: oc1.value.toString(),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h, left: 1.h),
                  child: CustomBox1(
                    controller: RC1Controller,
                    label: 'Enter',
                    Enabled: enable1.value,
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h, left: 1.h),
                  child: CustomBox1(
                    controller: DC1Controller,
                    label: 'Enter',
                    Enabled: enable1.value,
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h),
                  child: CustomBox1(
                    controller: shortage1controller,
                    label: 'Enter',
                    Enabled: enable1.value,
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h),
                  child: CustomBox1(
                    controller: balance1controller,
                    label: 'Enter',
                    Enabled: enable1.value,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 5,
            color: Colors.black,
          ),
        ],
      ),
    );
  }

  sizeRow2() {
    return Container(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: 12.h,
                  margin: EdgeInsets.only(top: 2.h, bottom: 2.h,),
                  alignment: Alignment.center,
                  child: Container(
                    // margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                    height: 6.h,
                    width: double.infinity,
                    child: Center(
                      child: BoldText(
                        text: '2',
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 2.h, bottom: 2.h,),
                  child: Container(
                    // margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                    height: 6.h,
                    width: double.infinity,
                    child: Center(
                      child: BoldText(
                        text: oc2.value.toString(),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h, left: 1.h),
                  child: CustomBox1(
                    controller: RC2Controller,
                    label: 'Enter',
                    Enabled: enable2.value,
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h, left: 1.h),
                  child: CustomBox1(
                    controller: DC2Controller,
                    label: 'Enter',
                    Enabled: enable2.value,
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h),
                  child: CustomBox1(
                    controller: shortage2controller,
                    label: 'Enter',
                    Enabled: enable2.value,
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h),
                  child: CustomBox1(
                    controller: balance2controller,
                    label: 'Enter',
                    Enabled: enable2.value,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 5,
            color: Colors.black,
          ),
        ],
      ),
    );
  }




  sizeRow3() {
    return Container(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: 12.h,
                  margin: EdgeInsets.only(top: 2.h, bottom: 2.h,),
                  alignment: Alignment.center,
                  child: Container(
                    // margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                    height: 6.h,
                    width: double.infinity,
                    child: Center(
                      child: BoldText(
                        text: '3',
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 2.h, bottom: 2.h,),
                  child: Container(
                    // margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                    height: 6.h,
                    width: double.infinity,
                    child: Center(
                      child: BoldText(
                        text: oc3.value.toString(),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h, left: 1.h),
                  child: CustomBox1(
                    controller: RC3Controller,
                    label: 'Enter',
                    Enabled: enable3.value,
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h, left: 1.h),
                  child: CustomBox1(
                    controller: DC3Controller,
                    label: 'Enter',
                    Enabled: enable3.value,
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h),
                  child: CustomBox1(
                    controller: shortage3controller,
                    label: 'Enter',
                    Enabled: enable3.value,
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h),
                  child: CustomBox1(
                    controller: balance3controller,
                    label: 'Enter',
                    Enabled: enable3.value,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 5,
            color: Colors.black,
          ),
        ],
      ),
    );
  }



  sizeRow4() {
    return Container(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: 12.h,
                  margin: EdgeInsets.only(top: 2.h, bottom: 2.h,),
                  alignment: Alignment.center,
                  child: Container(
                    // margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                    height: 6.h,
                    width: double.infinity,
                    child: Center(
                      child: BoldText(
                        text: '4',
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 2.h, bottom: 2.h,),
                  child: Container(
                    // margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                    height: 6.h,
                    width: double.infinity,
                    child: Center(
                      child: BoldText(
                        text: oc4.value.toString(),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h, left: 1.h),
                  child: CustomBox1(
                    controller: RC4Controller,
                    label: 'Enter',
                    Enabled: enable4.value,
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h, left: 1.h),
                  child: CustomBox1(
                    controller: DC4Controller,
                    label: 'Enter',
                    Enabled: enable4.value,
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h),
                  child: CustomBox1(
                    controller: shortage4controller,
                    label: 'Enter',
                    Enabled: enable4.value,
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h),
                  child: CustomBox1(
                    controller: balance4controller,
                    label: 'Enter',
                    Enabled: enable4.value,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 5,
            color: Colors.black,
          ),
        ],
      ),
    );
  }

  sizeRow5() {
    return Container(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: 12.h,
                  margin: EdgeInsets.only(top: 2.h, bottom: 2.h,),
                  alignment: Alignment.center,
                  child: Container(
                    // margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                    height: 6.h,
                    width: double.infinity,
                    child: Center(
                      child: BoldText(
                        text: '5',
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 2.h, bottom: 2.h,),
                  child: Container(
                    // margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                    height: 6.h,
                    width: double.infinity,
                    child: Center(
                      child: BoldText(
                        text: oc5.value.toString(),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h, left: 1.h),
                  child: CustomBox1(
                    controller: RC5Controller,
                    label: 'Enter',
                    Enabled: enable5.value,
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h, left: 1.h),
                  child: CustomBox1(
                    controller: DC5Controller,
                    label: 'Enter',
                    Enabled: enable5.value,
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h),
                  child: CustomBox1(
                    controller: shortage5controller,
                    label: 'Enter',
                    Enabled: enable5.value,
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h),
                  child: CustomBox1(
                    controller: balance5controller,
                    label: 'Enter',
                    Enabled: enable5.value,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 5,
            color: Colors.black,
          ),
        ],
      ),
    );
  }


  // sizeRow4(){
  //   return Column(
  //     children: [
  //       Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //         children: [
  //           Expanded(
  //               flex: 1,
  //               child: Container(
  //                 margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
  //                 height: 6.h,
  //                 width: double.infinity,
  //                 child: Center(
  //                   child: BoldText(
  //                     text: '4',
  //                   ),
  //                 ),
  //               )),
  //           Expanded(
  //               flex: 1,
  //               child: Container(
  //                 margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
  //                 height: 6.h,
  //                 width: double.infinity,
  //                 child: Center(
  //                   child: BoldText(
  //                     text:oc4.value.toString(),
  //                   ),
  //                 ),
  //               )),
  //           Expanded(
  //               flex: 1,
  //               child: CustomBox1(
  //                 controller: RC4Controller,
  //                 label: 'Enter',
  //                 Enabled: enable4.value,
  //               )),
  //           Expanded(
  //               flex: 1,
  //               child: CustomBox1(
  //                 controller: DC4Controller,
  //                 label: 'Enter',
  //                 Enabled: enable4.value,
  //               ))
  //         ],
  //       ),
  //       Divider(
  //         height: 5,
  //       ),
  //     ],
  //   );
  // }

  // sizeRow5(){
  //   return Column(
  //     children: [
  //       Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //         children: [
  //           Expanded(
  //               flex: 1,
  //               child: Container(
  //                 margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
  //                 height: 6.h,
  //                 width: double.infinity,
  //                 child: Center(
  //                   child: BoldText(
  //                     text: '5',
  //                   ),
  //                 ),
  //               )),
  //           Expanded(
  //               flex: 1,
  //               child: Container(
  //                 margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
  //                 height: 6.h,
  //                 width: double.infinity,
  //                 child: Center(
  //                   child: BoldText(
  //                     text: oc5.value.toString(),
  //                   ),
  //                 ),
  //               )),
  //           Expanded(
  //               flex: 1,
  //               child: CustomBox1(
  //                 controller: RC5Controller,
  //                 label: 'Enter',
  //                 Enabled: enable5.value,
  //               )),
  //           Expanded(
  //               flex: 1,
  //               child: CustomBox1(
  //                 controller: DC5Controller,
  //                 label: 'Enter',
  //                 Enabled: enable5.value,
  //               ))
  //         ],
  //       ),
  //       Divider(
  //         height: 5,
  //       ),
  //     ],
  //   );
  // }
  // sizeRow6(){
  //   return Column(
  //     children: [
  //       Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //         children: [
  //           Expanded(
  //               flex: 1,
  //               child: Container(
  //                 margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
  //                 height: 6.h,
  //                 width: double.infinity,
  //                 child: Center(
  //                   child: BoldText(
  //                     text: '6',
  //                   ),
  //                 ),
  //               )),
  //           Expanded(
  //               flex: 1,
  //               child: Container(
  //                 margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
  //                 height: 6.h,
  //                 width: double.infinity,
  //                 child: Center(
  //                   child: BoldText(
  //                     text: oc6.value.toString(),
  //                   ),
  //                 ),
  //               )),
  //           Expanded(
  //               flex: 1,
  //               child: CustomBox1(
  //                 controller: RC6Controller,
  //                 label: 'Enter',
  //                 Enabled: enable6.value,
  //               )),
  //           Expanded(
  //               flex: 1,
  //               child: CustomBox1(
  //                 controller: DC6Controller,
  //                 label: 'Enter',
  //                 Enabled: enable6.value,
  //               ))
  //         ],
  //       ),
  //       Divider(
  //         height: 5,
  //       ),
  //     ],
  //   );
  // }

  sizeRow6() {
    return Container(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: 12.h,
                  margin: EdgeInsets.only(top: 2.h, bottom: 2.h,),
                  alignment: Alignment.center,
                  child: Container(
                    // margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                    height: 6.h,
                    width: double.infinity,
                    child: Center(
                      child: BoldText(
                        text: '6',
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 2.h, bottom: 2.h,),
                  child: Container(
                    // margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                    height: 6.h,
                    width: double.infinity,
                    child: Center(
                      child: BoldText(
                        text: oc6.value.toString(),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h, left: 1.h),
                  child: CustomBox1(
                    controller: RC6Controller,
                    label: 'Enter',
                    Enabled: enable6.value,
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h, left: 1.h),
                  child: CustomBox1(
                    controller: DC6Controller,
                    label: 'Enter',
                    Enabled: enable6.value,
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h),
                  child: CustomBox1(
                    controller: shortage6controller,
                    label: 'Enter',
                    Enabled: enable6.value,
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h),
                  child: CustomBox1(
                    controller: balance6controller,
                    label: 'Enter',
                    Enabled: enable6.value,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 5,
            color: Colors.black,
          ),
        ],
      ),
    );
  }

  sizeRow7() {
    return Container(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: 12.h,
                  margin: EdgeInsets.only(top: 2.h, bottom: 2.h,),
                  alignment: Alignment.center,
                  child: Container(
                    // margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                    height: 6.h,
                    width: double.infinity,
                    child: Center(
                      child: BoldText(
                        text: '7',
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 2.h, bottom: 2.h,),
                  child: Container(
                    // margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                    height: 6.h,
                    width: double.infinity,
                    child: Center(
                      child: BoldText(
                        text: oc7.value.toString(),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h, left: 1.h),
                  child: CustomBox1(
                    controller: RC7Controller,
                    label: 'Enter',
                    Enabled: enable7.value,
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h, left: 1.h),
                  child: CustomBox1(
                    controller: DC7Controller,
                    label: 'Enter',
                    Enabled: enable7.value,
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h),
                  child: CustomBox1(
                    controller: shortage7controller,
                    label: 'Enter',
                    Enabled: enable7.value,
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h),
                  child: CustomBox1(
                    controller: balance7controller,
                    label: 'Enter',
                    Enabled: enable7.value,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 5,
            color: Colors.black,
          ),
        ],
      ),
    );
  }

  // sizeRow7(){
  //   return Column(
  //     children: [
  //       Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //         children: [
  //           Expanded(
  //               flex: 1,
  //               child: Container(
  //                 margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
  //                 height: 6.h,
  //                 width: double.infinity,
  //                 child: Center(
  //                   child: BoldText(
  //                     text: '7',
  //                   ),
  //                 ),
  //               )),
  //           Expanded(
  //               flex: 1,
  //               child: Container(
  //                 margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
  //                 height: 6.h,
  //                 width: double.infinity,
  //                 child: Center(
  //                   child: BoldText(
  //                     text:oc7.value.toString(),
  //                   ),
  //                 ),
  //               )),
  //           Expanded(
  //               flex: 1,
  //               child: CustomBox1(
  //                 controller: RC7Controller,
  //                 label: 'Enter',
  //                 Enabled: enable7.value,
  //               )),
  //           Expanded(
  //               flex: 1,
  //               child: CustomBox1(
  //                 controller: DC7Controller,
  //                 label: 'Enter',
  //                 Enabled: enable7.value,
  //               ))
  //         ],
  //       ),
  //       Divider(
  //         height: 5,
  //       ),
  //     ],
  //   );
  // }

  sizeRow8() {
    return Container(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: 12.h,
                  margin: EdgeInsets.only(top: 2.h, bottom: 2.h,),
                  alignment: Alignment.center,
                  child: Container(
                    // margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                    height: 6.h,
                    width: double.infinity,
                    child: Center(
                      child: BoldText(
                        text: '8',
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 2.h, bottom: 2.h,),
                  child: Container(
                    // margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                    height: 6.h,
                    width: double.infinity,
                    child: Center(
                      child: BoldText(
                        text: oc8.value.toString(),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h, left: 1.h),
                  child: CustomBox1(
                    controller: RC8Controller,
                    label: 'Enter',
                    Enabled: enable8.value,
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h, left: 1.h),
                  child: CustomBox1(
                    controller: DC8Controller,
                    label: 'Enter',
                    Enabled: enable8.value,
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h),
                  child: CustomBox1(
                    controller: shortage8controller,
                    label: 'Enter',
                    Enabled: enable8.value,
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h),
                  child: CustomBox1(
                    controller: balance8controller,
                    label: 'Enter',
                    Enabled: enable8.value,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 5,
            color: Colors.black,
          ),
        ],
      ),
    );
  }

  // sizeRow8(){
  //   return Column(
  //     children: [
  //       Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //         children: [
  //           Expanded(
  //               flex: 1,
  //               child: Container(
  //                 margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
  //                 height: 6.h,
  //                 width: double.infinity,
  //                 child: Center(
  //                   child: BoldText(
  //                     text: '8',
  //                   ),
  //                 ),
  //               )),
  //           Expanded(
  //               flex: 1,
  //               child: Container(
  //                 margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
  //                 height: 6.h,
  //                 width: double.infinity,
  //                 child: Center(
  //                   child: BoldText(
  //                     text: oc8.value.toString(),
  //                   ),
  //                 ),
  //               )),
  //           Expanded(
  //               flex: 1,
  //               child: CustomBox1(
  //                 controller: RC8Controller,
  //                 label: 'Enter',
  //                 Enabled:enable8.value,
  //               )),
  //           Expanded(
  //               flex: 1,
  //               child: CustomBox1(
  //                 controller: DC8Controller,
  //                 label: 'Enter',
  //                 Enabled: enable8.value,
  //               ))
  //         ],
  //       ),
  //       Divider(
  //         height: 5,
  //       ),
  //     ],
  //   );
  // }

  sizeRow9() {
    return Container(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: 12.h,
                  margin: EdgeInsets.only(top: 2.h, bottom: 2.h,),
                  alignment: Alignment.center,
                  child: Container(
                    // margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                    height: 6.h,
                    width: double.infinity,
                    child: Center(
                      child: BoldText(
                        text: '9',
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 2.h, bottom: 2.h,),
                  child: Container(
                    // margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                    height: 6.h,
                    width: double.infinity,
                    child: Center(
                      child: BoldText(
                        text: oc9.value.toString(),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h, left: 1.h),
                  child: CustomBox1(
                    controller: RC9Controller,
                    label: 'Enter',
                    Enabled: enable9.value,
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h, left: 1.h),
                  child: CustomBox1(
                    controller: DC9Controller,
                    label: 'Enter',
                    Enabled: enable9.value,
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h),
                  child: CustomBox1(
                    controller: shortage9controller,
                    label: 'Enter',
                    Enabled: enable9.value,
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h),
                  child: CustomBox1(
                    controller: balance9controller,
                    label: 'Enter',
                    Enabled: enable9.value,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 5,
            color: Colors.black,
          ),
        ],
      ),
    );
  }


  // sizeRow9(){
  //   return Column(
  //     children: [
  //       Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //         children: [
  //           Expanded(
  //               flex: 1,
  //               child: Container(
  //                 margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
  //                 height: 6.h,
  //                 width: double.infinity,
  //                 child: Center(
  //                   child: BoldText(
  //                     text: '9',
  //                   ),
  //                 ),
  //               )),
  //           Expanded(
  //               flex: 1,
  //               child: Container(
  //                 margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
  //                 height: 6.h,
  //                 width: double.infinity,
  //                 child: Center(
  //                   child: BoldText(
  //                     text: oc9.value.toString(),
  //                   ),
  //                 ),
  //               )),
  //           Expanded(
  //               flex: 1,
  //               child: CustomBox1(
  //                 controller: RC9Controller,
  //                 label: 'Enter',
  //                 Enabled: enable9.value,
  //               )),
  //           Expanded(
  //               flex: 1,
  //               child: CustomBox1(
  //                 controller: DC9Controller,
  //                 label: 'Enter',
  //                 Enabled: enable9.value,
  //               ))
  //         ],
  //       ),
  //       Divider(
  //         height: 5,
  //       ),
  //     ],
  //   );
  // }

  sizeRow10() {
    return Container(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: 12.h,
                  margin: EdgeInsets.only(top: 2.h, bottom: 2.h,),
                  alignment: Alignment.center,
                  child: Container(
                    // margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                    height: 6.h,
                    width: double.infinity,
                    child: Center(
                      child: BoldText(
                        text: '10',
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 2.h, bottom: 2.h,),
                  child: Container(
                    // margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                    height: 6.h,
                    width: double.infinity,
                    child: Center(
                      child: BoldText(
                        text: oc10.value.toString(),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h, left: 1.h),
                  child: CustomBox1(
                    controller: RC10Controller,
                    label: 'Enter',
                    Enabled: enable10.value,
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h, left: 1.h),
                  child: CustomBox1(
                    controller: DC10Controller,
                    label: 'Enter',
                    Enabled: enable10.value,
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h),
                  child: CustomBox1(
                    controller: shortage10controller,
                    label: 'Enter',
                    Enabled: enable10.value,
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h),
                  child: CustomBox1(
                    controller: balance10controller,
                    label: 'Enter',
                    Enabled: enable10.value,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 5,
            color: Colors.black,
          ),
        ],
      ),
    );
  }

  sizeRow11() {
    return Container(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: 12.h,
                  margin: EdgeInsets.only(top: 2.h, bottom: 2.h,),
                  alignment: Alignment.center,
                  child: Container(
                    // margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                    height: 6.h,
                    width: double.infinity,
                    child: Center(
                      child: BoldText(
                        text: '11',
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 2.h, bottom: 2.h,),
                  child: Container(
                    // margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                    height: 6.h,
                    width: double.infinity,
                    child: Center(
                      child: BoldText(
                        text: oc11.value.toString(),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h, left: 1.h),
                  child: CustomBox1(
                    controller: RC11Controller,
                    label: 'Enter',
                    Enabled: enable11.value,
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h, left: 1.h),
                  child: CustomBox1(
                    controller: DC11Controller,
                    label: 'Enter',
                    Enabled: enable11.value,
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h),
                  child: CustomBox1(
                    controller: shortage11controller,
                    label: 'Enter',
                    Enabled: enable11.value,
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h),
                  child: CustomBox1(
                    controller: balance11controller,
                    label: 'Enter',
                    Enabled: enable11.value,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 5,
            color: Colors.black,
          ),
        ],
      ),
    );
  }

  sizeRow12() {
    return Container(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: 12.h,
                  margin: EdgeInsets.only(top: 2.h, bottom: 2.h,),
                  alignment: Alignment.center,
                  child: Container(
                    // margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                    height: 6.h,
                    width: double.infinity,
                    child: Center(
                      child: BoldText(
                        text: '12',
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 2.h, bottom: 2.h,),
                  child: Container(
                    // margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                    height: 6.h,
                    width: double.infinity,
                    child: Center(
                      child: BoldText(
                        text: oc12.value.toString(),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h, left: 1.h),
                  child: CustomBox1(
                    controller: RC12Controller,
                    label: 'Enter',
                    Enabled: enable12.value,
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h, left: 1.h),
                  child: CustomBox1(
                    controller: DC12Controller,
                    label: 'Enter',
                    Enabled: enable12.value,
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h),
                  child: CustomBox1(
                    controller: shortage12controller,
                    label: 'Enter',
                    Enabled: enable12.value,
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h),
                  child: CustomBox1(
                    controller: balance12controller,
                    label: 'Enter',
                    Enabled: enable12.value,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 5,
            color: Colors.black,
          ),
        ],
      ),
    );
  }

  sizeRow13() {
    return Container(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: 12.h,
                  margin: EdgeInsets.only(top: 2.h, bottom: 2.h,),
                  alignment: Alignment.center,
                  child: Container(
                    // margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                    height: 6.h,
                    width: double.infinity,
                    child: Center(
                      child: BoldText(
                        text: '13',
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 2.h, bottom: 2.h,),
                  child: Container(
                    // margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                    height: 6.h,
                    width: double.infinity,
                    child: Center(
                      child: BoldText(
                        text: oc13.value.toString(),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h, left: 1.h),
                  child: CustomBox1(
                    controller: RC13Controller,
                    label: 'Enter',
                    Enabled: enable13.value,
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h, left: 1.h),
                  child: CustomBox1(
                    controller: DC13Controller,
                    label: 'Enter',
                    Enabled: enable13.value,
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h),
                  child: CustomBox1(
                    controller: shortage13controller,
                    label: 'Enter',
                    Enabled: enable13.value,
                  ),
                ),
                Container(
                  width: 12.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1.h, bottom: 1.h),
                  child: CustomBox1(
                    controller: balance13controller,
                    label: 'Enter',
                    Enabled: enable13.value,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 5,
            color: Colors.black,
          ),
        ],
      ),
    );
  }


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

  RxBool enableR1 = true.obs;
  RxBool enableR2 = true.obs;
  RxBool enableR3 = true.obs;
  RxBool enableR4 = true.obs;
  RxBool enableR5 = true.obs;
  RxBool enableR6 = true.obs;
  RxBool enableR7 = true.obs;
  RxBool enableR8 = true.obs;
  RxBool enableR9 = true.obs;
  RxBool enableR10 = true.obs;
  RxBool enableR11 = true.obs;
  RxBool enableR12 = true.obs;
  RxBool enableR13 = true.obs;

  AddUpperCountStatus2UPMController({required this.company,
    required this.plan,
    required this.upperOrder,
    required this.id,
    required this.orderno,
    required this.umpId});

  checkNetworkStatus() async {
    try {
      networkStatus.value =
      (await NetworkConnectivity().checkConnectivityState())!;
      print(networkStatus.value);
    } catch (e) {
      print(e);
    }
  }

  getUpperOrder() async {
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true) {
      CustomSnackbar().LoadingBottomSheet();
      orderNoEntity.value = (await UpperCountStatus0UPMServie()
          .getUpperPlan(id, orderno, company, plan, upperOrder))!;
      Get.back();
      if (orderNoEntity.value != null) {
        if (orderNoEntity.value.response == 'Success') {
          artnoName.value =
              orderNoEntity.value.purchaseproductlist![0].artnoname.toString();
          categoryName.value = orderNoEntity
              .value.purchaseproductlist![0].categoryname
              .toString();
          colorName.value =
              orderNoEntity.value.purchaseproductlist![0].colorname.toString();
          comapnyPlanno.value = orderNoEntity
              .value.purchaseproductlist![0].companyplanno
              .toString();
          companyid.value =
              orderNoEntity.value.purchaseproductlist![0].companyid.toString();
          planNo.value =
              orderNoEntity.value.purchaseproductlist![0].planno.toString();
          upperOrderId.value =
              orderNoEntity.value.purchaseproductlist![0].porderid.toString();
          CommentsController.text =
              orderNoEntity.value.purchaseproductlist![0].note.toString();


          // dateofcounting.value=orderNoEntity.value.purchaseproductlist![0].cutofdate.toString();
          print("oc1"+orderNoEntity.value.purchaseproductlist![0].s1.toString());
          oc1.value = orderNoEntity.value.purchaseproductlist![0].s1.toString();
          oc2.value = orderNoEntity.value.purchaseproductlist![0].s2.toString();
          oc3.value = orderNoEntity.value.purchaseproductlist![0].s3.toString();
          oc4.value = orderNoEntity.value.purchaseproductlist![0].s4.toString();
          oc5.value = orderNoEntity.value.purchaseproductlist![0].s5.toString();
          oc6.value = orderNoEntity.value.purchaseproductlist![0].s6.toString();
          oc7.value = orderNoEntity.value.purchaseproductlist![0].s7.toString();
          oc8.value = orderNoEntity.value.purchaseproductlist![0].s8.toString();
          oc9.value = orderNoEntity.value.purchaseproductlist![0].s9.toString();
          oc10.value =
              orderNoEntity.value.purchaseproductlist![0].s10.toString();
          oc11.value =
              orderNoEntity.value.purchaseproductlist![0].s11.toString();
          oc12.value =
              orderNoEntity.value.purchaseproductlist![0].s12.toString();
          oc13.value =
              orderNoEntity.value.purchaseproductlist![0].s13.toString();
          if (orderNoEntity.value.purchaseproductlist![0].s1.toString().length !=
              0) {
            enable1.value = true;
            sizeListGrid.add(size1());
            sizeListListView.add(sizeRow1());
          }
          if (orderNoEntity.value.purchaseproductlist![0].s2.toString().length !=
              0) {
            enable2.value = true;
            sizeListGrid.add(size2());
            sizeListListView.add(sizeRow2());
          }
          if (orderNoEntity.value.purchaseproductlist![0].s3.toString().length !=
              0) {
            enable3.value = true;
            sizeListGrid.add(size3());
            sizeListListView.add(sizeRow3());
          }
          if (orderNoEntity.value.purchaseproductlist![0].s4.toString().length !=
              0) {
            enable4.value = true;
            sizeListGrid.add(size4());
            sizeListListView.add(sizeRow4());
          }
          if (orderNoEntity.value.purchaseproductlist![0].s5.toString().length !=
              0) {
            enable5.value = true;
            sizeListGrid.add(size5());
            sizeListListView.add(sizeRow5());
          }
          if (orderNoEntity.value.purchaseproductlist![0].s6.toString() .length!=
              0) {
            enable6.value = true;
            sizeListGrid.add(size6());
            sizeListListView.add(sizeRow6());
          }
          if (orderNoEntity.value.purchaseproductlist![0].s7.toString() .length!=
              0) {
            enable7.value = true;
            sizeListGrid.add(size7());
            sizeListListView.add(sizeRow7());
          }
          if (orderNoEntity.value.purchaseproductlist![0].s8.toString().length !=
              0) {
            enable8.value = true;
            sizeListGrid.add(size8());
            sizeListListView.add(sizeRow8());
          }
          if (orderNoEntity.value.purchaseproductlist![0].s9.toString() .length!=
              0) {
            enable9.value = true;
            sizeListGrid.add(size9());
            sizeListListView.add(sizeRow9());
          }
          if (orderNoEntity.value.purchaseproductlist![0].s10.toString().length !=
              0) {
            enable10.value = true;
            sizeListGrid.add(size10());
            sizeListListView.add(sizeRow10());
          }
          if (orderNoEntity.value.purchaseproductlist![0].s11.toString().length !=
              0) {
            enable11.value = true;
            sizeListGrid.add(size11());
            sizeListListView.add(sizeRow11());
          }
          if (orderNoEntity.value.purchaseproductlist![0].s12.toString().length !=
              0) {
            enable12.value = true;
            sizeListGrid.add(size12());
            sizeListListView.add(sizeRow12());
          }
          if (orderNoEntity.value.purchaseproductlist![0].s13.toString() .length!=
              0) {
            enable13.value = true;
            sizeListGrid.add(size13());
            sizeListListView.add(sizeRow13());
          }

          if (orderNoEntity.value.staffcountlist!.length != 0) {
            for (int i = 0;
            i < orderNoEntity.value.staffcountlist!.length;
            i++) {
              filters.add(
                  orderNoEntity.value.staffcountlist![i].staffname.toString());
            }
          }
          if (orderNoEntity.value.uppercountlist!.length != 0) {
            dateofcounting.value = orderNoEntity
                .value.uppercountlist![0].dateofcounting
                .toString();
            countId.value =
                orderNoEntity.value.uppercountlist![0].id.toString();
            comment.value =
                orderNoEntity.value.uppercountlist![0].comments.toString();
          }
          if (orderNoEntity.value.receivedcountlist!.length != 0) {
            rcId.value =
                orderNoEntity.value.receivedcountlist![0].id.toString();
            RC1Controller.text =
                orderNoEntity.value.receivedcountlist![0].s1.toString();
            RC2Controller.text =
                orderNoEntity.value.receivedcountlist![0].s2.toString();
            RC3Controller.text =
                orderNoEntity.value.receivedcountlist![0].s3.toString();
            RC4Controller.text =
                orderNoEntity.value.receivedcountlist![0].s4.toString();
            RC5Controller.text =
                orderNoEntity.value.receivedcountlist![0].s5.toString();
            RC6Controller.text =
                orderNoEntity.value.receivedcountlist![0].s6.toString();
            RC7Controller.text =
                orderNoEntity.value.receivedcountlist![0].s7.toString();
            RC8Controller.text =
                orderNoEntity.value.receivedcountlist![0].s8.toString();
            RC9Controller.text =
                orderNoEntity.value.receivedcountlist![0].s9.toString();
            RC10Controller.text =
                orderNoEntity.value.receivedcountlist![0].s10.toString();
            RC11Controller.text =
                orderNoEntity.value.receivedcountlist![0].s11.toString();
            RC12Controller.text =
                orderNoEntity.value.receivedcountlist![0].s12.toString();
            RC13Controller.text =
                orderNoEntity.value.receivedcountlist![0].s13.toString();
          }
          if (orderNoEntity.value.damagedcountlist!.length != 0) {
            dcId.value = orderNoEntity.value.damagedcountlist![0].id.toString();
            DC1Controller.text =
                orderNoEntity.value.damagedcountlist![0].s1.toString();
            DC2Controller.text =
                orderNoEntity.value.damagedcountlist![0].s2.toString();
            DC3Controller.text =
                orderNoEntity.value.damagedcountlist![0].s3.toString();
            DC4Controller.text =
                orderNoEntity.value.damagedcountlist![0].s4.toString();
            DC5Controller.text =
                orderNoEntity.value.damagedcountlist![0].s5.toString();
            DC6Controller.text =
                orderNoEntity.value.damagedcountlist![0].s6.toString();
            DC7Controller.text =
                orderNoEntity.value.damagedcountlist![0].s7.toString();
            DC8Controller.text =
                orderNoEntity.value.damagedcountlist![0].s8.toString();
            DC9Controller.text =
                orderNoEntity.value.damagedcountlist![0].s9.toString();
            DC10Controller.text =
                orderNoEntity.value.damagedcountlist![0].s10.toString();
            DC11Controller.text =
                orderNoEntity.value.damagedcountlist![0].s11.toString();
            DC12Controller.text =
                orderNoEntity.value.damagedcountlist![0].s12.toString();
            DC13Controller.text =
                orderNoEntity.value.damagedcountlist![0].s13.toString();
          }
          if (orderNoEntity.value.recivedsupliercount!.length != 0) {
            rcCountId.value =
                orderNoEntity.value.recivedsupliercount![0].id.toString();
            size1controller.text =
                orderNoEntity.value.recivedsupliercount![0].s1.toString();
            size2controller.text =
                orderNoEntity.value.recivedsupliercount![0].s2.toString();
            size3controller.text =
                orderNoEntity.value.recivedsupliercount![0].s3.toString();
            size4controller.text =
                orderNoEntity.value.recivedsupliercount![0].s4.toString();
            size5controller.text =
                orderNoEntity.value.recivedsupliercount![0].s5.toString();
            size6controller.text =
                orderNoEntity.value.recivedsupliercount![0].s6.toString();
            size7controller.text =
                orderNoEntity.value.recivedsupliercount![0].s7.toString();
            size8controller.text =
                orderNoEntity.value.recivedsupliercount![0].s8.toString();
            size9controller.text =
                orderNoEntity.value.recivedsupliercount![0].s9.toString();
            size10controller.text =
                orderNoEntity.value.recivedsupliercount![0].s10.toString();
            size11controller.text =
                orderNoEntity.value.recivedsupliercount![0].s11.toString();
            size12controller.text =
                orderNoEntity.value.recivedsupliercount![0].s12.toString();
            size13controller.text =
                orderNoEntity.value.recivedsupliercount![0].s13.toString();
          }
          if (orderNoEntity.value.shortagelist!.length != 0) {
            shortageId.value=orderNoEntity.value.shortagelist![0].id.toString();
            shortage1controller.text =
                orderNoEntity.value.shortagelist![0].s1.toString();
            shortage2controller.text =
                orderNoEntity.value.shortagelist![0].s2.toString();
            shortage3controller.text =
                orderNoEntity.value.shortagelist![0].s3.toString();
            shortage4controller.text =
                orderNoEntity.value.shortagelist![0].s4.toString();
            shortage5controller.text =
                orderNoEntity.value.shortagelist![0].s5.toString();
            shortage6controller.text =
                orderNoEntity.value.shortagelist![0].s6.toString();
            shortage7controller.text =
                orderNoEntity.value.shortagelist![0].s7.toString();
            shortage8controller.text =
                orderNoEntity.value.shortagelist![0].s8.toString();
            shortage9controller.text =
                orderNoEntity.value.shortagelist![0].s9.toString();
            shortage10controller.text =
                orderNoEntity.value.shortagelist![0].s10.toString();
            shortage11controller.text =
                orderNoEntity.value.shortagelist![0].s11.toString();
            shortage12controller.text =
                orderNoEntity.value.shortagelist![0].s12.toString();
            shortage13controller.text =
                orderNoEntity.value.shortagelist![0].s13.toString();
          }
          if (orderNoEntity.value.balancelist!.length != 0) {
            balanceId.value=orderNoEntity.value.balancelist![0].id.toString();
            balance1controller.text =
                orderNoEntity.value.balancelist![0].s1.toString();
            balance2controller.text =
                orderNoEntity.value.balancelist![0].s2.toString();
            balance3controller.text =
                orderNoEntity.value.balancelist![0].s3.toString();
            balance4controller.text =
                orderNoEntity.value.balancelist![0].s4.toString();
            balance5controller.text =
                orderNoEntity.value.balancelist![0].s5.toString();
            balance6controller.text =
                orderNoEntity.value.balancelist![0].s6.toString();
            balance7controller.text =
                orderNoEntity.value.balancelist![0].s7.toString();
            balance8controller.text =
                orderNoEntity.value.balancelist![0].s8.toString();
            balance9controller.text =
                orderNoEntity.value.balancelist![0].s9.toString();
            balance10controller.text =
                orderNoEntity.value.balancelist![0].s10.toString();
            balance11controller.text =
                orderNoEntity.value.balancelist![0].s11.toString();
            balance12controller.text =
                orderNoEntity.value.balancelist![0].s12.toString();
            balance13controller.text =
                orderNoEntity.value.balancelist![0].s13.toString();
          }
        }
      }
    }
  }

  addUpperCount(List<Map<String, dynamic>> rcList,
      List<Map<String, dynamic>> dcList,
      List<Map<String, dynamic>> rcCountList,
      List<Map<String, dynamic>> shortageCountList,
      List<Map<String, dynamic>> balanceCountList,
      String comment) async {

    List<Map<String, dynamic>> staffList = [];
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true) {
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
      responseEntity.value = (await UpperCountStatus0UPMServie().addUpperCount(
          orderno,
          comapnyPlanno.value,
          upperOrderId.value,
          companyid.value,
          dateofcounting.value,
          comment,
          planNo.value,
          rcList,
          dcList,
          staffList,
          rcCountList,shortageCountList,balanceCountList))!;
      Get.back();
      if (responseEntity.value.response == 'Added successfully') {
        Get.back();

        CustomSnackbar().InfoSnackBar(
            'Add Upper Count', responseEntity.value.response.toString());
        final controller = Get.find<UpperCountStatus1UPMController>();
        controller.getUpperOrder();
      } else {
        CustomSnackbar().InfoSnackBar(
            'Add Upper Count', responseEntity.value.response.toString());
      }
    }
  }

  editUpperCount(List<Map<String, dynamic>> rcList,
      List<Map<String, dynamic>> dcList,
      List<Map<String, dynamic>> rcCountList,
      List<Map<String, dynamic>> shortageCountList,
      List<Map<String, dynamic>> balanceCountList,
      String comment) async {
    List<Map<String, dynamic>> staffList = [];

    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true) {
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
      responseEntity.value = (await UpperCountStatus0UPMServie().editUpperCount(
          orderno,
          comapnyPlanno.value,
          upperOrderId.value,
          companyid.value,
          dateofcounting.value,
          comment,
          planNo.value,
          rcList,
          dcList,
          staffList,
          rcCountList,
          shortageCountList,
          balanceCountList,
          countId.value.toString(),
          rcId.value.toString(),
          dcId.value.toString(),
          rcCountId.value.toString(),
      shortageId.value.toString(),
      balanceId.value.toString()))!;
      Get.back();
      if (responseEntity.value.response == 'Updated successfully') {
        Get.back();
        final controller = Get.find<UpperCountStatus1UPMController>();
        controller.getUpperOrder();
        CustomSnackbar().InfoSnackBar(
            'Add Upper Count', responseEntity.value.response.toString());
      } else {
        CustomSnackbar().InfoSnackBar(
            'Add Upper Count', responseEntity.value.response.toString());
      }
    }
  }

  getUpperStaf() async {
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true) {
      CustomSnackbar().LoadingBottomSheet();
      staffEnebtity.value = (await UpperCountStatus0UPMServie().getStaff())!;
      Get.back();
      if (staffEnebtity.value.response == 'Success') {
        for (int i = 0; i < staffEnebtity.value.stafflist!.length; i++) {
          dynamicChips.add(staffEnebtity.value.stafflist![i].name.toString());
        }
      }
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    sizeListListView.add(Heading());
    getUpperOrder();
    print("id" + id);
    print("orderno" + orderno);
    print("umpid" + umpId);
    print("compnay" + company);
    print("paln" + plan);
    print("uppedorder" + upperOrder);

    getUpperStaf();
    super.onInit();
  }
}
