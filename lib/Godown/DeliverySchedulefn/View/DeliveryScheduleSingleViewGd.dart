import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:stecon_godown_storekeepe_uppermanager/CustomFont/BoldText.dart';
import 'package:stecon_godown_storekeepe_uppermanager/CustomWidget/CustomBox1.dart';
import 'package:stecon_godown_storekeepe_uppermanager/CustomWidget/CustomSnackBar.dart';
import 'package:stecon_godown_storekeepe_uppermanager/Godown/DeliverySchedulefn/Controller/DeliveryScxheduleSingleViewController.dart';

import '../../../CustomFont/Header.dart';
import '../../../CustomFont/Heading.dart';
import '../../../CustomFont/NormalText.dart';
import '../../../CustomFont/SubHeading.dart';
import '../../../CustomWidget/CustomBox.dart';

class DeliverySchedule1GD extends StatelessWidget {
  final String id;

  DeliverySchedule1GD({Key? key, required this.id}) : super(key: key);

  late final _controller =
      Get.put(DeliveryScheduleSingleViewController(id: id));

  // final size1controller = TextEditingController();
  // final size2controller = TextEditingController();
  // final size3controller = TextEditingController();
  // final size4controller = TextEditingController();
  // final size5controller = TextEditingController();
  // final size6controller = TextEditingController();
  // final size7controller = TextEditingController();
  // final size8controller = TextEditingController();
  // final size9controller = TextEditingController();
  // final size10controller = TextEditingController();
  // final size11controller = TextEditingController();
  // final size12controller = TextEditingController();
  // final size13controller = TextEditingController();

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
      body: Obx(() => _body()),
      bottomNavigationBar: Container(
        margin: EdgeInsets.fromLTRB(2.h, 0, 0, 2.h),
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            _controller.updateOrder();
          },
          child: Text('Update'),
          style: ElevatedButton.styleFrom(
            primary: const Color(0xFFEC4E52),
          ),
        ),
      ),
    );
  }

  _body() {
    if (_controller.networkStatus.value == true) {
      if (_controller.loadingBool.value == false) {
        if (_controller
                .deliveryScheduleSingleViewGdEntity.value ==
            null) {
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
                ElevatedButton(
                    onPressed: () async {
                      _controller
                          .getDeliverySchedule();
                    },
                    child: Text('Retry'))
              ],
            ),
          );
        } else if (_controller
                .deliveryScheduleSingleViewGdEntity.value !=
            null) {
          if (_controller
                  .deliveryScheduleSingleViewGdEntity.value.response ==
              "success") {
            if (_controller
                    .deliveryScheduleSingleViewGdEntity
                    .value
                    .deliveryschedule!
                    .length ==
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
                    .deliveryScheduleSingleViewGdEntity
                    .value
                    .deliveryschedule!
                    .length !=
                0) {
              return ListView(
                children: [
                  SizedBox(
                    height: 2.h,
                  ),
                  Column(
                    children: [
                      Material(
                        borderRadius: BorderRadius.circular(0),
                        elevation: 0,
                        // shadowColor: Colors.grey,
                        child: Container(
                          color: Colors.white,
                          margin: EdgeInsets.fromLTRB(2.h, 0.h, 2.h, 2.h),
                          child: ListTile(
                            title: Padding(
                              padding: EdgeInsets.only(top: 2.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      NormalText(text: "Distributor :"),
                                      BoldText(
                                          text: _controller
                                              .deliveryScheduleSingleViewGdEntity
                                              .value
                                              .deliveryschedule![0]
                                              .areacode
                                              .toString())
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(
                                        0.h, 1.h, 0.h, 1.5.h),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          _controller
                                              .deliveryScheduleSingleViewGdEntity
                                              .value
                                              .deliveryschedule![0]
                                              .customername
                                              .toString(),
                                          style: GoogleFonts.radioCanada(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500,
                                            color: const Color(0xFFEC4E52),
                                          ),
                                        ),
                                        NormalText(text: 'Area Code')
                                      ],
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
                      // SizedBox(
                      //   height: 2.h,
                      // )
                    ],
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
                          itemCount: _controller
                              .deliveryScheduleSingleViewGdEntity
                              .value
                              .deliveryschedule!
                              .length,
                          itemBuilder: (BuildContext context, int index) {
                            final categoryController = TextEditingController();
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
                            size7controller.text =
                                _controller
                                    .deliveryScheduleSingleViewGdEntity
                                    .value
                                    .deliveryschedule![index]
                                    .box
                                    .toString();
                            // var boxController=TextEditingController();
                            // boxController.text=_deliveryScheduleSingleViewController.deliveryScheduleSingleViewGdEntity.value.deliveryschedule![index].box.toString();
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
                                                _controller
                                                    .deliveryScheduleSingleViewGdEntity
                                                    .value
                                                    .deliveryschedule![index]
                                                    .productname
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
                                            NormalText(
                                                text: _controller
                                                        .deliveryScheduleSingleViewGdEntity
                                                        .value
                                                        .deliveryschedule![
                                                            index]
                                                        .colorname
                                                        .toString() +
                                                    ", " +
                                                    _controller
                                                        .deliveryScheduleSingleViewGdEntity
                                                        .value
                                                        .deliveryschedule![
                                                            index]
                                                        .categoryname
                                                        .toString()),
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
                                                      Row(
                                                        children: [
                                                          Expanded(
                                                            child: CustomBox1(
                                                              controller:
                                                              _controller
                                                                  .size1controller,
                                                              label: "Size-1",
                                                              Enabled:
                                                              _controller
                                                                  .enable1.value,
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: CustomBox1(
                                                              controller:
                                                              _controller
                                                                  .size2controller,
                                                              label: "Size-2",
                                                              Enabled:
                                                              _controller
                                                                  .enable2.value,
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: CustomBox1(
                                                              controller:
                                                              _controller
                                                                  .size3controller,
                                                              label: "Size-3",
                                                              Enabled:
                                                              _controller
                                                                  .enable3.value,
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
                                                          _controller
                                                              .size4controller,
                                                          label: "Size-4",
                                                          Enabled: _controller
                                                              .enable4.value,
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: CustomBox1(
                                                          controller:
                                                          _controller
                                                              .size5controller,
                                                          label: "Size-5",
                                                          Enabled: _controller
                                                              .enable5.value,
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: CustomBox1(
                                                          controller:
                                                          _controller
                                                              .size6controller,
                                                          label: "Size-6",
                                                          Enabled: _controller
                                                              .enable6.value,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: CustomBox1(
                                                          controller:
                                                          _controller
                                                              .size7controller,
                                                          label: "Size-7",
                                                          Enabled: _controller
                                                              .enable7.value,
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: CustomBox1(
                                                          controller:
                                                          _controller
                                                              .size8controller,
                                                          label: "Size-8",
                                                          Enabled: _controller
                                                              .enable8.value,
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: CustomBox1(
                                                          controller:
                                                          _controller
                                                              .size9controller,
                                                          label: "Size-9",
                                                          Enabled: _controller
                                                              .enable9.value,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: CustomBox1(
                                                          controller:
                                                          _controller
                                                              .size10controller,
                                                          label: "Size-10",
                                                          Enabled: _controller
                                                              .enable10.value,
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: CustomBox1(
                                                          controller:
                                                          _controller
                                                              .size11controller,
                                                          label: "Size-11",
                                                          Enabled: _controller
                                                              .enable11.value,
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: CustomBox1(
                                                          controller:
                                                          _controller
                                                              .size12controller,
                                                          label: "Size-12",
                                                          Enabled: _controller
                                                              .enable12.value,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: CustomBox1(
                                                          controller: _controller
                                                              .size13controller,
                                                          label: "Size-13",
                                                          Enabled: _controller
                                                              .enable13.value,
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
                                                                  'Box : '),
                                                              SizedBox(
                                                                height: 2.h,
                                                              ),
                                                              NormalText(
                                                                  text:
                                                                  'Total Pair : '),
                                                              SizedBox(
                                                                height: 2.h,
                                                              ),
                                                              NormalText(
                                                                  text:
                                                                  'Delivery box : '),
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
                                                                  text: _controller
                                                                      .deliveryScheduleSingleViewGdEntity
                                                                      .value
                                                                      .deliveryschedule![
                                                                  index]
                                                                      .box
                                                                      .toString()),
                                                              SizedBox(
                                                                height: 2.h,
                                                              ),
                                                              BoldText(
                                                                  text: _controller
                                                                      .deliveryScheduleSingleViewGdEntity
                                                                      .value
                                                                      .deliveryschedule![
                                                                  index]
                                                                      .pair
                                                                      .toString()),
                                                              SizedBox(
                                                                height: 2.h,
                                                              ),

// BoldText(
//     text: _deliveryScheduleSingleViewController
//         .deliveryScheduleSingleViewGdEntity
//         .value
//         .deliveryschedule![
//     index]
//         .
//         .toString()),
                                                              SizedBox(
                                                                height: 2.h,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 2.8.h),
                                                    child: Align(
                                                      alignment:
                                                      Alignment.centerLeft,
                                                      child: InkWell(
                                                        onTap: () {
                                                          editDialog(
                                                              context,
                                                              index,
                                                              _controller
                                                                  .deliveryScheduleSingleViewGdEntity
                                                                  .value
                                                                  .deliveryschedule![
                                                              index]
                                                                  .box
                                                                  .toString());
                                                        },
                                                        child: BoldText(
                                                          text: 'Edit',
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 1.h,
                                                  ),
                                                  // SizedBox(
                                                  //   height: 4.h,
                                                  // ),
                                                ]),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
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
                  )),
                ],
              );
            }

            else if (_controller
                .deliveryScheduleSingleViewGdEntity.value.response == 'null') {
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
                  Container(
                    child: HeadingText(
                      text: _controller
                          .deliveryScheduleSingleViewGdEntity.value.response
                          .toString(),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        _controller
                            .getDeliverySchedule();
                      },
                      child: Text('Retry'))
                ],
              ),
            );
          }
        }
          // else {
        //   return Center(
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       crossAxisAlignment: CrossAxisAlignment.center,
        //       children: [
        //         Container(
        //           child: HeadingText(
        //             text: _deliveryScheduleSingleViewController
        //                 .deliveryScheduleSingleViewGdEntity.value.response
        //                 .toString(),
        //           ),
        //         ),
        //         ElevatedButton(
        //             onPressed: () async {
        //               _deliveryScheduleSingleViewController
        //                   .getDeliverySchedule();
        //             },
        //             child: Text('Retry'))
        //       ],
        //     ),
        //   );
        // }
      } else if (_controller.loadingBool.value ==
          true) {
        return Center(
          child: Column(
            children: [HeadingText(text: 'Loading..')],
          ),
        );
      }
    } else if (_controller!.networkStatus.value ==
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
                  _controller!.getDeliverySchedule();
                },
                child: Text('Retry'))
          ],
        ),
      );
    }
  }

  Future<void> editDialog(BuildContext context, int index, String no) async {
    final boxController = TextEditingController();
    boxController.text = no;
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text(
                'Update No Of Boxes',
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.center,
              ),
              content: CustomBox1(
                controller: boxController,
                Enabled: true,
                label: 'No Of Boxes',
              ),
              contentPadding: EdgeInsets.only(top: 2.h, left: 3.h, right: 3.h),
              actionsAlignment: MainAxisAlignment.center,
              // actionsPadding: EdgeInsets.only(bottom: 1.h),
              actions: [
                Padding(
                  padding: EdgeInsets.only(left: 3.h, right: 3.h, bottom: 2.h),
                  child: SizedBox(
                    width: double.infinity,
                    height: 5.h,
                    child: ElevatedButton(
                      onPressed: () {
                        var numberOne = int.parse(
                            _controller
                                .deliveryScheduleSingleViewGdEntity
                                .value
                                .deliveryschedule![index]
                                .box
                                .toString());
                        var numberTwo =
                            int.parse(boxController.text.toString());
                        if (boxController.text.isNotEmpty &&
                            boxController.text.toString() != '0') {
                          if (numberTwo <= numberOne) {
                            _controller
                                .deliveryScheduleSingleViewGdEntity
                                .value
                                .deliveryschedule![index]
                                .box = boxController.text.toString();
                            _controller
                                .deliveryScheduleSingleViewGdEntity
                                .refresh();
                            Get.back();
                          }
                          else {
                            CustomSnackbar().InfoSnackBar("Wrong..!", "Entered Value must be equal to or less than Box no.");
                          }
                        } else {
                          CustomSnackbar().InfoSnackBar("wrong...!", "Enter value>0");
                        }
                      },
                      child: Text(
                        "Okay",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0xFFEC4E52),
                          textStyle: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ],
            ));
  }

// Future openDialog(BuildContext context) =>
//     showDialog(
//     context: context,
//     builder: (context) => AlertDialog(
//           title: Text(
//             'Update No Of Boxes',
//             style: TextStyle(fontSize: 15),
//             textAlign: TextAlign.center,
//           ),
//           content:CustomBox1(controller: , Enabled: null, label: 'No Of Boxes',) ,
//           contentPadding: EdgeInsets.only(top: 4.h, left: 3.h, right: 3.h),
//           actionsAlignment: MainAxisAlignment.center,
//           // actionsPadding: EdgeInsets.only(bottom: 1.h),
//           actions: [
//             SizedBox(
//               width: double.infinity,
//               height: 5.h,
//               child: ElevatedButton(
//                 onPressed: () {},
//                 child: Text(
//                   "Continue with Order",
//                   style: TextStyle(color: Colors.white, fontSize: 14),
//                 ),
//                 style: ElevatedButton.styleFrom(
//                     primary: const Color(0xFFEC4E52),
//                     textStyle:
//                     TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
//               ),
//             )
//           ],
//         ));
}
