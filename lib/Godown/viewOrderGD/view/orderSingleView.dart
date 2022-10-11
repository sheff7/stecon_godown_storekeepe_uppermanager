import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:stecon_godown_storekeepe_uppermanager/CustomFont/BoldText.dart';
import 'package:stecon_godown_storekeepe_uppermanager/CustomWidget/CustomBox1.dart';

import '../../../CustomFont/Header.dart';
import '../../../CustomFont/Heading.dart';
import '../../../CustomFont/NormalText.dart';
import '../../../CustomFont/SubHeading.dart';
import '../controller/OrdersSingleViewController.dart';

class ViewOrder1GD extends StatelessWidget {
  final String orderno;
  final String orderid;

  ViewOrder1GD({Key? key, required this.orderno, required this.orderid})
      : super(key: key);
  late final ordersSingleViewGDController =
      Get.put(OrderSingleViewGDController(orderid: orderid, orderno: orderno));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF7FBFC),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 0,
          title: Header(
            text: 'View Orders',
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              size: 17,
            ),
            onPressed: () {
              Get.back();
            },
          ),
        ),
        body: Obx(() => body()));
  }

  body() {
    if (ordersSingleViewGDController.networkStatus.value == true) {
      if (ordersSingleViewGDController.loadingBool.value == false) {
        if (ordersSingleViewGDController.orderSingleViewEntity.value == null) {
          return Container(
            child: Text('Null value'),
          );
        } else if (ordersSingleViewGDController.orderSingleViewEntity.value !=
            null) {
          if (ordersSingleViewGDController
                  .orderSingleViewEntity.value.response ==
              'Success') {
            if (ordersSingleViewGDController
                    .orderSingleViewEntity.value.orderlist!.length ==
                0) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: HeadingText(
                        text: 'No Data',
                      ),
                    ),
                  ],
                ),
              );
            } else if (ordersSingleViewGDController
                    .orderSingleViewEntity.value.orderlist!.length !=
                0) {
              return ListView(
                children: [
                  SizedBox(
                    height: 2.h,
                  ),
                  Container(
                    color: Colors.white,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(3.h, 3.h, 3.h, 3.h),
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              NormalText(text: "Order no:"),
// NormalText(text: "17-11-22")
                            ],
                          ),
                          SizedBox(height: 1.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                ordersSingleViewGDController
                                    .orderSingleViewEntity
                                    .value
                                    .orderlist![0]
                                    .id
                                    .toString(),
                                style: GoogleFonts.radioCanada(
                                  fontSize: 17,
                                  color: const Color(0xFFEC4E52),
                                ),
                              ),
                              Text(
                                ordersSingleViewGDController
                                    .orderSingleViewEntity
                                    .value
                                    .orderlist![0]
                                    .status
                                    .toString(),
                                style: GoogleFonts.radioCanada(
                                  fontSize: 15,
// fontWeight: FontWeight.bold,
                                  color: const Color(0xFF4FE138),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 1.h),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    height: 1.5.h,
                    color: Colors.grey[200],
                  ),
                  Container(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        color: Colors.white,
                        child: ListView.separated(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: ordersSingleViewGDController
                              .orderSingleViewEntity.value.orderlist!.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: [
                                Material(
                                  borderRadius: BorderRadius.circular(0),
                                  elevation: 0,
// shadowColor: Colors.grey,
                                  child: Container(
                                    margin:
                                        EdgeInsets.fromLTRB(1.h, 0.h, 1.h, 0.h),
                                    color: Colors.white,
                                    child: ExpansionTile(
                                      title: Padding(
                                        padding: EdgeInsets.fromLTRB(
                                            0.h, 2.h, 0.h, 2.h),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(top: 1.5.h),
                                              child: Text(
                                                ordersSingleViewGDController
                                                    .orderSingleViewEntity
                                                    .value
                                                    .orderlist![index]
                                                    .artno
                                                    .toString(),
                                                style: GoogleFonts.radioCanada(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.blue[200]),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 1.h,
                                            ),
                                            NormalText(text: ordersSingleViewGDController.orderSingleViewEntity.value.orderlist![0].category.toString()+ ', '+ ordersSingleViewGDController.orderSingleViewEntity.value.orderlist![0].color.toString()),
                                            SizedBox(
                                              height: 1.h,
                                            ),
                                          ],
                                        ),
                                      ),
                                      children: [
                                        Column(
                                          children: [
                                            Container(
                                              color: Colors.white,
                                              margin: EdgeInsets.fromLTRB(
                                                  0.h, 0.h, 0.h, 0.h),
                                              child: Container(
                                                color: Colors.white,
                                                margin: EdgeInsets.fromLTRB(
                                                    0.h, 0.h, 2.h, 0.h),
                                                child: Column(children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                2.h,
                                                                0.h,
                                                                0.h,
                                                                0.h),
                                                        child: SubHeadingText(
                                                            text:
                                                                "Size Details"),
                                                      ),
                                                      Row(
                                                        children: [
                                                          Expanded(
                                                            child: CustomBox1(
                                                              controller:
                                                                  ordersSingleViewGDController
                                                                      .size1controller,
                                                              label: "Size-1",
                                                              Enabled:
                                                                  ordersSingleViewGDController
                                                                      .enable1
                                                                      .value,
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: CustomBox1(
                                                              controller:
                                                                  ordersSingleViewGDController
                                                                      .size2controller,
                                                              label: "Size-2",
                                                              Enabled:
                                                                  ordersSingleViewGDController
                                                                      .enable2
                                                                      .value,
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: CustomBox1(
                                                              controller:
                                                                  ordersSingleViewGDController
                                                                      .size3controller,
                                                              label: "Size-3",
                                                              Enabled:
                                                                  ordersSingleViewGDController
                                                                      .enable3
                                                                      .value,
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: CustomBox1(
                                                          controller:
                                                              ordersSingleViewGDController
                                                                  .size4controller,
                                                          label: "Size-4",
                                                          Enabled:
                                                              ordersSingleViewGDController
                                                                  .enable4
                                                                  .value,
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: CustomBox1(
                                                          controller:
                                                              ordersSingleViewGDController
                                                                  .size5controller,
                                                          label: "Size-5",
                                                          Enabled:
                                                              ordersSingleViewGDController
                                                                  .enable5
                                                                  .value,
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: CustomBox1(
                                                          controller:
                                                              ordersSingleViewGDController
                                                                  .size6controller,
                                                          label: "Size-6",
                                                          Enabled:
                                                              ordersSingleViewGDController
                                                                  .enable6
                                                                  .value,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: CustomBox1(
                                                          controller:
                                                              ordersSingleViewGDController
                                                                  .size7controller,
                                                          label: "Size-7",
                                                          Enabled:
                                                              ordersSingleViewGDController
                                                                  .enable7
                                                                  .value,
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: CustomBox1(
                                                          controller:
                                                              ordersSingleViewGDController
                                                                  .size8controller,
                                                          label: "Size-8",
                                                          Enabled:
                                                              ordersSingleViewGDController
                                                                  .enable8
                                                                  .value,
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: CustomBox1(
                                                          controller:
                                                              ordersSingleViewGDController
                                                                  .size9controller,
                                                          label: "Size-9",
                                                          Enabled:
                                                              ordersSingleViewGDController
                                                                  .enable9
                                                                  .value,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: CustomBox1(
                                                          controller:
                                                              ordersSingleViewGDController
                                                                  .size10controller,
                                                          label: "Size-10",
                                                          Enabled:
                                                              ordersSingleViewGDController
                                                                  .enable10
                                                                  .value,
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: CustomBox1(
                                                          controller:
                                                              ordersSingleViewGDController
                                                                  .size11controller,
                                                          label: "Size-11",
                                                          Enabled:
                                                              ordersSingleViewGDController
                                                                  .enable11
                                                                  .value,
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: CustomBox1(
                                                          controller:
                                                              ordersSingleViewGDController
                                                                  .size12controller,
                                                          label: "Size-12",
                                                          Enabled:
                                                              ordersSingleViewGDController
                                                                  .enable12
                                                                  .value,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: CustomBox1(
                                                          controller:
                                                              ordersSingleViewGDController
                                                                  .size13controller,
                                                          label: "Size-13",
                                                          Enabled:
                                                              ordersSingleViewGDController
                                                                  .enable13
                                                                  .value,
                                                        ),
                                                      ),
                                                      Expanded(
                                                        flex: 1,
                                                        child: Container(),
                                                      ),
                                                      Expanded(
                                                        flex: 1,
                                                        child: Container(),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        flex: 2,
                                                        child: Container(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      3.h,
                                                                  vertical:
                                                                      3.h),
                                                          color: Colors.white,
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              NormalText(
                                                                  text:
                                                                      'Pair  : '),
                                                              SizedBox(
                                                                height: 2.h,
                                                              ),
                                                              NormalText(
                                                                  text:
                                                                      'Box Count : '),
                                                              SizedBox(
                                                                height: 2.h,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        flex: 2,
                                                        child: Container(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      0.h,
                                                                  vertical:
                                                                      3.h),
                                                          color: Colors.white,
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              BoldText(
                                                                  text: ordersSingleViewGDController
                                                                      .orderSingleViewEntity
                                                                      .value
                                                                      .orderlist![
                                                                          0]
                                                                      .pair
                                                                      .toString()),
                                                              SizedBox(
                                                                height: 2.h,
                                                              ),
                                                              BoldText(
                                                                  text: ordersSingleViewGDController
                                                                      .orderSingleViewEntity
                                                                      .value
                                                                      .orderlist![
                                                                          0]
                                                                      .box
                                                                      .toString()),
                                                              SizedBox(
                                                                height: 2.h,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ]),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                          separatorBuilder: (context, index) {
                            return Divider(height: .5, color: Colors.grey);
                          },
                        ),
                      ),

// SizedBox(height:2.h ,),
                    ],
                  )),
                ],
              );
            }
          } else {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: HeadingText(
                      text: ordersSingleViewGDController
                          .orderSingleViewEntity.value.response
                          .toString(),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        ordersSingleViewGDController.getProduct();
                      },
                      child: Text('Retry'))
                ],
              ),
            );
          }
        }
      } else if (ordersSingleViewGDController.loadingBool.value == true) {
        return Center(
          child: Column(
            children: [HeadingText(text: 'Loading..')],
          ),
        );
      }
    } else if (ordersSingleViewGDController.networkStatus.value == false) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: HeadingText(
                text: 'No Internet Connection',
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  ordersSingleViewGDController.getProduct();
                },
                child: Text('Retry'))
          ],
        ),
      );
    }
  }
}
