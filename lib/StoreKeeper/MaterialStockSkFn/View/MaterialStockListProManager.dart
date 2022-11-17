import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../AppConstants/ClourConstants.dart';
import '../../../CustomFont/Header.dart';
import '../../../CustomFont/Heading.dart';
import '../../../CustomFont/NormalText.dart';
import '../../../CustomWidget/Nodata.dart';
import '../../../CustomWidget/RetryButton.dart';
import '../Controller/MaterialStockListProManagerController.dart';
import 'MaterialStockSingleViewProManager.dart';


class MaterialStockListProManager extends StatelessWidget {
  MaterialStockListProManager({Key? key}) : super(key: key);
  late final _controller = Get.put(MaterialStockListProManagerController());

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
          _controller.getMaterialList();
        },
        child: Scaffold(
          backgroundColor: const Color(0xFFF7FBFC),
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.white,
            elevation: 0,
            title: Header(
              text: 'Material Stock',
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
          body: Obx(() => _body()),
        ),
      ),
    );
  }

  _body() {
    if (_controller.networkStatus.value == true) {
      if (_controller.loadingBool.value == false) {
        if (_controller.productListEntity.value == null) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Nodata(response: 'No data found'),
                RetryButton(onTap: () {
                  _controller.checkNetworkStatus();
                  _controller.getMaterialList();
                })
              ],
            ),
          );
        } else if (_controller.productListEntity.value != null) {
          if (_controller.productListEntity.value.response == "Success") {
            if (_controller.productListEntity.value.stocklist!.length == 0) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Nodata(response: 'No data found'),
                    RetryButton(onTap: () {
                      _controller.checkNetworkStatus();
                      _controller.getMaterialList();
                    })
                  ],
                ),
              );
            } else if (_controller.productListEntity.value.stocklist!.length != 0) {
              return ListView(
                children: [
                  SizedBox(
                    height: 2.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: ListView.separated(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount:
                          _controller.productListEntity.value.stocklist!.length,
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
                                        Get.to(MaterialStockSingleViewProManager(

                                           itemid: _controller.productListEntity.value
                                            .stocklist![index].itemid
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
                                                  NormalText(text: "Item name:"),
                                                  NormalText(
                                                      text: _controller
                                                          .productListEntity
                                                          .value
                                                          .stocklist![index]
                                                          .status
                                                          .toString())
                                                ],
                                              ),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0.h, 1.h, 0.h, 1.5.h),
                                                child: Text(
                                                  _controller.productListEntity.value
                                                      .stocklist![index].itemname
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
            } else if (_controller.productListEntity.value.response == 'null') {
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
                      text: _controller.productListEntity.value.response.toString(),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        _controller.networkStatus();
                        _controller.getMaterialList();
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
              _controller.getMaterialList();            })
          ],
        ),
      );
    }
  }
}
