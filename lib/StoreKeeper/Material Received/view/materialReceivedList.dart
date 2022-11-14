import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

import '../../../AppConstants/ClourConstants.dart';
import '../../../CustomFont/Header.dart';
import '../../../CustomFont/Heading.dart';
import '../../../CustomFont/NormalText.dart';
import '../../../CustomWidget/Nodata.dart';
import '../../../CustomWidget/RetryButton.dart';
import '../controller/viewMaterialReceivedController.dart';
import 'AddMaterialReceivedView.dart';
import 'editMaterialReceived.dart';


class MaterialReceivedList extends StatelessWidget {
  MaterialReceivedList({Key? key}) : super(key: key);
  late final _controller=Get.put(ViewMatrialRcCountController());

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        Get.back();
        return true;
      },
      child: RefreshIndicator(
        color: ColorConstants.appThemeColorRed,
        onRefresh: ()async{
          _controller.checkNetworkStatus();
          _controller.ViewMaterialOrder();
        },
        child: Scaffold(
          backgroundColor: const Color(0xFFF7FBFC),
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.white,
            elevation: 0,
            title: Header(
              text: 'Material Received ',
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
            actions: [
              IconButton(
                icon: Icon(
                  Icons.add,
                  size: 17,
                ),
                onPressed: () {
                  Get.to(AddMaterialReceived());
                },
              ),
              // IconButton(onPressed: (){
              //   Get.bottomSheet(
              //       Container(
              //         height: 30.h,
              //         child: Column(
              //           children: [
              //             SizedBox(
              //               height: 1.h,
              //             ),
              //             HeadingText(text: 'Filter By Status'),
              //             Obx(() => Container(
              //               margin: EdgeInsets.fromLTRB(
              //                   2.h, 3.h, 2.h, 0.h),
              //               child: Material(
              //                 child: DecoratedBox(
              //                   decoration: BoxDecoration(
              //                     color: ColorConstants
              //                         .textformfieldBackColor,
              //                     //background color of dropdown button
              //                     //border of dropdown button
              //                     borderRadius:
              //                     BorderRadius.circular(
              //                         10),
              //                   ),
              //                   child:
              //                   DropdownButtonHideUnderline(
              //                     child: ButtonTheme(
              //                       alignedDropdown: true,
              //                       child: DropdownButton(
              //                         isExpanded: true,
              //                         value: viewMaterialOrderController
              //                             .choosestatus
              //                             .value ==
              //                             ''
              //                             ? null
              //                             : viewMaterialOrderController
              //                             .choosestatus
              //                             .value,
              //                         hint: NormalText(
              //                           text: 'Select Status',
              //                         ),
              //                         borderRadius:
              //                         BorderRadius
              //                             .circular(10),
              //                         style: GoogleFonts
              //                             .roboto(),
              //                         onChanged: (value) {
              //                           viewMaterialOrderController
              //                               .getStatustype(value
              //                               .toString());
              //                         },
              //                         items:
              //                         viewMaterialOrderController
              //                             .statusList!
              //                             .map((e) {
              //                           return DropdownMenuItem(
              //                               value: e,
              //                               child: Text(
              //                                   e.toString(),
              //                                   style: TextStyle(
              //                                       color: Colors
              //                                           .black)));
              //                         }).toList(),
              //                       ),
              //                     ),
              //                   ),
              //                 ),
              //               ),
              //             )),
              //             Container(
              //                 margin: EdgeInsets.fromLTRB(
              //                     3.h, 3.h, 3.h, 0.h),
              //                 height: 6.h,
              //                 width: double.infinity,
              //                 child: ElevatedButton(
              //                   onPressed: () async {
              //                     viewMaterialOrderController
              //                         .getStatusbyFilter();
              //
              //                     Get.back();
              //                   },
              //                   child: Text(
              //                     "Apply",
              //                     style: GoogleFonts.poppins(
              //                         fontSize: 15,
              //                         color: Colors.white),
              //                   ),
              //                   style: ElevatedButton.styleFrom(
              //                       primary:
              //                       const Color(0xFFEC4E52),
              //                       textStyle: const TextStyle(
              //                           fontSize: 14,
              //                           fontWeight:
              //                           FontWeight.bold)),
              //                 ))
              //           ],
              //         ),
              //       ),
              //       persistent: false,
              //       isDismissible: false,
              //       backgroundColor: Colors.white,
              //       shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(10),
              //       ));
              // }, icon:  Icon(
              //   Icons.filter_list_rounded,
              //   size: 17,
              // ))
            ],
          ),
          body: Obx(() => _body()),
        ),
      ),
    );
  }
  _body() {
    if (_controller.networkStatus.value == true) {
      if (_controller.loadingBool.value == false) {
        if (_controller.viewMaterialOrderEntity.value == null) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Nodata(response: 'No data found'),
                RetryButton(onTap: (){
                  _controller.checkNetworkStatus();
                  _controller.ViewMaterialOrder();            })
              ],
            ),
          );
        } else if (_controller.viewMaterialOrderEntity.value != null) {
          if (_controller.viewMaterialOrderEntity.value.response == 'Success') {
            if (_controller.viewMaterialOrderEntity.value.materialrecievedlist == 0) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Nodata(response: 'No data found'),
                    RetryButton(onTap: (){
                      _controller.checkNetworkStatus();
                      _controller.ViewMaterialOrder();            })
                  ],
                ),
              );
            } else if (_controller.viewMaterialOrderEntity.value.materialrecievedlist != 0) {
              return ListView(children: [
                SizedBox(
                  height: 2.h,
                ),
                Container(
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Container(
                        //     child: Row(children: [
                        //       SizedBox(width: 2.h,),
                        //       IconButton(
                        //         onPressed: () {
                        //
                        //         },
                        //         icon: Icon(Icons.search_off_outlined),
                        //       ),
                        //       SizedBox(
                        //         width: 2.h,
                        //       ),
                        //       Text("Filter by Status"),
                        //     ])),
                        SizedBox(
                          height: 2.h,
                        ),
                        Container(
                          color: Colors.white,
                          child: ListView.separated(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: _controller
                                .viewMaterialOrderEntity
                                .value
                                .materialrecievedlist!
                                .length,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                margin: EdgeInsets.symmetric(vertical: 2.h),
                                color: Colors.white,
                                child: ExpansionTile(
                                  title: Column(
                                    children: [
                                      Row(
                                        children: [
                                          NormalText(text: 'Order no :'),
                                          HeadingText(
                                              text: _controller
                                                  .viewMaterialOrderEntity
                                                  .value
                                                  .materialrecievedlist![index]
                                                  .orderno
                                                  .toString())
                                        ],
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      Row(
                                        children: [
                                          NormalText(
                                              text: _controller
                                                  .viewMaterialOrderEntity
                                                  .value
                                                  .materialrecievedlist![index]
                                                  .date
                                                  .toString()),
                                        ],
                                      )
                                    ],
                                  ),
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 2.h, vertical: 2.h),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Expanded(
                                                  flex: 1,
                                                  child: NormalText(
                                                      text: 'Category :')),
                                              Expanded(
                                                  flex: 1,
                                                  child: NormalText(
                                                      text: _controller
                                                          .viewMaterialOrderEntity
                                                          .value
                                                          .materialrecievedlist![
                                                      index]
                                                          .category
                                                          .toString())),
                                              Expanded(
                                                flex: 1,
                                                child:Text(''),
                                                // Status(text: viewMaterialOrderController.viewMaterialOrderEntity.value.materialorderlist![index].status.toString()
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 2.h,
                                          ),
                                          // Row(
                                          //   children: [
                                          //     Expanded(
                                          //         flex: 1,
                                          //         child: NormalText(
                                          //             text: 'Department :')),
                                          //     Expanded(
                                          //         flex: 1,
                                          //         child: NormalText(
                                          //             text: viewMaterialOrderController
                                          //                 .viewMaterialOrderEntity
                                          //                 .value
                                          //                 .materialorderlist![
                                          //             index]
                                          //                 .departmentname
                                          //                 .toString())),
                                          //     Expanded(
                                          //         flex: 1, child: SizedBox()),
                                          //   ],
                                          // ),
                                          // SizedBox(
                                          //   height: 2.h,
                                          // ),
                                          Row(
                                            children: [
                                              Expanded(
                                                  flex: 1,
                                                  child: NormalText(
                                                      text: 'Item Name :')),
                                              Expanded(
                                                  flex: 1,
                                                  child: NormalText(
                                                      text: _controller
                                                          .viewMaterialOrderEntity
                                                          .value
                                                          .materialrecievedlist![
                                                      index]
                                                          .itemname
                                                          .toString())),
                                              Expanded(
                                                  flex: 1, child: SizedBox()),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 2.h,
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                  flex: 1,
                                                  child: NormalText(
                                                      text: 'Company Name :')),
                                              Expanded(
                                                  flex: 1,
                                                  child: NormalText(
                                                      text: _controller
                                                          .viewMaterialOrderEntity
                                                          .value
                                                          .materialrecievedlist![
                                                      index]
                                                          .companyname
                                                          .toString())),
                                              Expanded(
                                                  flex: 1, child: SizedBox()),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 2.h,
                                          ),

                                          Row(
                                            children: [
                                              Expanded(
                                                  flex: 1,
                                                  child: NormalText(
                                                      text: 'Type :')),
                                              Expanded(
                                                  flex: 1,
                                                  child: NormalText(
                                                      text: _controller
                                                          .viewMaterialOrderEntity
                                                          .value
                                                          .materialrecievedlist![
                                                      index]
                                                          .type
                                                          .toString())),
                                              Expanded(
                                                  flex: 1, child: SizedBox()),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 2.h,
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                  flex: 1,
                                                  child: NormalText(
                                                      text: 'OC :')),
                                              Expanded(
                                                  flex: 1,
                                                  child: NormalText(
                                                      text: _controller
                                                          .viewMaterialOrderEntity
                                                          .value
                                                          .materialrecievedlist![
                                                      index]
                                                          .oc
                                                          .toString())),
                                              Expanded(
                                                  flex: 1, child: SizedBox()),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 2.h,
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                  flex: 1,
                                                  child: NormalText(
                                                      text: 'RC :')),
                                              Expanded(
                                                  flex: 1,
                                                  child: NormalText(
                                                      text: _controller
                                                          .viewMaterialOrderEntity
                                                          .value
                                                          .materialrecievedlist![
                                                      index]
                                                          .rc
                                                          .toString())),
                                              Expanded(
                                                  flex: 1, child: SizedBox()),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 2.h,
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                  flex: 1,
                                                  child: NormalText(
                                                      text: 'DC :')),
                                              Expanded(
                                                  flex: 1,
                                                  child: NormalText(
                                                      text: _controller
                                                          .viewMaterialOrderEntity
                                                          .value
                                                          .materialrecievedlist![
                                                      index]
                                                          .dc
                                                          .toString())),
                                              Expanded(
                                                  flex: 1, child: SizedBox()),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 2.h,
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                  flex: 1,
                                                  child: NormalText(
                                                      text: 'Note :')),
                                              Expanded(
                                                  flex: 1,
                                                  child: NormalText(
                                                      text: _controller
                                                          .viewMaterialOrderEntity
                                                          .value
                                                          .materialrecievedlist![
                                                      index]
                                                          .note
                                                          .toString())),
                                              Expanded(
                                                  flex: 1, child: SizedBox()),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 2.h,
                                          ),
                                          Container(
                                            margin: EdgeInsets.symmetric(horizontal: 1.h),
                                            child: SizedBox(
                                              width: double.infinity,
                                              height: 5.5.h,
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  Get.to(EditMaterialReceivedCount(
                                                    id: _controller.viewMaterialOrderEntity.value.materialrecievedlist![index].id.toString(),
                                                    oc: _controller.viewMaterialOrderEntity.value.materialrecievedlist![index].oc.toString(),
                                                    rc: _controller.viewMaterialOrderEntity.value.materialrecievedlist![index].rc.toString(),
                                                    dc: _controller.viewMaterialOrderEntity.value.materialrecievedlist![index].dc.toString(),
                                                    note: _controller.viewMaterialOrderEntity.value.materialrecievedlist![index].note.toString(),
                                                    date: _controller.viewMaterialOrderEntity.value.materialrecievedlist![index].date.toString(),

                                                  ));
                                                },
                                                child: Text(
                                                  "Edit",
                                                  style: TextStyle(color: Colors.white, fontSize: 14),
                                                ),
                                                style: ElevatedButton.styleFrom(
                                                    primary: Colors.red,
                                                    textStyle: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.bold),
                                                    side: BorderSide(color: Colors.red)),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 2.h,
                                          ),
                                          // Row(
                                          //   children: [
                                          //     Expanded(
                                          //         flex: 1,
                                          //         child: NormalText(
                                          //             text: 'Price :')),
                                          //     Expanded(
                                          //         flex: 1,
                                          //         child: NormalText(
                                          //             text: viewMaterialOrderController
                                          //                 .viewMaterialOrderEntity
                                          //                 .value
                                          //                 .materialorderlist![
                                          //             index]
                                          //                 .price
                                          //                 .toString())),
                                          //     Expanded(
                                          //         flex: 1, child: SizedBox()),
                                          //   ],
                                          // ),
                                          // SizedBox(height: 3.h),
                                          // _editButton(
                                          //     viewMaterialOrderController
                                          //         .viewMaterialOrderEntity
                                          //         .value
                                          //         .materialorderlist![index]
                                          //         .status
                                          //         .toString(),
                                          //     viewMaterialOrderController
                                          //         .viewMaterialOrderEntity
                                          //         .value
                                          //         .materialorderlist![index]
                                          //         .id
                                          //         .toString(),
                                          //     viewMaterialOrderController
                                          //         .viewMaterialOrderEntity
                                          //         .value
                                          //         .materialorderlist![index]
                                          //         .materialorderno
                                          //         .toString()),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              );
                            },
                            separatorBuilder: (context, index) {
                              return Padding(
                                padding:
                                EdgeInsets.fromLTRB(2.h, 0.h, 2.h, 0.h),
                                child: Divider()
                              );
                            },
                          ),
                        ),

                      ],
                    )),

              ]);
            }
            else if( _controller.viewMaterialOrderEntity.value.response=='null'){
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    HeadingText(
                        text:'Please Wait...')                  ],
                ),
              );
            }
          } else {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Nodata(response: _controller.viewMaterialOrderEntity.value.response.toString()),
                  RetryButton(onTap: (){
                    _controller.checkNetworkStatus();
                    _controller.ViewMaterialOrder();
                  })
                ],
              ),
            );
          }
        }
      } else if (_controller.loadingBool.value == true) {
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
      }
    } else if (_controller.networkStatus.value == false) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Nodata(response: 'No Internet Connection'),
            RetryButton(onTap: (){
              print('ass');
              _controller.checkNetworkStatus();
              _controller.ViewMaterialOrder();            })
          ],
        ),
      );
    }
  }

}
