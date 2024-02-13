import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UppeOrder/Controller/OrderListController.dart';

import '../../../AppConstants/ClourConstants.dart';
import '../../../CustomFont/Header.dart';
import '../../../CustomFont/Heading.dart';
import '../../../CustomFont/NormalText.dart';
import '../../../CustomWidget/Nodata.dart';
import '../../../CustomWidget/RetryButton.dart';
import 'OrderListSingleView.dart';

class OrderList extends StatelessWidget {
  OrderList({Key? key}) : super(key: key);
  late final _controller = Get.put(OrderListController());
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
          _controller.getHistoryList();
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
            actions: [],
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
          ),
        ),
      ),
    );
  }

  _body() {
    if (_controller.networkStatus.value == true) {
      if (_controller.loadingBool.value == false) {
        if(_controller.searchBool.value==false){
          if (_controller.orderEntity.value == null) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Nodata(response: 'No data found'),
                  RetryButton(onTap: () {
                    _controller.checkNetworkStatus();
                    _controller.getHistoryList();
                  })
                ],
              ),
            );
          } else if (_controller.orderEntity.value != null) {
            if (_controller.orderEntity.value.response == "Success") {
              if (_controller.orderEntity.value.orderlist!.length == 0) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Nodata(response: 'No data found'),
                      RetryButton(onTap: () {
                        _controller.checkNetworkStatus();
                        _controller.getHistoryList();
                      })
                    ],
                  ),
                );
              } else if (_controller.orderEntity.value.orderlist!.length != 0) {
                return ListView(
                  children: [

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: ListView.separated(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount:
                            _controller.orderEntity.value.orderlist!.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Column(
                                children: [
                                  Material(
                                    borderRadius: BorderRadius.circular(0),
                                    elevation: 0,
                                    // shadowColor: Colors.grey,
                                    child: Container(
                                      color: Colors.white,
                                      margin:
                                      EdgeInsets.fromLTRB(2.h, 0.h, 2.h, 2.h),
                                      child: InkWell(
                                        onTap: () async {
                                          Get.to(OrderListSingleView(
                                            orderno: _controller.orderEntity.value
                                                .orderlist![index].orderno
                                                .toString(),
                                            distributorid: _controller
                                                .orderEntity
                                                .value
                                                .orderlist![index]
                                                .distributorid
                                                .toString(),
                                            orderid: _controller.orderEntity.value
                                                .orderlist![index].id
                                                .toString(),
                                          ));
                                        },
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
                                                    NormalText(text: "Order no:"),
                                                    NormalText(
                                                        text: _controller
                                                            .orderEntity
                                                            .value
                                                            .orderlist![index]
                                                            .deliverydate
                                                            .toString())
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0.h, 1.h, 0.h, 1.5.h),
                                                  child: Text(
                                                    _controller.orderEntity.value
                                                        .orderlist![index].orderno
                                                        .toString(),
                                                    style:
                                                    GoogleFonts.radioCanada(
                                                      fontSize: 17,
                                                      color:
                                                      const Color(0xFFEC4E52),
                                                    ),
                                                  ),
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
                              return Container();
                            },
                          ),
                        ),
                        // SizedBox(height:2.h ,),
                      ],
                    )
                  ],
                );
              } else if (_controller.orderEntity.value.response == 'null') {
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
                        text: _controller.orderEntity.value.response.toString(),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () async {
                          _controller.networkStatus();
                          _controller.getHistoryList();
                        },
                        child: Text('Retry'))
                  ],
                ),
              );
            }
          }
        }
        else if(_controller.searchBool.value==true){
          if(_controller.filterList.value.length!=0){
            return                         Container(
              child: ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount:
                _controller.filterList.value!.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Material(
                        borderRadius: BorderRadius.circular(0),
                        elevation: 0,
                        // shadowColor: Colors.grey,
                        child: Container(
                          color: Colors.white,
                          margin:
                          EdgeInsets.fromLTRB(2.h, 0.h, 2.h, 2.h),
                          child: InkWell(
                            onTap: () async {
                              Get.to(OrderListSingleView(
                                orderno:  _controller.filterList.value![index].orderno
                                    .toString(),
                                distributorid:   _controller.filterList.value![index]
                                    .distributorid
                                    .toString(),
                                orderid:  _controller.filterList.value![index].id
                                    .toString(),
                              ));
                            },
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
                                        NormalText(text: "Order no:"),
                                        NormalText(
                                            text:   _controller.filterList.value![index]
                                                .deliverydate
                                                .toString())
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          0.h, 1.h, 0.h, 1.5.h),
                                      child: Text(
                                        _controller.filterList.value![index].orderno
                                            .toString(),
                                        style:
                                        GoogleFonts.radioCanada(
                                          fontSize: 17,
                                          color:
                                          const Color(0xFFEC4E52),
                                        ),
                                      ),
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
                  return Container();
                },
              ),
            );
          }
          else if(_controller.filterList.value.length==0){
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Nodata(response: 'No data found'),
                  RetryButton(onTap: () {
                    _controller.checkNetworkStatus();
                    _controller.getHistoryList();
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
              CircularProgressIndicator(
                color: ColorConstants.appThemeColorRed,
              ),
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
              _controller.getHistoryList();            })
          ],
        ),
      );
    }
  }
}
