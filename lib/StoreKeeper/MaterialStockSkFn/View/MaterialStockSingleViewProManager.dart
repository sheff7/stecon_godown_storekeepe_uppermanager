import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../AppConstants/ClourConstants.dart';

import '../../../CustomFont/BoldText.dart';
import '../../../CustomFont/Header.dart';
import '../../../CustomFont/Heading.dart';
import '../../../CustomFont/NormalText.dart';
import '../../../CustomFont/Status.dart';
import '../../../CustomWidget/Nodata.dart';
import '../../../CustomWidget/RetryButton.dart';
import '../Controller/MaterialStockSingleViewProManagerController.dart';


class MaterialStockSingleViewProManager extends StatelessWidget {
final String itemid;
  MaterialStockSingleViewProManager({Key? key, required this.itemid,}) : super(key: key);
  late final _controller=Get.put(MaterialStockSingleViewProManagerController(itemid:itemid ));

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        Get.back();
        return true;
      },
      child: Scaffold(
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
          ),
          body:
          Obx(()=>
              _body()
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
                RetryButton(onTap: (){
                  _controller.checkNetworkStatus();
                  _controller.getMaterialSingleView();
                })
              ],
            ),
          );
        } else if (_controller.productListEntity.value != null) {
          if (_controller.productListEntity.value.response == 'Success') {
            if (_controller.productListEntity.value.stocklist == 0) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Nodata(response: 'No data found'),
                    RetryButton(onTap: (){
                      _controller.checkNetworkStatus();
                      _controller.getMaterialSingleView();
                    })
                  ],
                ),
              );
            } else if (_controller.productListEntity.value.stocklist != 0) {
              return       ListView(
                children: [
                  SizedBox(height: 2.h,),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 3.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            NormalText(text: 'Item Number:'),
                            // NormalText(text: _controller.productListEntity.value.stocklist![0].damageddate.toString()),
                          ],
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              _controller.productListEntity.value.stocklist![0].itemname.toString(),
                              style: GoogleFonts.radioCanada(
                                fontSize: 17,
                                color: const Color(0xFFEC4E52),
                              ),
                            ),
                            Status(text: _controller.productListEntity.value.stocklist![0].status.toString())
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(thickness: 10, color: Colors.grey[200],),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 3.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            NormalText(text: 'Category name:  '),
                            BoldText(text: _controller.productListEntity.value.stocklist![0].categoy.toString())
                          ],
                        ),
                        SizedBox(height: 2.h,),
                        Row(
                          children: [
                            NormalText(text: 'Company name :  '),
                            BoldText(text: _controller.productListEntity.value.stocklist![0].companyname.toString())
                          ],
                        ),
                        SizedBox(height: 2.h,),
                        Row(
                          children: [
                            NormalText(text: 'Stock :  '),
                            BoldText(text: _controller.productListEntity.value.stocklist![0].stock.toString()),

                          ],
                        ),
                        SizedBox(height: 2.h,),
                        Row(
                          children: [
                            NormalText(text: 'Type :  '),
                            BoldText(text: _controller.productListEntity.value.stocklist![0].type.toString()),

                          ],
                        ),
                        SizedBox(height: 2.h,),
                        Row(
                          children: [
                            NormalText(text: 'Last stock taken date :  '),
                            BoldText(text: _controller.productListEntity.value.stocklist![0].laststockupdateddate.toString()),

                          ],
                        )
                      ],
                    ),
                  )
                ],
              );
            }
            else if( _controller.productListEntity.value.response=='null'){
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
                  Nodata(response: _controller.productListEntity.value.response.toString()),
                  RetryButton(onTap: (){
                    _controller.checkNetworkStatus();
                    _controller.getMaterialSingleView();
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
              _controller.getMaterialSingleView();            })
          ],
        ),
      );
    }
  }
}
