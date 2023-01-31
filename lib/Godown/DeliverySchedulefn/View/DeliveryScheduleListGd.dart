import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:stecon_godown_storekeepe_uppermanager/CustomFont/BoldText.dart';
import 'package:stecon_godown_storekeepe_uppermanager/CustomFont/NormalTextGreen.dart';
import 'package:stecon_godown_storekeepe_uppermanager/Godown/DeliverySchedulefn/View/DeliveryScheduleSingleViewGd.dart';

import '../../../AppConstants/ClourConstants.dart';
import '../../../CustomFont/Header.dart';
import '../../../CustomFont/Heading.dart';
import '../../../CustomFont/NormalText.dart';
import '../../../CustomWidget/Nodata.dart';
import '../../../CustomWidget/RetryButton.dart';
import '../Controller/DeliveryScheduleListtController.dart';

class DeliveryScheduleGD extends StatelessWidget {
  DeliveryScheduleGD({Key? key}) : super(key: key);

  late final _deliveryScheduleListGdController =
      Get.put(DeliveryScheduleListGdController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7FBFC),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Header(
          text: 'Delivery Schedule',
        ),
        centerTitle: true,
        // actions: [
        //   Container(
        //     alignment: Alignment.center,
        //       margin: EdgeInsets.only(left: 1.h),
        //       child: NormalText(text: 'Select All')),
        //   Obx(() => Checkbox(
        //       value: _deliveryScheduleListGdController.allSelect.value,
        //       activeColor: ColorConstants.appThemeColorRed,
        //       onChanged: (value) {
        //         _deliveryScheduleListGdController.allSelect.value = value!;
        //         _deliveryScheduleListGdController.allSelect.refresh();
        //         print(_deliveryScheduleListGdController.allSelect.value
        //             .toString());
        //         if (value == true) {
        //           if (_deliveryScheduleListGdController.itemList!.length != 0) {
        //             for (int i = 0;
        //                 i < _deliveryScheduleListGdController.itemList.length;
        //                 i++) {
        //               _deliveryScheduleListGdController.itemList.value[i] =
        //                   true;
        //               _deliveryScheduleListGdController.itemList.refresh();
        //             }
        //           }
        //         } else if (value == false) {
        //           if (_deliveryScheduleListGdController.itemList!.length != 0) {
        //             for (int i = 0;
        //                 i < _deliveryScheduleListGdController.itemList.length;
        //                 i++) {
        //               _deliveryScheduleListGdController.itemList.value[i] =
        //                   false;
        //               _deliveryScheduleListGdController.itemList.refresh();
        //             }
        //           }
        //         }
        //       }))
        // ],
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
      body: Obx(
        () => RefreshIndicator(
            onRefresh: () async {
              _deliveryScheduleListGdController.getDeliverySchedule();
            },
            child: _body()),
      ),
    );
  }

  _body() {
    if (_deliveryScheduleListGdController.networkStatus.value == true) {
      if (_deliveryScheduleListGdController.loadingBool.value == false) {
        if (_deliveryScheduleListGdController
                .deliveryScheduleListEntity.value ==
            null) {
          return Container(
            child: Text('Null value'),
          );
        } else if (_deliveryScheduleListGdController
                .deliveryScheduleListEntity.value !=
            null) {
          if (_deliveryScheduleListGdController
                  .deliveryScheduleListEntity.value.response ==
              "success") {
            if (_deliveryScheduleListGdController.deliveryScheduleListEntity
                    .value.deliveryschedulelist!.length ==
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
            } else if (_deliveryScheduleListGdController
                    .deliveryScheduleListEntity
                    .value
                    .deliveryschedulelist!
                    .length !=
                0) {
              return ListView(
                children: [
                  SizedBox(
                    height: 2.h,
                  ),
                  Container(
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: Colors.white,
                          child: ListView.separated(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: _deliveryScheduleListGdController
                                .deliveryScheduleListEntity
                                .value
                                .deliveryschedulelist!
                                .length,
                            itemBuilder: (BuildContext context, int index) {
                              Color prioColor = Colors.yellow;
                              String prioText = "Low";
                              if (_deliveryScheduleListGdController
                                      .deliveryScheduleListEntity
                                      .value
                                      .deliveryschedulelist![index]
                                      .priority ==
                                  "True") {
                                prioColor = Colors.green;
                                prioText = "High";
                              }
                              return Column(
                                children: [
                                  Material(
                                    borderRadius: BorderRadius.circular(0),
                                    elevation: 1,

                                    // shadowColor: Colors.grey,
                                    child: InkWell(
                                      onTap: () {
                                        Get.to(
                                            DeliverySchedule1GD(
                                              id: _deliveryScheduleListGdController
                                                  .deliveryScheduleListEntity
                                                  .value
                                                  .deliveryschedulelist![
                                              index]
                                                  .id
                                                  .toString(),
                                            ));
                                      },
                                      child: Container(
                                        color: Colors.white,
                                        margin: EdgeInsets.fromLTRB(
                                            2.h, 0.h, 2.h, 1.h),
                                        child: ListTile(
                                          title: Padding(
                                            padding: EdgeInsets.only(top: 1.h),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      _deliveryScheduleListGdController
                                                          .deliveryScheduleListEntity
                                                          .value
                                                          .deliveryschedulelist![
                                                              index]
                                                          .distributorname
                                                          .toString(),
                                                      style: GoogleFonts
                                                          .radioCanada(
                                                        fontSize: 17,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: const Color(
                                                            0xFFEC4E52),
                                                      ),
                                                    ),
                                                    // Obx(() => Checkbox(
                                                    //     activeColor:
                                                    //         ColorConstants
                                                    //             .appThemeColorRed,
                                                    //     value:
                                                    //         _deliveryScheduleListGdController
                                                    //             .itemList
                                                    //             .value[index],
                                                    //     onChanged: (value) {
                                                    //       _deliveryScheduleListGdController
                                                    //               .itemList
                                                    //               .value[index] =
                                                    //           value!;
                                                    //       _deliveryScheduleListGdController
                                                    //           .itemList
                                                    //           .refresh();
                                                    //       if (_deliveryScheduleListGdController
                                                    //           .itemList
                                                    //           .contains(false)) {
                                                    //         _deliveryScheduleListGdController
                                                    //             .allSelect
                                                    //             .value = false;
                                                    //       }
                                                    //     })),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0.h, 1.h, 0.h, 1.5.h),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      NormalText(
                                                          text: "Delivery No. :" +
                                                              _deliveryScheduleListGdController
                                                                  .deliveryScheduleListEntity
                                                                  .value
                                                                  .deliveryschedulelist![
                                                                      index]
                                                                  .id
                                                                  .toString()),
                                                      // NormalText(
                                                      //     text: 'Area Code')
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0.h, 0.h, 0.h, 1.5.h),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      NormalText(
                                                          text: "Area Code :" +
                                                              _deliveryScheduleListGdController
                                                                  .deliveryScheduleListEntity
                                                                  .value
                                                                  .deliveryschedulelist![
                                                                      index]
                                                                  .areacode
                                                                  .toString()),
                                                      // NormalText(
                                                      //     text: 'Area Code')
                                                    ],
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    NormalText(
                                                        text: 'Priority : '),
                                                    NormalText(text: prioText),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          left: 1.h),
                                                      width: 2.h,
                                                      height: 2.h,
                                                      decoration: BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          color: prioColor),
                                                    )
                                                  ],
                                                ),
                                                // Container(
                                                //   width: double.infinity,
                                                //   child: ElevatedButton(
                                                //     onPressed: () {
                                                //
                                                //     },
                                                //     child:
                                                //         Text('Update Status'),
                                                //     style: ElevatedButton
                                                //         .styleFrom(
                                                //       primary: const Color(
                                                //           0xFFEC4E52),
                                                //     ),
                                                //   ),
                                                // ),
                                                SizedBox(
                                                  height: 1.h,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  // SizedBox(
                                  //   height: 2.h,
                                  // )
                                ],
                              );
                            },
                            separatorBuilder: (context, index) {
                              return SizedBox();
                            },
                          ),
                        ),
                        // SizedBox(height:2.h ,),
                      ],
                    ),
                  )
                ],
              );
            } else if (_deliveryScheduleListGdController
                    .deliveryScheduleListEntity.value.response ==
                'null') {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [HeadingText(text: 'Please Wait...')],
                ),
              );
            }
          } else {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Nodata(response: 'No Data'),
                  RetryButton(onTap: () {
                    print('ass');
                    _deliveryScheduleListGdController.checkNetworkStatus();
                    _deliveryScheduleListGdController.getDeliverySchedule();
                  })
                ],
              ),
            );
          }
        }
      } else if (_deliveryScheduleListGdController.loadingBool.value == true) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                color: ColorConstants.appThemeColorRed,
              ),
              HeadingText(text: 'Loading..'),
            ],
          ),
        );
      }
    } else if (_deliveryScheduleListGdController.networkStatus.value == false) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Nodata(response: 'No Internet Connection'),
            RetryButton(onTap: () {
              print('ass');
              _deliveryScheduleListGdController.checkNetworkStatus();
              _deliveryScheduleListGdController.getDeliverySchedule();
            })
          ],
        ),
      );
    }
  }
}
