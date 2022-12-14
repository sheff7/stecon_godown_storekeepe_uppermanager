import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperReturnCount/Controller/ViewUpperReturnSingleController.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperReturnCount/View/EditUpperReturn.dart';

import '../../../AppConstants/ClourConstants.dart';
import '../../../CustomFont/Header.dart';
import '../../../CustomFont/Heading.dart';
import '../../../CustomFont/NormalText.dart';
import '../../../CustomFont/SubHeading.dart';
import '../../../CustomWidget/CustomBox1.dart';
import '../../../CustomWidget/Nodata.dart';
import '../../../CustomWidget/RetryButton.dart';

class ViewUpperReturnSingle extends StatelessWidget {
  final String id;
  final String orderId;
  final String orderNo;
  final String supplierId;
   ViewUpperReturnSingle({Key? key, required this.id, required this.orderId, required this.orderNo, required this.supplierId}) : super(key: key);
   late final _controller=Get.put(ViewUpperReturnSingleController(id: id, orderId: orderId, orderNo: orderNo, supplierId: supplierId));

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.back();
        return true;
      },
      child: RefreshIndicator(
        color: ColorConstants.appThemeColorRed,
        onRefresh: ()async{
          _controller.checkNetworkStatus();
          _controller.getUpperOrder();
        },
        child: Scaffold(
            backgroundColor: const Color(0xFFF7FBFC),
            appBar: AppBar(
              iconTheme: IconThemeData(color: Colors.black),
              backgroundColor: Colors.white,
              elevation: 0,
              actions: [
                // IconButton(
                //   icon: Icon(
                //     Icons.edit,
                //     size: 17,
                //   ),
                //   onPressed: () {
                //     Get.back();
                //   },
                // ),
              ],
              title: Header(
                text: 'Upper Return Count',
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
            body: Obx(() => _body())),
      ),
    );

  }

  _body() {
    if(_controller.networkStatus.value==true){
      if (_controller.loadingBool.value == true) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircularProgressIndicator(color: ColorConstants.appThemeColorRed,),
              HeadingText(text: 'Loading..'),
            ],
          ),
        );
      } else if (_controller.loadingBool.value == false) {
        if (_controller.orderNoEntity.value == null || _controller.orderNoEntity.value.response=='null') {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Nodata(response: 'No Data'),
                RetryButton(onTap: () {
                  _controller.checkNetworkStatus();
                  _controller.getUpperOrder();
                })
              ],
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
                    margin: EdgeInsets.fromLTRB(3.h, 3.h, 3.h, 3.h),
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            HeadingText(
                              text: _controller.orderNoEntity.value
                                  .upperreturnlist![0].name
                                  .toString(),
                            ),
                          ],
                        ),
                        SizedBox(height: 2.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            NormalText(
                                text: 'Plan no : ' +
                                    _controller.orderNoEntity.value
                                        .upperreturnlist![0].planno
                                        .toString()),
                            Text(
                              _controller
                                  .orderNoEntity.value.upperreturnlist![0].status
                                  .toString(),
                              style: GoogleFonts.radioCanada(
                                fontSize: 15,
                                // fontWeight: FontWeight.bold,
                                color: const Color(0xFF4FE138),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            NormalText(
                                text: 'Order No : ' +
                                    _controller.orderNoEntity.value
                                        .upperreturnlist![0].orderno
                                        .toString()),
                            // NormalText(
                            //     text: _controller.orderNoEntity.value
                            //         .upperreturnlist![0].orderid
                            //         .toString())
                          ],
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            NormalText(
                                text: 'Type : ' +
                                    _controller.orderNoEntity.value
                                        .upperreturnlist![0].type
                                        .toString()),
                            // NormalText(
                            //     text: _controller.orderNoEntity.value
                            //         .upperreturnlist![0].orderid
                            //         .toString())
                          ],
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            NormalText(
                                text: 'Company Plan No : ' +
                                    _controller.orderNoEntity.value
                                        .upperreturnlist![0].companyplanno
                                        .toString()),
                            // NormalText(
                            //     text: _controller.orderNoEntity.value
                            //         .upperreturnlist![0].orderid
                            //         .toString())
                          ],
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            NormalText(
                                text: 'Status : ' +
                                    _controller.orderNoEntity.value
                                        .upperreturnlist![0].status
                                        .toString()),
                            // NormalText(
                            //     text: _controller.orderNoEntity.value
                            //         .upperreturnlist![0].orderid
                            //         .toString())
                          ],
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            NormalText(
                                text: 'Date : ' +
                                    _controller.orderNoEntity.value
                                        .upperreturnlist![0].date
                                        .toString()),
                            // NormalText(
                            //     text: _controller.orderNoEntity.value
                            //         .upperreturnlist![0].orderid
                            //         .toString())
                          ],
                        ),
                        SizedBox(height: 2.h),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     NormalText(
                        //         text: "Status From Office: " +
                        //             _controller.orderNoEntity.value
                        //                 .upperreturnlist![0].status1
                        //                 .toString()),
                        //   ],
                        // ),
                        SizedBox(
                          height: 0.5.h,
                        ),
                        // NormalText(
                        //     text:
                        //     "Quisque hendrerit mi sed arcu varius, in lacinia ex scelerisque. Cras quis blandit dui"),
                        // SizedBox(
                        //   height: 2.h,
                        // ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  height: 1.5.h,
                  color: Colors.grey[200],
                ),
                Container(
                  color: const Color(0xFFF7FBFC),
                  margin: EdgeInsets.only(left: 2.h, right: 2.h),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: SubHeadingText(text: 'Counting Staff')),
                ),
                Container(
                  color: const Color(0xFFF7FBFC),
                  margin: EdgeInsets.only(left: 2.h, right: 2.h),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Wrap(
                      spacing: 6.0,
                      runSpacing: 6.0,
                      children: List<Widget>.generate(
                          _controller.dynamicChips!.length, (int index) {
                        return FilterChip(
                          selected: _controller.filters!
                              .contains(_controller.dynamicChips![index]),
                          label: Text(_controller.dynamicChips![index]),
                          onSelected: (bool value) {
                            // if (value == true) {
                            //   if (_controller.filters!.contains(
                            //       _controller.dynamicChips![index])) {
                            //   } else {
                            //     // _controller.filters!.add(_controller.dynamicChips![index]);
                            //
                            //     _controller.filters!.add(
                            //         _controller.dynamicChips![index]);
                            //   }
                            // } else if (value == false) {
                            //   _controller.filters!.remove(
                            //       _controller.dynamicChips![index]);
                            //   print(
                            //       _controller.filters!.value.toString());
                            // }
                          },
                          // onDeleted: () {
                          //   setState(() {
                          //     _dynamicChips.removeAt(index);
                          //   });
                          // },
                        );
                      }),
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                SizedBox(
                  height: 2.h,
                ),
                Container(
                  color: Colors.grey[200],
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 3.h),
                    padding: EdgeInsets.symmetric(vertical: 2.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              Text(
                                'Size',
                                style: GoogleFonts.radioCanada(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              Text(
                                'RC',
                                style: GoogleFonts.radioCanada(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              Text(
                                'OC',
                                style: GoogleFonts.radioCanada(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              Text(
                                _controller.type.value,
                                style: GoogleFonts.radioCanada(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        )
                        // BoldText(text: 'Size'),
                        // BoldText(text: 'OC'),
                        // BoldText(text: 'RC'),
                        // BoldText(text: 'DC'),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 2.h, right: 2.h),
                  child: ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: _controller.sizeListListView,
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Container(
                  margin: EdgeInsets.only(left: 2.h, right: 2.h),
                  child: SizedBox(
                    width: double.infinity,
                    height: 5.h,
                    child: ElevatedButton(
                      onPressed: () {
                      Get.to(EditUpperReturn(id: id, orderId: orderId, orderNo: orderNo, supplierId: supplierId));
                        // _controller.addCount();

                      },
                      child: Text(
                        "Edit Count",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0xFFEC4E52),
                          textStyle: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 4.h,
                )
                // Container(
                //     child: Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         Container(
                //           color: Colors.white,
                //           child: ListView.separated(
                //             shrinkWrap: true,
                //             physics: NeverScrollableScrollPhysics(),
                //             itemCount: _controller
                //                 .orderNoEntity.value.upperreturncountlist!.length,
                //             itemBuilder: (BuildContext context, int index) {
                //               final size1controller = TextEditingController();
                //               final size2controller = TextEditingController();
                //               final size3controller = TextEditingController();
                //               final size4controller = TextEditingController();
                //               final size5controller = TextEditingController();
                //               final size6controller = TextEditingController();
                //               final size7controller = TextEditingController();
                //               final size8controller = TextEditingController();
                //               final size9controller = TextEditingController();
                //               final size10controller = TextEditingController();
                //               final size11controller = TextEditingController();
                //               final size12controller = TextEditingController();
                //               final size13controller = TextEditingController();
                //               bool enable1 = false;
                //               bool enable2 = false;
                //               bool enable3 = false;
                //               bool enable4 = false;
                //               bool enable5 = false;
                //               bool enable6 = false;
                //               bool enable7 = false;
                //               bool enable8 = false;
                //               bool enable9 = false;
                //               bool enable10 = false;
                //               bool enable11 = false;
                //               bool enable12 = false;
                //               bool enable13 = false;
                //               size1controller.text = _controller
                //                   .orderNoEntity.value.upperreturncountlist![index]
                //                   .s1
                //                   .toString();
                //               size2controller.text = _controller
                //                   .orderNoEntity.value.upperreturncountlist![index]
                //                   .s2
                //                   .toString();
                //               size3controller.text = _controller
                //                   .orderNoEntity.value.upperreturncountlist![index]
                //                   .s3
                //                   .toString();
                //               size4controller.text = _controller
                //                   .orderNoEntity.value.upperreturncountlist![index]
                //                   .s4
                //                   .toString();
                //               size5controller.text = _controller
                //                   .orderNoEntity.value.upperreturncountlist![index]
                //                   .s5
                //                   .toString();
                //               size6controller.text = _controller
                //                   .orderNoEntity.value.upperreturncountlist![index]
                //                   .s6
                //                   .toString();
                //               size7controller.text = _controller
                //                   .orderNoEntity.value.upperreturncountlist![index]
                //                   .s7
                //                   .toString();
                //               size8controller.text = _controller
                //                   .orderNoEntity.value.upperreturncountlist![index]
                //                   .s8
                //                   .toString();
                //               size9controller.text = _controller
                //                   .orderNoEntity.value.upperreturncountlist![index]
                //                   .s9
                //                   .toString();
                //               size10controller.text = _controller
                //                   .orderNoEntity.value.upperreturncountlist![index]
                //                   .s10
                //                   .toString();
                //               size11controller.text = _controller
                //                   .orderNoEntity.value.upperreturncountlist![index]
                //                   .s11
                //                   .toString();
                //               size12controller.text = _controller
                //                   .orderNoEntity.value.upperreturncountlist![index]
                //                   .s12
                //                   .toString();
                //               size13controller.text = _controller
                //                   .orderNoEntity.value.upperreturncountlist![index]
                //                   .s13
                //                   .toString();
                //               size1() {
                //                 return CustomBox1(
                //                   controller: size1controller,
                //                   label: "Size-1",
                //                   Enabled: enable1,
                //                 );
                //               }
                //               size2() {
                //                 return CustomBox1(
                //                   controller: size2controller,
                //                   label: "Size-2",
                //                   Enabled: enable2,
                //                 );
                //               }
                //               size3() {
                //                 return CustomBox1(
                //                   controller: size3controller,
                //                   label: "Size-3",
                //                   Enabled: enable3,
                //                 );
                //               }
                //               size4() {
                //                 return CustomBox1(
                //                   controller: size4controller,
                //                   label: "Size-4",
                //                   Enabled: enable4,
                //                 );
                //               }
                //               size5() {
                //                 return CustomBox1(
                //                   controller: size5controller,
                //                   label: "Size-5",
                //                   Enabled: enable5,
                //                 );
                //               }
                //               size6() {
                //                 return CustomBox1(
                //                   controller: size6controller,
                //                   label: "Size-6",
                //                   Enabled: enable6,
                //                 );
                //               }
                //               size7() {
                //                 return CustomBox1(
                //                   controller: size7controller,
                //                   label: "Size-7",
                //                   Enabled: enable7,
                //                 );
                //               }
                //               size8() {
                //                 return CustomBox1(
                //                   controller: size8controller,
                //                   label: "Size-8",
                //                   Enabled: enable8,
                //                 );
                //               }
                //               size9() {
                //                 return CustomBox1(
                //                   controller: size9controller,
                //                   label: "Size-9",
                //                   Enabled: enable9,
                //                 );
                //               }
                //               size10() {
                //                 return CustomBox1(
                //                   controller: size10controller,
                //                   label: "Size-10",
                //                   Enabled: enable10,
                //                 );
                //               }
                //               size11() {
                //                 return CustomBox1(
                //                   controller: size11controller,
                //                   label: "Size-11",
                //                   Enabled: enable11,
                //                 );
                //               }
                //               size12() {
                //                 return CustomBox1(
                //                   controller: size12controller,
                //                   label: "Size-12",
                //                   Enabled: enable12,
                //                 );
                //               }
                //               size13() {
                //                 return CustomBox1(
                //                   controller: size13controller,
                //                   label: "Size-13",
                //                   Enabled: enable13,
                //                 );
                //               }
                //               List<Widget> sizeListGrid = (List<Widget>.of([])).obs;
                //               if (_controller.orderNoEntity.value.upperreturncountlist![index].s1.toString().length!=0) {
                //                 sizeListGrid.add(size1());
                //               }
                //               if (_controller.orderNoEntity.value.upperreturncountlist![index].s2.toString().length!=0) {
                //                 sizeListGrid.add(size2());
                //               }
                //               if (_controller.orderNoEntity.value.upperreturncountlist![index].s3.toString().length!=0) {
                //                 sizeListGrid.add(size3());
                //               }
                //               if (_controller.orderNoEntity.value.upperreturncountlist![index].s4.toString().length!=0) {
                //                 sizeListGrid.add(size4());
                //               }
                //               if (_controller.orderNoEntity.value.upperreturncountlist![index].s5.toString().length!=0) {
                //                 sizeListGrid.add(size5());
                //               }
                //               if (_controller.orderNoEntity.value.upperreturncountlist![index].s6.toString().length!=0) {
                //                 sizeListGrid.add(size6());
                //               }
                //               if (_controller.orderNoEntity.value.upperreturncountlist![index].s7.toString().length!=0) {
                //                 sizeListGrid.add(size7());
                //               }
                //               if (_controller.orderNoEntity.value.upperreturncountlist![index].s8.toString().length!=0) {
                //                 sizeListGrid.add(size8());
                //               }
                //               if (_controller.orderNoEntity.value.upperreturncountlist![index].s9.toString().length!=0) {
                //                 sizeListGrid.add(size9());
                //               }
                //               if (_controller.orderNoEntity.value.upperreturncountlist![index].s10.toString().length!=0) {
                //                 sizeListGrid.add(size10());
                //               }
                //               if (_controller.orderNoEntity.value.upperreturncountlist![index].s11.toString().length!=0) {
                //                 sizeListGrid.add(size11());
                //               }
                //               if (_controller.orderNoEntity.value.upperreturncountlist![index].s12.toString().length!=0) {
                //                 sizeListGrid.add(size12());
                //               }
                //               if (_controller.orderNoEntity.value.upperreturncountlist![index].s13.toString().length!=0) {
                //                 sizeListGrid.add(size13());
                //               }
                //
                //               return Column(
                //                 children: [
                //                   Material(
                //                     borderRadius: BorderRadius.circular(0),
                //                     elevation: 0,
                //                     // shadowColor: Colors.grey,
                //                     child: Container(
                //                       margin: EdgeInsets.fromLTRB(
                //                           1.h, 0.h, 1.h, 0.h),
                //                       color: Colors.white,
                //                       child: ExpansionTile(
                //                         title: Padding(
                //                           padding:
                //                           EdgeInsets.fromLTRB(0.h, 2.h, 0.h, 2.h),
                //                           child: Column(
                //                             mainAxisAlignment:
                //                             MainAxisAlignment.start,
                //                             crossAxisAlignment:
                //                             CrossAxisAlignment.start,
                //                             children: [
                //                               Padding(
                //                                 padding: EdgeInsets.only(
                //                                     top: 1.5.h),
                //                                 child: Text(
                //                                   _controller
                //                                       .orderNoEntity
                //                                       .value
                //                                       .upperreturncountlist![index]
                //                                       .planno
                //                                       .toString(),
                //                                   style: GoogleFonts.radioCanada(
                //                                       fontSize: 17,
                //                                       fontWeight: FontWeight.bold,
                //                                       color: Colors.blue[200]),
                //                                 ),
                //                               ),
                //                               SizedBox(
                //                                 height: 1.h,
                //                               ),
                //                               NormalText(
                //                                   text: _controller
                //                                       .orderNoEntity
                //                                       .value
                //                                       .upperreturnlist![index]
                //                                       .artno
                //                                       .toString()),
                //                               SizedBox(
                //                                 height: 1.h,
                //                               ),
                //                             ],
                //                           ),
                //                         ),
                //                         children: [
                //                           Column(
                //                             children: [
                //                               Container(
                //                                   margin: EdgeInsets.fromLTRB(
                //                                       0.h, 0.h, 0.h, 0.h),
                //                                   color: Colors.white,
                //                                   child: Padding(
                //                                     padding:
                //                                     const EdgeInsets.all(20.0),
                //                                     child: Column(
                //                                       crossAxisAlignment:
                //                                       CrossAxisAlignment.start,
                //                                       children: [
                //                                         // HeadingText(text: "2115-BROWN-GENTS"),
                //                                         Row(
                //                                           children: [
                //                                             Expanded(
                //                                               flex: 1,
                //                                               child: Container(
                //                                                 child: Column(
                //                                                   crossAxisAlignment:
                //                                                   CrossAxisAlignment
                //                                                       .start,
                //                                                   children: [
                //                                                     NormalText(
                //                                                         text:
                //                                                         "CompanyPlan No : "),
                //                                                     SizedBox(
                //                                                       height: 2.h,
                //                                                     ),
                //                                                     NormalText(
                //                                                         text:
                //                                                         "Plan No : "),
                //                                                     SizedBox(
                //                                                       height: 2.h,
                //                                                     ),
                //                                                     // NormalText(
                //                                                     //     text: "Size : "),
                //                                                     // SizedBox(
                //                                                     //   height: 2.h,
                //                                                     // ),
                //                                                     NormalText(
                //                                                         text:
                //                                                         "Type : "),
                //                                                     SizedBox(
                //                                                       height: 2.h,
                //                                                     ),
                //                                                     NormalText(
                //                                                         text:
                //                                                         "Date : "),
                //                                                     SizedBox(
                //                                                       height: 2.h,
                //                                                     ),
                //                                                     // NormalText(
                //                                                     //     text:
                //                                                     //     "Status From Office : "),
                //                                                     // SizedBox(
                //                                                     //   height: 2.h,
                //                                                     // ),
                //                                                   ],
                //                                                 ),
                //                                               ),
                //                                             ),
                //                                             Expanded(
                //                                               flex: 2,
                //                                               child: Container(
                //                                                 child: Padding(
                //                                                   padding: EdgeInsets
                //                                                       .fromLTRB(
                //                                                       2.h,
                //                                                       0.h,
                //                                                       0.h,
                //                                                       0.h),
                //                                                   child: Column(
                //                                                     crossAxisAlignment:
                //                                                     CrossAxisAlignment
                //                                                         .start,
                //                                                     children: [
                //                                                       NormalText(
                //                                                           text: _controller
                //                                                               .orderNoEntity
                //                                                               .value
                //                                                               .upperreturnlist![
                //                                                           index]
                //                                                               .companyplanno
                //                                                               .toString()),
                //                                                       SizedBox(
                //                                                         height: 2
                //                                                             .h,
                //                                                       ),
                //                                                       NormalText(
                //                                                           text: _controller
                //                                                               .orderNoEntity
                //                                                               .value
                //                                                               .upperreturnlist![
                //                                                           index]
                //                                                               .planno
                //                                                               .toString()),
                //                                                       SizedBox(
                //                                                         height: 2
                //                                                             .h,
                //                                                       ),
                //                                                       // NormalText(
                //                                                       //     text: "1*5"),
                //                                                       // SizedBox(
                //                                                       //   height: 2.h,
                //                                                       // ),
                //                                                       NormalText(
                //                                                           text: _controller
                //                                                               .orderNoEntity
                //                                                               .value
                //                                                               .upperreturnlist![
                //                                                           index]
                //                                                               .type
                //                                                               .toString()),
                //                                                       SizedBox(
                //                                                         height: 2
                //                                                             .h,
                //                                                       ),
                //                                                       NormalText(
                //                                                           text: _controller
                //                                                               .orderNoEntity
                //                                                               .value
                //                                                               .upperreturnlist![
                //                                                           index]
                //                                                               .date
                //                                                               .toString()),
                //                                                       SizedBox(
                //                                                         height: 2
                //                                                             .h,
                //                                                       ),
                //                                                       // NormalText(
                //                                                       //     text: _controller
                //                                                       //         .orderNoEntity
                //                                                       //         .value
                //                                                       //         .purchaseproductlist![
                //                                                       //     index]
                //                                                       //         .status1
                //                                                       //         .toString()),
                //                                                       // SizedBox(
                //                                                       //   height: 2
                //                                                       //       .h,
                //                                                       // ),
                //                                                     ],
                //                                                   ),
                //                                                 ),
                //                                               ),
                //                                             )
                //                                           ],
                //                                         ),
                //                                         Divider(
                //                                           color: Colors.grey[400],
                //                                         ),
                //                                         SizedBox(
                //                                           height: 2.h,
                //                                         ),
                //                                         // Row(
                //                                         //   children: [
                //                                         //     Expanded(
                //                                         //       flex: 1,
                //                                         //       child: Container(
                //                                         //         child: Column(
                //                                         //           crossAxisAlignment:
                //                                         //           CrossAxisAlignment
                //                                         //               .start,
                //                                         //           children: [
                //                                         //             Row(
                //                                         //               mainAxisAlignment:
                //                                         //               MainAxisAlignment
                //                                         //                   .spaceBetween,
                //                                         //               children: [
                //                                         //                 NormalText(
                //                                         //                     text:
                //                                         //                     "Note: "),
                //                                         //               ],
                //                                         //             ),
                //                                         //             SizedBox(
                //                                         //               height: 2.h,
                //                                         //             ),
                //                                         //             NormalText(
                //                                         //                 text: _controller
                //                                         //                     .orderNoEntity
                //                                         //                     .value
                //                                         //                     .purchaseproductlist![
                //                                         //                 index]
                //                                         //                     .note
                //                                         //                     .toString()),
                //                                         //             SizedBox(
                //                                         //               height: 2.h,
                //                                         //             ),
                //                                         //             Divider(
                //                                         //               color: Colors
                //                                         //                   .grey[400],
                //                                         //             ),
                //                                         //           ],
                //                                         //         ),
                //                                         //       ),
                //                                         //     ),
                //                                         //   ],
                //                                         // ),
                //                                       ],
                //                                     ),
                //                                   )),
                //                               Container(
                //                                 color: Colors.white,
                //                                 // margin: EdgeInsets.fromLTRB(
                //                                 //     0.h, 1.h, 0.h, 0.h),
                //                                 child: Container(
                //                                   color: Colors.white,
                //                                   margin: EdgeInsets.fromLTRB(
                //                                       2.h, 2.h, 2.h, 0.h),
                //                                   child: Column(children: [
                //                                     Column(
                //                                       crossAxisAlignment:
                //                                       CrossAxisAlignment.start,
                //                                       children: [
                //                                         Padding(
                //                                           padding:
                //                                           EdgeInsets.fromLTRB(
                //                                               0.h, 0.h, 0.h, 0.h),
                //                                           child: SubHeadingText(
                //                                               text: ""),
                //                                         ),
                //                                         SizedBox(
                //                                           height: 2.h,
                //                                         ),
                //                                         GridView.count(
                //                                           shrinkWrap: true,
                //                                           physics: NeverScrollableScrollPhysics(),
                //                                           crossAxisCount: 3,
                //                                           mainAxisSpacing: 1,
                //                                           crossAxisSpacing: 1,
                //                                           // childAspectRatio: 2:1,
                //                                           children: sizeListGrid,
                //
                //                                         ),
                //                                         // Row(
                //                                         //   children: [
                //                                         //     Expanded(
                //                                         //       child: CustomBox1(
                //                                         //         controller:
                //                                         //         size1controller,
                //                                         //         label: "Size-1",
                //                                         //         Enabled: _controller
                //                                         //             .enable1
                //                                         //             .value,
                //                                         //       ),
                //                                         //     ),
                //                                         //     Expanded(
                //                                         //       child: CustomBox1(
                //                                         //         controller:
                //                                         //         size2controller,
                //                                         //         label: "Size-2",
                //                                         //         Enabled: _controller
                //                                         //             .enable2
                //                                         //             .value,
                //                                         //       ),
                //                                         //     ),
                //                                         //     Expanded(
                //                                         //       child: CustomBox1(
                //                                         //         controller:
                //                                         //         size3controller,
                //                                         //         label: "Size-3",
                //                                         //         Enabled: _controller
                //                                         //             .enable3
                //                                         //             .value,
                //                                         //       ),
                //                                         //     )
                //                                         //   ],
                //                                         // ),
                //                                       ],
                //                                     ),
                //                                     // Row(
                //                                     //   children: [
                //                                     //     Expanded(
                //                                     //       child: CustomBox1(
                //                                     //         controller:
                //                                     //         size4controller,
                //                                     //         label: "Size-4",
                //                                     //         Enabled: _controller
                //                                     //             .enable4.value,
                //                                     //       ),
                //                                     //     ),
                //                                     //     Expanded(
                //                                     //       child: CustomBox1(
                //                                     //         controller:
                //                                     //         size5controller,
                //                                     //         label: "Size-5",
                //                                     //         Enabled: _controller
                //                                     //             .enable5.value,
                //                                     //       ),
                //                                     //     ),
                //                                     //     Expanded(
                //                                     //       child: CustomBox1(
                //                                     //         controller:
                //                                     //         size6controller,
                //                                     //         label: "Size-6",
                //                                     //         Enabled: _controller
                //                                     //             .enable6.value,
                //                                     //       ),
                //                                     //     )
                //                                     //   ],
                //                                     // ),
                //                                     // Row(
                //                                     //   children: [
                //                                     //     Expanded(
                //                                     //       child: CustomBox1(
                //                                     //         controller:
                //                                     //         size7controller,
                //                                     //         label: "Size-7",
                //                                     //         Enabled: _controller
                //                                     //             .enable7.value,
                //                                     //       ),
                //                                     //     ),
                //                                     //     Expanded(
                //                                     //       child: CustomBox1(
                //                                     //         controller:
                //                                     //         size8controller,
                //                                     //         label: "Size-8",
                //                                     //         Enabled: _controller
                //                                     //             .enable8.value,
                //                                     //       ),
                //                                     //     ),
                //                                     //     Expanded(
                //                                     //       child: CustomBox1(
                //                                     //         controller:
                //                                     //         size9controller,
                //                                     //         label: "Size-9",
                //                                     //         Enabled: _controller
                //                                     //             .enable9.value,
                //                                     //       ),
                //                                     //     )
                //                                     //   ],
                //                                     // ),
                //                                     // Row(
                //                                     //   children: [
                //                                     //     Expanded(
                //                                     //       child: CustomBox1(
                //                                     //         controller:
                //                                     //         size10controller,
                //                                     //         label: "Size-10",
                //                                     //         Enabled: _controller
                //                                     //             .enable10.value,
                //                                     //       ),
                //                                     //     ),
                //                                     //     Expanded(
                //                                     //       child: CustomBox1(
                //                                     //         controller:
                //                                     //         size11controller,
                //                                     //         label: "Size-11",
                //                                     //         Enabled: _controller
                //                                     //             .enable11.value,
                //                                     //       ),
                //                                     //     ),
                //                                     //     Expanded(
                //                                     //       child: CustomBox1(
                //                                     //         controller:
                //                                     //         size12controller,
                //                                     //         label: "Size-12",
                //                                     //         Enabled: _controller
                //                                     //             .enable12.value,
                //                                     //       ),
                //                                     //     )
                //                                     //   ],
                //                                     // ),
                //                                     // Row(
                //                                     //   children: [
                //                                     //     Expanded(
                //                                     //       child: CustomBox1(
                //                                     //         controller:
                //                                     //         size13controller,
                //                                     //         label: "Size-13",
                //                                     //         Enabled: _controller
                //                                     //             .enable13.value,
                //                                     //       ),
                //                                     //     ),
                //                                     //     Expanded(
                //                                     //       flex: 1,
                //                                     //       child: Container(),
                //                                     //     ),
                //                                     //     Expanded(
                //                                     //       flex: 1,
                //                                     //       child: Container(),
                //                                     //     ),
                //                                     //   ],
                //                                     // ),
                //                                     SizedBox(
                //                                       height: 4.h,
                //                                     ),
                //                                   ]),
                //                                 ),
                //                               ),
                //                               // Container(
                //                               //   margin: EdgeInsets.symmetric(
                //                               //       horizontal: 3.h),
                //                               //   child: SizedBox(
                //                               //     height: 5.h,
                //                               //     width: double.infinity,
                //                               //     child: ElevatedButton(
                //                               //       style: ElevatedButton
                //                               //           .styleFrom(
                //                               //           primary:
                //                               //           const Color(0xFFEC4E52),
                //                               //           textStyle: TextStyle(
                //                               //               fontSize: 15,
                //                               //               fontWeight:
                //                               //               FontWeight.bold)),
                //                               //       onPressed: () {},
                //                               //       child: Text('Cancel Plan'),
                //                               //     ),
                //                               //   ),
                //                               // ),
                //                               SizedBox(
                //                                 height: 3.h,
                //                               )
                //                             ],
                //                           )
                //                         ],
                //                       ),
                //                     ),
                //                   ),
                //                   // SizedBox(
                //                   //   height: 2.h,
                //                   // )
                //                 ],
                //               );
                //             },
                //             separatorBuilder: (context, index) {
                //               return Divider(height: .5, color: Colors.grey);
                //             },
                //           ),
                //         ),
                //
                //         // SizedBox(height:2.h ,),
                //       ],
                //     )),

                // ),
              ],
            );
          }
          else {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Nodata(response: _controller.orderNoEntity.value.response.toString()),
                  RetryButton(onTap: (){
                    _controller.checkNetworkStatus();
                    _controller.getUpperOrder();
                  })
                ],
              ),
            );
          }
        }
      }
    }
    else if(_controller.networkStatus.value==false){
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Nodata(response: 'No Internet Connection'),
            RetryButton(onTap: (){
              print('ass');
              _controller.checkNetworkStatus();
              _controller.getUpperOrder();            })
          ],
        ),
      );
    }

  }
}
