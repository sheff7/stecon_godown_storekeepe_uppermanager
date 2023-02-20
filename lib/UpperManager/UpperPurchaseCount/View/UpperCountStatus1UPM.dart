import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../CustomFont/Header.dart';
import '../../../CustomFont/Heading.dart';
import '../../../CustomFont/NormalText.dart';
import '../../../CustomFont/SubHeading.dart';
import '../../../CustomWidget/CustomBox.dart';
import '../../../CustomWidget/CustomBox1.dart';
import 'AddUpperCountStatus2UPM.dart';
import '../../UpperCountStatus2UPM.dart';
import '../Controller/UpperCountStatus1UPMController.dart';

class UpperCountStatus1UPM extends StatelessWidget {
  final String upmId;
  final String id;
  final String orderno;

  UpperCountStatus1UPM(
      {Key? key, required this.upmId, required this.id, required this.orderno})
      : super(key: key);
  late final _controller = Get.put(
      UpperCountStatus1UPMController(upmId: upmId, id: id, orderno: orderno));

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        Get.back();
        return true;
      },
      child: Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.white,
            elevation: 0,
            title: Header(
              text: 'Upper Count Status',
            ),
            centerTitle: true,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                size: 17,
              ),
              onPressed: () {
                Get.back();
                // Navigator.of(context).pop();
              },
            ),
          ),
          body: Obx(
            () => _body(),
          )),
    );
  }

  _body() {
    if (_controller.loadingBool.value == true) {
      return Center(
        child: Column(
          children: [HeadingText(text: 'Loading...')],
        ),
      );
    } else if (_controller.loadingBool.value == false) {
      if (_controller.orderNoEntity.value == null) {
        return Center(
          child: Column(
            children: [HeadingText(text: 'No Date')],
          ),
        );
      } else if (_controller.orderNoEntity.value != null) {
        if (_controller.orderNoEntity.value.response == 'Success') {
          return ListView(
            children: [
              SizedBox(
                height: 2.h,
              ),
              Container(
                color: Colors.white,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 2.h, vertical: 3.h),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Container(
                              child: Text(
                                    _controller.orderNoEntity.value
                                        .purchaseplanlist![0].companyname
                                        .toString(),
                                style: GoogleFonts.radioCanada(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xFFEC4E52),
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          NormalText(
                              text: _controller.orderNoEntity.value
                                  .purchaseplanlist![0].orderdate
                                  .toString())
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          NormalText(
                              text: "Order no : " +
                                  _controller.orderNoEntity.value
                                      .purchaseplanlist![0].orderno
                                      .toString()),
                        ],
                      ),
                      SizedBox(height: 1.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          NormalText(
                              text: "Plan no :  " +
                                  _controller.orderNoEntity.value
                                      .purchaseplanlist![0].companyplanno
                                      .toString()),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 1.5.h,
                color: Colors.grey[200],
              ),
              Container(
                color: Colors.white,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 0.h, vertical: 3.h),
                  child: ListView.separated(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext Context, int index) {
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
                        bool enable1 = false;
                        bool enable2 = false;
                        bool enable3 = false;
                        bool enable4 = false;
                        bool enable5 = false;
                        bool enable6 = false;
                        bool enable7 = false;
                        bool enable8 = false;
                        bool enable9 = false;
                        bool enable10 = false;
                        bool enable11 = false;
                        bool enable12 = false;
                        bool enable13 = false;
                        size1controller.text = _controller
                            .orderNoEntity.value.purchaseproductlist![index].s1
                            .toString();
                        size2controller.text = _controller
                            .orderNoEntity.value.purchaseproductlist![index].s2
                            .toString();
                        size3controller.text = _controller
                            .orderNoEntity.value.purchaseproductlist![index].s3
                            .toString();
                        size4controller.text = _controller
                            .orderNoEntity.value.purchaseproductlist![index].s4
                            .toString();
                        size5controller.text = _controller
                            .orderNoEntity.value.purchaseproductlist![index].s5
                            .toString();
                        size6controller.text = _controller
                            .orderNoEntity.value.purchaseproductlist![index].s6
                            .toString();
                        size7controller.text = _controller
                            .orderNoEntity.value.purchaseproductlist![index].s7
                            .toString();
                        size8controller.text = _controller
                            .orderNoEntity.value.purchaseproductlist![index].s8
                            .toString();
                        size9controller.text = _controller
                            .orderNoEntity.value.purchaseproductlist![index].s9
                            .toString();
                        size10controller.text = _controller
                            .orderNoEntity.value.purchaseproductlist![index].s10
                            .toString();
                        size11controller.text = _controller
                            .orderNoEntity.value.purchaseproductlist![index].s11
                            .toString();
                        size12controller.text = _controller
                            .orderNoEntity.value.purchaseproductlist![index].s12
                            .toString();
                        size13controller.text = _controller
                            .orderNoEntity.value.purchaseproductlist![index].s13
                            .toString();
                        size1() {
                          return CustomBox1(
                            controller: size1controller,
                            label: "Size-1",
                            Enabled: enable1,
                          );
                        }
                        size2() {
                          return CustomBox1(
                            controller: size2controller,
                            label: "Size-2",
                            Enabled: enable2,
                          );
                        }
                        size3() {
                          return CustomBox1(
                            controller: size3controller,
                            label: "Size-3",
                            Enabled: enable3,
                          );
                        }
                        size4() {
                          return CustomBox1(
                            controller: size4controller,
                            label: "Size-4",
                            Enabled: enable4,
                          );
                        }
                        size5() {
                          return CustomBox1(
                            controller: size5controller,
                            label: "Size-5",
                            Enabled: enable5,
                          );
                        }
                        size6() {
                          return CustomBox1(
                            controller: size6controller,
                            label: "Size-6",
                            Enabled: enable6,
                          );
                        }
                        size7() {
                          return CustomBox1(
                            controller: size7controller,
                            label: "Size-7",
                            Enabled: enable7,
                          );
                        }
                        size8() {
                          return CustomBox1(
                            controller: size8controller,
                            label: "Size-8",
                            Enabled: enable8,
                          );
                        }
                        size9() {
                          return CustomBox1(
                            controller: size9controller,
                            label: "Size-9",
                            Enabled: enable9,
                          );
                        }
                        size10() {
                          return CustomBox1(
                            controller: size10controller,
                            label: "Size-10",
                            Enabled: enable10,
                          );
                        }
                        size11() {
                          return CustomBox1(
                            controller: size11controller,
                            label: "Size-11",
                            Enabled: enable11,
                          );
                        }
                        size12() {
                          return CustomBox1(
                            controller: size12controller,
                            label: "Size-12",
                            Enabled: enable12,
                          );
                        }
                        size13() {
                          return CustomBox1(
                            controller: size13controller,
                            label: "Size-13",
                            Enabled: enable13,
                          );
                        }
                        List<Widget> sizeListGrid = (List<Widget>.of([])).obs;
                        if (_controller.orderNoEntity.value.purchaseproductlist![index].s1.toString().length!=0) {
                          sizeListGrid.add(size1());
                        }
                        if (_controller.orderNoEntity.value.purchaseproductlist![index].s2.toString().length!=0) {
                          sizeListGrid.add(size2());
                        }
                        if (_controller.orderNoEntity.value.purchaseproductlist![index].s3.toString().length!=0) {
                          sizeListGrid.add(size3());
                        }
                        if (_controller.orderNoEntity.value.purchaseproductlist![index].s4.toString().length!=0) {
                          sizeListGrid.add(size4());
                        }
                        if (_controller.orderNoEntity.value.purchaseproductlist![index].s5.toString().length!=0) {
                          sizeListGrid.add(size5());
                        }
                        if (_controller.orderNoEntity.value.purchaseproductlist![index].s6.toString().length!=0) {
                          sizeListGrid.add(size6());
                        }
                        if (_controller.orderNoEntity.value.purchaseproductlist![index].s7.toString().length!=0) {
                          sizeListGrid.add(size7());
                        }
                        if (_controller.orderNoEntity.value.purchaseproductlist![index].s8.toString().length!=0) {
                          sizeListGrid.add(size8());
                        }
                        if (_controller.orderNoEntity.value.purchaseproductlist![index].s9.toString().length!=0) {
                          sizeListGrid.add(size9());
                        }
                        if (_controller.orderNoEntity.value.purchaseproductlist![index].s10.toString().length!=0) {
                          sizeListGrid.add(size10());
                        }
                        if (_controller.orderNoEntity.value.purchaseproductlist![index].s11.toString().length!=0) {
                          sizeListGrid.add(size11());
                        }
                        if (_controller.orderNoEntity.value.purchaseproductlist![index].s12.toString().length!=0) {
                          sizeListGrid.add(size12());

                        }
                        if (_controller.orderNoEntity.value.purchaseproductlist![index].s13.toString().length!=0) {

                          sizeListGrid.add(size13());
                        }
                        return Container(
                          margin: EdgeInsets.symmetric(vertical: 2.h),
                          color: Colors.white,
                          child: ExpansionTile(
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                HeadingText(
                                  text: _controller.orderNoEntity.value
                                      .purchaseproductlist![index].planno
                                      .toString(),
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                NormalText(
                                    text: _controller.orderNoEntity.value
                                        .purchaseproductlist![index].artnoname
                                        .toString())
                              ],
                            ),
                            children: [
                              Container(
                                color: Colors.white,
                                margin: EdgeInsets.fromLTRB(
                                    0.h, 1.h, 0.h, 0.h),
                                child: Container(
                                  color: Colors.white,
                                  margin: EdgeInsets.fromLTRB(
                                      2.h, 2.h, 2.h, 0.h),
                                  child: Column(children: [
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                          EdgeInsets.fromLTRB(
                                              0.h, 0.h, 0.h, 0.h),
                                          child: SubHeadingText(
                                              text: "Size Details"),

                                        ),

                                        // SizedBox(
                                        //   height: 2.h,
                                        // ),
                                        // Row(
                                        //   children: [
                                        //     Expanded(
                                        //       child: CustomBox1(
                                        //         controller:
                                        //         size1controller,
                                        //         label: "Size-1",
                                        //         Enabled: _controller
                                        //             .enable1
                                        //             .value,
                                        //       ),
                                        //     ),
                                        //     Expanded(
                                        //       child: CustomBox1(
                                        //         controller:
                                        //         size2controller,
                                        //         label: "Size-2",
                                        //         Enabled: _controller
                                        //             .enable2
                                        //             .value,
                                        //       ),
                                        //     ),
                                        //     Expanded(
                                        //       child: CustomBox1(
                                        //         controller:
                                        //         size3controller,
                                        //         label: "Size-3",
                                        //         Enabled: _controller
                                        //             .enable3
                                        //             .value,
                                        //       ),
                                        //     )
                                        //   ],
                                        // ),
                                      ],
                                    ),
                                    // Row(
                                    //   children: [
                                    //     Expanded(
                                    //       child: CustomBox1(
                                    //         controller:
                                    //         size4controller,
                                    //         label: "Size-4",
                                    //         Enabled: _controller
                                    //             .enable4.value,
                                    //       ),
                                    //     ),
                                    //     Expanded(
                                    //       child: CustomBox1(
                                    //         controller:
                                    //         size5controller,
                                    //         label: "Size-5",
                                    //         Enabled: _controller
                                    //             .enable5.value,
                                    //       ),
                                    //     ),
                                    //     Expanded(
                                    //       child: CustomBox1(
                                    //         controller:
                                    //         size6controller,
                                    //         label: "Size-6",
                                    //         Enabled: _controller
                                    //             .enable6.value,
                                    //       ),
                                    //     )
                                    //   ],
                                    // ),
                                    // Row(
                                    //   children: [
                                    //     Expanded(
                                    //       child: CustomBox1(
                                    //         controller:
                                    //         size7controller,
                                    //         label: "Size-7",
                                    //         Enabled: _controller
                                    //             .enable7.value,
                                    //       ),
                                    //     ),
                                    //     Expanded(
                                    //       child: CustomBox1(
                                    //         controller:
                                    //         size8controller,
                                    //         label: "Size-8",
                                    //         Enabled: _controller
                                    //             .enable8.value,
                                    //       ),
                                    //     ),
                                    //     Expanded(
                                    //       child: CustomBox1(
                                    //         controller:
                                    //         size9controller,
                                    //         label: "Size-9",
                                    //         Enabled: _controller
                                    //             .enable9.value,
                                    //       ),
                                    //     )
                                    //   ],
                                    // ),
                                    // Row(
                                    //   children: [
                                    //     Expanded(
                                    //       child: CustomBox1(
                                    //         controller:
                                    //         size10controller,
                                    //         label: "Size-10",
                                    //         Enabled: _controller
                                    //             .enable10.value,
                                    //       ),
                                    //     ),
                                    //     Expanded(
                                    //       child: CustomBox1(
                                    //         controller:
                                    //         size11controller,
                                    //         label: "Size-11",
                                    //         Enabled: _controller
                                    //             .enable11.value,
                                    //       ),
                                    //     ),
                                    //     Expanded(
                                    //       child: CustomBox1(
                                    //         controller:
                                    //         size12controller,
                                    //         label: "Size-12",
                                    //         Enabled: _controller
                                    //             .enable12.value,
                                    //       ),
                                    //     )
                                    //   ],
                                    // ),
                                    // Row(
                                    //   children: [
                                    //     Expanded(
                                    //       child: CustomBox1(
                                    //         controller:
                                    //         size13controller,
                                    //         label: "Size-13",
                                    //         Enabled: _controller
                                    //             .enable13.value,
                                    //       ),
                                    //     ),
                                    //     Expanded(
                                    //       flex: 1,
                                    //       child: Container(),
                                    //     ),
                                    //     Expanded(
                                    //       flex: 1,
                                    //       child: Container(),
                                    //     ),
                                    //   ],
                                    // ),
                                    GridView.count(
                                      shrinkWrap: true,
                                      physics: NeverScrollableScrollPhysics(),
                                      crossAxisCount: 3,
                                      mainAxisSpacing: 1,
                                      crossAxisSpacing: 1,
                                      // childAspectRatio: 2,
                                      // childAspectRatio: (150.0 / 220.0),
                                      children: sizeListGrid,
                                    ),
                                    SizedBox(
                                      height: 4.h,
                                    ),
                                  ]),
                                ),
                              ),
                              Container(
                                margin:
                                EdgeInsets.symmetric(horizontal: 3.h),
                                child: SizedBox(
                                  height: 5.h,
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: const Color(0xFFEC4E52),
                                        textStyle: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                    onPressed: () {
                                      Get.to(AddUpperCountStatus2UPM(
                                        upmId: upmId,
                                        id: _controller.orderNoEntity.value.purchaseproductlist![index].id.toString(),
                                        orderno: _controller.orderNoEntity.value.purchaseproductlist![index].orderno.toString(),
                                        companyid: _controller.orderNoEntity.value.purchaseproductlist![index].companyid.toString(),
                                        planNo: _controller.orderNoEntity.value.purchaseproductlist![index].planno.toString(),
                                        upperOrderId: _controller.orderNoEntity.value.purchaseproductlist![index].porderid.toString(),
                                      ));
                                    },
                                    child: Text('Add Upper Count'),
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Divider(height: .5, color: Colors.grey);
                      },
                      itemCount: _controller.orderNoEntity.value.purchaseproductlist!.length),
                ),
              )
            ],
          );
        } else {
          return Center(
            child: Column(
              children: [
                HeadingText(
                    text: _controller.orderNoEntity.value.response.toString())
              ],
            ),
          );
        }
      }
    }
  }
}
