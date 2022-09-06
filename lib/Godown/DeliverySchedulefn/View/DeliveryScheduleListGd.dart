import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:stecon_godown_storekeepe_uppermanager/CustomFont/BoldText.dart';
import 'package:stecon_godown_storekeepe_uppermanager/Godown/DeliverySchedulefn/View/DeliveryScheduleSingleViewGd.dart';

import '../../../CustomFont/Header.dart';
import '../../../CustomFont/Heading.dart';
import '../../../CustomFont/NormalText.dart';
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
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: 17,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Obx(() => _body()),
    );
  }

  _body() {
    if (_deliveryScheduleListGdController.networkStatus == true) {
      if (_deliveryScheduleListGdController.loadingBool == false) {
        if (_deliveryScheduleListGdController
                .deliveryScheduleListEntity.value.response ==
            "success") {
          if (_deliveryScheduleListGdController.deliveryScheduleListEntity.value
                  .deliveryschedulelist!.length ==
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
                            return Column(
                              children: [
                                Material(
                                  borderRadius: BorderRadius.circular(0),
                                  elevation: 1,

                                  // shadowColor: Colors.grey,
                                  child: InkWell(
                                    onTap: () {
                                      Get.to(DeliverySchedule1GD(id:_deliveryScheduleListGdController.deliveryScheduleListEntity.value.deliveryschedulelist![index].id
                                        .toString(),));
                                    },
                                    child: Container(
                                      color: Colors.white,
                                      margin: EdgeInsets.fromLTRB(
                                          2.h, 0.h, 2.h, 2.h),
                                      child: ListTile(
                                        title: Padding(
                                          padding: EdgeInsets.only(top: 2.h),
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
                                                    style:
                                                        GoogleFonts.radioCanada(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: const Color(
                                                          0xFFEC4E52),
                                                    ),
                                                  ),
                                                  BoldText(text: _deliveryScheduleListGdController.deliveryScheduleListEntity.value.deliveryschedulelist![index].areacode.toString())
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
                                                        text: "Delivery No. :"+ _deliveryScheduleListGdController.deliveryScheduleListEntity.value.deliveryschedulelist![index].id.toString()),
                                                    NormalText(
                                                        text: 'Area Code')
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                width: double.infinity,
                                                child: ElevatedButton(
                                                  onPressed: () {},
                                                  child: Text('Update Status'),
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    primary:
                                                        const Color(0xFFEC4E52),
                                                  ),
                                                ),
                                              ),
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
          }
        } else {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: HeadingText(
                    text: _deliveryScheduleListGdController
                        .deliveryScheduleListEntity.value.response
                        .toString(),
                  ),
                ),
                ElevatedButton(
                    onPressed: () async {
                      _deliveryScheduleListGdController.getDeliverySchedule();
                    },
                    child: Text('Retry'))
              ],
            ),
          );
        }
      } else if (_deliveryScheduleListGdController!.loadingBool.value == true) {
        return Center(
          child: Column(
            children: [HeadingText(text: 'Loading..')],
          ),
        );
      }
    } else if (_deliveryScheduleListGdController!.networkStatus.value ==
        false) {
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
                  _deliveryScheduleListGdController!.getDeliverySchedule();
                },
                child: Text('Retry'))
          ],
        ),
      );
    }
  }
}
