import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../CustomFont/Header.dart';
import '../../../CustomFont/Heading.dart';
import '../../../CustomFont/NormalText.dart';
import '../../../CustomFont/SubHeading.dart';
import '../../../CustomWidget/CustomBox1.dart';
import '../Controller/OrderListProductSingleController.dart';

class OrderListProductSingle extends StatelessWidget {
  final String id;
  final String orderno;
  final String orderid;
   OrderListProductSingle({Key? key, required this.id, required this.orderno, required this.orderid}) : super(key: key);
  late final _controller=Get.put(OrderListProductController(id: id,orderid: orderid,orderno: orderno));

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        Get.back();
        return true;
      },
      child: Scaffold(
        backgroundColor: const Color(0xFFF7FBFC),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 0,
          title: Header(
            text: 'Orders',
          ),
          // Text(
          //   'Add Orders',
          //   style: TextStyle(fontSize: 18, color: Colors.black87),
          // ),
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
        body: SingleChildScrollView(child: Obx(() => _body())),
      ),
    );

  }

  _body() {
    if (_controller.networkStatus.value == true) {
      if (_controller.loadingBool.value == false) {
        if (_controller
            .historySingleViewDisEntity.value ==
            null) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Text("Null Value"),
              ),
            ],
          );
        }
        else if (_controller
            .historySingleViewDisEntity.value !=
            null) {
          if (_controller
              .historySingleViewDisEntity.value.response ==
              "Success") {
            if (_controller
                .historySingleViewDisEntity.value.orderproductlist!.length ==
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
            } else if (_controller
                .historySingleViewDisEntity.value.orderproductlist!.length !=
                0) {
              return ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 2.h,
                      ),
                      Container(
                        color: Colors.white,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(2.h, 2.h, 2.h, 4.h),
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  NormalText(text: "Order no:"),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(
                                        0.h, 0.h, 0.h, 1.5.h),
                                    child: Text(
                                      _controller
                                          .historySingleViewDisEntity
                                          .value
                                          .orderproductlist![0]
                                          .orderno
                                          .toString(),
                                      style: GoogleFonts.radioCanada(
                                        fontSize: 17,
                                        color: const Color(0xFFEC4E52),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Row(
                              //   mainAxisAlignment:
                              //   MainAxisAlignment.spaceBetween,
                              //   children: [
                              //     NormalText(text: "Ordered Date:"),
                              //     NormalText(text: ""),
                              //   ],
                              // ),
                              // Row(
                              //   mainAxisAlignment:
                              //   MainAxisAlignment.spaceBetween,
                              //   children: [
                              //     NormalText(
                              //       text: _controller
                              //           .historySingleViewDisEntity
                              //           .value
                              //           .orderproductlist![0]
                              //           .
                              //           .toString(),
                              //     ),
                              //     NormalText(text: ""),
                              //   ],
                              // ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(0.h, 1.h, 0.h, 0.h),
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // HeadingText(text: "2115-BROWN-GENTS"),
                                Text(
                                  _controller
                                      .historySingleViewDisEntity
                                      .value
                                      .orderproductlist![0]
                                      .artno
                                      .toString(),
                                  style: GoogleFonts.radioCanada(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue[200]),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        child: Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              0.h, 3.h, 0.h, 0.h),
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              NormalText(text: "Category: "),
                                              SizedBox(
                                                height: 2.h,
                                              ),
                                              NormalText(text: "Color: "),
                                              SizedBox(
                                                height: 2.h,
                                              ),
                                              NormalText(text: "Size: "),
                                              SizedBox(
                                                height: 2.h,
                                              ),
                                              NormalText(text: "Pair: "),
                                              SizedBox(
                                                height: 2.h,
                                              ),
                                              NormalText(text: "Box: "),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        child: Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              2.h, 3.h, 0.h, 0.h),
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              NormalText(
                                                text: _controller
                                                    .historySingleViewDisEntity
                                                    .value
                                                    .orderproductlist![0]
                                                    .category
                                                    .toString(),
                                              ),
                                              SizedBox(
                                                height: 2.h,
                                              ),
                                              NormalText(
                                                text: _controller
                                                    .historySingleViewDisEntity
                                                    .value
                                                    .orderproductlist![0]
                                                    .color
                                                    .toString(),
                                              ),
                                              SizedBox(
                                                height: 2.h,
                                              ),
                                              NormalText(
                                                text: _controller
                                                    .historySingleViewDisEntity
                                                    .value
                                                    .orderproductlist![0]
                                                    .size
                                                    .toString(),
                                              ),
                                              SizedBox(
                                                height: 2.h,
                                              ),
                                              NormalText(
                                                text: _controller
                                                    .historySingleViewDisEntity
                                                    .value
                                                    .orderproductlist![0]
                                                    .pair
                                                    .toString(),
                                              ),
                                              SizedBox(
                                                height: 2.h,
                                              ),
                                              NormalText(
                                                text: _controller
                                                    .historySingleViewDisEntity
                                                    .value
                                                    .orderproductlist![0]
                                                    .box
                                                    .toString(),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )),
                      Container(
                        color: Colors.white,
                        margin: EdgeInsets.fromLTRB(0.h, 1.h, 0.h, 0.h),
                        child: Container(
                          color: Colors.white,
                          margin: EdgeInsets.fromLTRB(2.h, 2.h, 2.h, 0.h),
                          child: Column(children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                  EdgeInsets.fromLTRB(0.h, 0.h, 0.h, 0.h),
                                  child: SubHeadingText(text: "Size Details"),
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                GridView.count(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  crossAxisCount: 3,
                                  mainAxisSpacing: 1,
                                  crossAxisSpacing: 1,
                                  childAspectRatio: 2,
                                  children: _controller.sizeListGrid,

                                ),
                                // Row(
                                //   children: [
                                //     Expanded(
                                //       child: CustomBox1(
                                //         controller:
                                //         _controller
                                //             .size1controller,
                                //         label: "Size-1",
                                //         Enabled:
                                //         _controller
                                //             .enable1.value,
                                //       ),
                                //     ),
                                //     Expanded(
                                //       child: CustomBox1(
                                //         controller:
                                //         _controller
                                //             .size2controller,
                                //         label: "Size-2",
                                //         Enabled:
                                //         _controller
                                //             .enable2.value,
                                //       ),
                                //     ),
                                //     Expanded(
                                //       child: CustomBox1(
                                //         controller:
                                //         _controller
                                //             .size3controller,
                                //         label: "Size-3",
                                //         Enabled:
                                //         _controller
                                //             .enable3.value,
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
                            //         _controller
                            //             .size4controller,
                            //         label: "Size-4",
                            //         Enabled: _controller
                            //             .enable4.value,
                            //       ),
                            //     ),
                            //     Expanded(
                            //       child: CustomBox1(
                            //         controller:
                            //         _controller
                            //             .size5controller,
                            //         label: "Size-5",
                            //         Enabled: _controller
                            //             .enable5.value,
                            //       ),
                            //     ),
                            //     Expanded(
                            //       child: CustomBox1(
                            //         controller:
                            //         _controller
                            //             .size6controller,
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
                            //         _controller
                            //             .size7controller,
                            //         label: "Size-7",
                            //         Enabled: _controller
                            //             .enable7.value,
                            //       ),
                            //     ),
                            //     Expanded(
                            //       child: CustomBox1(
                            //         controller:
                            //         _controller
                            //             .size8controller,
                            //         label: "Size-8",
                            //         Enabled: _controller
                            //             .enable8.value,
                            //       ),
                            //     ),
                            //     Expanded(
                            //       child: CustomBox1(
                            //         controller:
                            //         _controller
                            //             .size9controller,
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
                            //         _controller
                            //             .size10controller,
                            //         label: "Size-10",
                            //         Enabled: _controller
                            //             .enable10.value,
                            //       ),
                            //     ),
                            //     Expanded(
                            //       child: CustomBox1(
                            //         controller:
                            //         _controller
                            //             .size11controller,
                            //         label: "Size-11",
                            //         Enabled: _controller
                            //             .enable11.value,
                            //       ),
                            //     ),
                            //     Expanded(
                            //       child: CustomBox1(
                            //         controller:
                            //         _controller
                            //             .size12controller,
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
                            //         controller: _controller
                            //             .size13controller,
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
                            SizedBox(
                              height: 4.h,
                            ),
                          ]),
                        ),
                      )
                    ],
                  )
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
                      text: _controller
                          .historySingleViewDisEntity.value.response
                          .toString(),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        _controller.getHistory();
                      },
                      child: Text('Retry'))
                ],
              ),
            );
          }
        }
      } else if (_controller.loadingBool.value == true) {
        return Center(
          child: Column(
            children: [HeadingText(text: 'Loading..')],
          ),
        );
      }
    } else if (_controller.networkStatus.value == false) {
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
                  _controller.getHistory();
                },
                child: Text('Retry'))
          ],
        ),
      );
    }
  }

}
