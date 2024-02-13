import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperPurchaseOrder/Controller/UpperPurchseOrderController.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperPurchaseOrder/View/UpperPurchaseOrder1UPM.dart';

import '../../../AppConstants/ClourConstants.dart';
import '../../../CustomFont/Header.dart';
import '../../../CustomFont/Heading.dart';
import '../../../CustomFont/NormalText.dart';
import '../../../CustomWidget/Nodata.dart';
import '../../../CustomWidget/RetryButton.dart';

class UpperPurchaseOrderUPM extends StatelessWidget {
  final String upmId;

  UpperPurchaseOrderUPM({Key? key, required this.upmId}) : super(key: key);
  late final _controller = Get.put(UpperPurchseOrderController(upmId: upmId));
  final searchController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.back();
        return true;
      },
      child: RefreshIndicator(
        color: ColorConstants.appThemeColorRed,
        onRefresh: () async {
          _controller.checkNetworkStatus();
          _controller.getUpperOrder();
        },
        child: Scaffold(
            backgroundColor: const Color(0xFFF7FBFC),
            appBar: AppBar(
              iconTheme: IconThemeData(color: Colors.black),
              backgroundColor: Colors.white,
              elevation: 0,
              title: Header(
                text: 'Upper Purchase Order',
              ),
              // Text(
              //   'Add Orders',
              //   style: TextStyle(fontSize: 18, color: Colors.black87),
              // ),
              centerTitle: true,
              actions: [
                IconButton(
                  icon: Icon(
                    Icons.filter_list_rounded,
                    size: 17,
                  ),
                  onPressed: () {
                    Get.bottomSheet(
                        Container(
                          height: 30.h,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 1.h,
                              ),
                              HeadingText(text: 'Filter By Status'),
                              Obx(() => Container(
                                    margin:
                                        EdgeInsets.fromLTRB(2.h, 3.h, 2.h, 0.h),
                                    child: Material(
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                          color: ColorConstants
                                              .textformfieldBackColor,
                                          //background color of dropdown button
                                          //border of dropdown button
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: DropdownButtonHideUnderline(
                                          child: ButtonTheme(
                                            alignedDropdown: true,
                                            child: DropdownButton(
                                              isExpanded: true,
                                              value: _controller
                                                          .choosestatus.value ==
                                                      ''
                                                  ? null
                                                  : _controller
                                                      .choosestatus.value,
                                              hint: NormalText(
                                                text: 'Select Status',
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              style: GoogleFonts.roboto(),
                                              onChanged: (value) {
                                                _controller.getStatustype(
                                                    value.toString());
                                              },
                                              items: _controller.statusList!
                                                  .map((e) {
                                                return DropdownMenuItem(
                                                    value: e,
                                                    child: Text(e.toString(),
                                                        style: TextStyle(
                                                            color:
                                                                Colors.black)));
                                              }).toList(),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin:
                                      EdgeInsets.fromLTRB(3.h, 3.h, 3.h, 0.h),
                                  height: 6.h,
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    onPressed: () async {
                                      _controller.getUpperOrderFilter();

                                      Get.back();
                                    },
                                    child: Text(
                                      "Apply",
                                      style: GoogleFonts.poppins(
                                          fontSize: 15, color: Colors.white),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        primary: const Color(0xFFEC4E52),
                                        textStyle: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold)),
                                  ))
                            ],
                          ),
                        ),
                        persistent: false,
                        isDismissible: false,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ));
                  },
                )
              ],
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 17,
                ),
                onPressed: () {
                  // Navigator.of(context).pop();
                  Get.back();
                },
              ),
            ),
            body: Column(
              children: [
                Container(
                  height: 6.h,
                  margin: EdgeInsets.fromLTRB(2.h, 0.5.h, 2.h, 0.5.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF8F8F8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Expanded(
                              flex: 3,
                              child: TextFormField(
                                  controller: searchController,
                                  onChanged: (value) {
                                    _controller.filterSearch(value);
                                  },
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 2.2.h, horizontal: 1.8.h),
                                      labelText: 'Search',
                                      labelStyle: GoogleFonts.poppins(),
                                      hintText: 'Enter Order Number',
                                      hintStyle: GoogleFonts.poppins(),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(0),
                                          borderSide: const BorderSide(
                                              width: 0, style: BorderStyle.none)),
                                      filled: true,
                                      fillColor: const Color(0xFFF8F8F8)))),
                          Expanded(
                              flex: 1,
                              child: InkWell(
                                  onTap: () {
                                    searchController.clear();
                                    _controller.searchBool.value =
                                    false;
                                  },
                                  child: Icon(
                                    Icons.clear,
                                    color: ColorConstants.appThemeColorRed,
                                  )))
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(child: Obx(() => _body())),
              ],
            )),
      ),
    );
  }

  _body() {
    if (_controller.networkStatus.value == true) {
      if (_controller.loadingBool.value == true) {
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
      } else if (_controller.loadingBool.value == false) {
        if(_controller.searchBool.value==false){
          if (_controller.orderNoEntity.value == null) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Nodata(response: 'No Data'),
                  RetryButton(onTap: () {
                    print('ass');
                    _controller.checkNetworkStatus();
                    _controller.getUpperOrder();
                  })
                ],
              ),
            );
          } else if (_controller.orderNoEntity.value != null) {
            if (_controller.orderNoEntity.value.response == 'Success') {
              if (_controller.orderNoEntity.value.purchaseplanlist == 0) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Nodata(response: 'No data found'),
                      RetryButton(onTap: () {
                        _controller.checkNetworkStatus();
                        _controller.getUpperOrder();
                      })
                    ],
                  ),
                );
              }
              else if (_controller.orderNoEntity.value.purchaseplanlist != 0) {
                return ListView(
                  children: [
                    SizedBox(
                      height: 2.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: Colors.white,
                          child: ListView.separated(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: _controller
                                .orderNoEntity.value.purchaseplanlist!.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Column(
                                children: [
                                  Material(
                                    borderRadius: BorderRadius.circular(0),
                                    elevation: 0,
                                    // shadowColor: Colors.grey,
                                    child: Container(
                                      child: ListTile(
                                        title: InkWell(
                                          onTap: () {
                                            Get.to(UpperPuchaseOrder1UPM(
                                              upmId: upmId,
                                              id: _controller.orderNoEntity.value
                                                  .purchaseplanlist![index].id
                                                  .toString(),
                                              orderno: _controller
                                                  .orderNoEntity
                                                  .value
                                                  .purchaseplanlist![index]
                                                  .orderno
                                                  .toString(),
                                            ));
                                          },
                                          child: Container(
                                            color: Colors.white,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 2.h, vertical: 2.h),
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                                  children: [
                                                    HeadingText(
                                                        text: _controller
                                                            .orderNoEntity
                                                            .value
                                                            .purchaseplanlist![
                                                        index]
                                                            .companyname
                                                            .toString()),
                                                    NormalText(
                                                        text: _controller
                                                            .orderNoEntity
                                                            .value
                                                            .purchaseplanlist![
                                                        index]
                                                            .orderdate
                                                            .toString())
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 2.h,
                                                ),
                                                Row(
                                                  // mainAxisAlignment:
                                                  // MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    NormalText(
                                                        text: "Order no :  "),
                                                    NormalText(
                                                        text: _controller
                                                            .orderNoEntity
                                                            .value
                                                            .purchaseplanlist![
                                                        index]
                                                            .orderno
                                                            .toString())
                                                    // Text(
                                                    //   "Oder no: ",
                                                    //   style: TextStyle(
                                                    //       color: Colors.grey[800]),
                                                    // ),
                                                    // Text(
                                                    //   "17-11-22",
                                                    //   style: TextStyle(
                                                    //       color: Colors.grey[800]),
                                                    // ),
                                                  ],
                                                ),
                                                SizedBox(height: 1.h),
                                                Row(
                                                  // mainAxisAlignment:
                                                  // MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    NormalText(
                                                        text: "Plan no :  "),
                                                    NormalText(
                                                        text: _controller
                                                            .orderNoEntity
                                                            .value
                                                            .purchaseplanlist![
                                                        index]
                                                            .companyplanno
                                                            .toString())
                                                    // Text(
                                                    //   "Oder no: ",
                                                    //   style: TextStyle(
                                                    //       color: Colors.grey[800]),
                                                    // ),
                                                    // Text(
                                                    //   "17-11-22",
                                                    //   style: TextStyle(
                                                    //       color: Colors.grey[800]),
                                                    // ),
                                                  ],
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
                    )
                  ],
                );
              }

              else if (_controller.orderNoEntity.value.response =='null') {
                return Center(
                  child: Column(
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
                    Nodata(response: 'No Internet Connection'),
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
        else if(_controller.searchBool.value==true){
          if(_controller.filterList.value.length!=0){
            return                         Container(
              color: Colors.white,
              child: ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount:_controller
                    .filterList.value!.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Material(
                        borderRadius: BorderRadius.circular(0),
                        elevation: 0,
                        // shadowColor: Colors.grey,
                        child: Container(
                          child: ListTile(
                            title: InkWell(
                              onTap: () {
                                Get.to(UpperPuchaseOrder1UPM(
                                  upmId: upmId,
                                  id: _controller
                                      .filterList.value![index].id
                                      .toString(),
                                  orderno: _controller
                                      .filterList.value![index]
                                      .orderno
                                      .toString(),
                                ));
                              },
                              child: Container(
                                color: Colors.white,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 2.h, vertical: 2.h),
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment
                                          .spaceBetween,
                                      children: [
                                        HeadingText(
                                            text:_controller
                                                .filterList.value![
                                            index]
                                                .companyname
                                                .toString()),
                                        NormalText(
                                            text: _controller
                                                .filterList.value![
                                            index]
                                                .orderdate
                                                .toString())
                                      ],
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    Row(
                                      // mainAxisAlignment:
                                      // MainAxisAlignment.spaceBetween,
                                      children: [
                                        NormalText(
                                            text: "Order no :  "),
                                        NormalText(
                                            text:_controller
                                                .filterList.value![
                                            index]
                                                .orderno
                                                .toString())
                                        // Text(
                                        //   "Oder no: ",
                                        //   style: TextStyle(
                                        //       color: Colors.grey[800]),
                                        // ),
                                        // Text(
                                        //   "17-11-22",
                                        //   style: TextStyle(
                                        //       color: Colors.grey[800]),
                                        // ),
                                      ],
                                    ),
                                    SizedBox(height: 1.h),
                                    Row(
                                      // mainAxisAlignment:
                                      // MainAxisAlignment.spaceBetween,
                                      children: [
                                        NormalText(
                                            text: "Plan no :  "),
                                        NormalText(
                                            text: _controller
                                                .filterList.value![
                                            index]
                                                .companyplanno
                                                .toString())
                                        // Text(
                                        //   "Oder no: ",
                                        //   style: TextStyle(
                                        //       color: Colors.grey[800]),
                                        // ),
                                        // Text(
                                        //   "17-11-22",
                                        //   style: TextStyle(
                                        //       color: Colors.grey[800]),
                                        // ),
                                      ],
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
            );
          }
          else if(_controller.filterList.length==0){
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Nodata(response: 'No data found'),
                  RetryButton(onTap: () {
                    _controller.checkNetworkStatus();
                    _controller.getUpperOrder();
                  })
                ],
              ),
            );
          }

        }
      }
    } else if (_controller.networkStatus.value == false) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Nodata(response: 'No Internet Connection'),
            RetryButton(onTap: () {
              print('ass');
              _controller.checkNetworkStatus();
              _controller.getUpperOrder();
            })
          ],
        ),
      );
    }
  }
}
