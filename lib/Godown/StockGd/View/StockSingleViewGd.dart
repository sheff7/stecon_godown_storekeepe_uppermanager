import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';


import '../../../AppConstants/ApiConstants.dart';
import '../../../AppConstants/ClourConstants.dart';
import '../../../CustomFont/BoldText.dart';
import '../../../CustomFont/Header.dart';
import '../../../CustomFont/Heading.dart';
import '../../../CustomFont/NormalText.dart';

import '../../../CustomWidget/Nodata.dart';
import '../../../CustomWidget/RetryButton.dart';
import '../Controller/StockSingleViewGdController.dart';


class StockSingleView extends StatelessWidget {
  final String artno;
  final String productid;
  final String categoryid;
  StockSingleView({Key? key, required this.artno, required this.productid, required this.categoryid}) : super(key: key);
  late final productListController = Get.put(ProductListSingleViewRepController(artNo: artno, Productid: productid, categoryid:categoryid ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Color(0xFFECECEC),
          elevation: 0,
          title: Header(
            text: 'Stocks',
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
        body: Obx(()=>_body()),
        bottomNavigationBar: Container(
          margin: EdgeInsets.fromLTRB(3.h, 3.h, 3.h, 1.h),
          child: Container(
            // margin: EdgeInsets.fromLTRB(5.h, 3.h, 5.h, 1.h),
              height: 6.h,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () async {

                },
                child: Text(
                  "Share to whatsapp",
                  style: TextStyle(color: Colors.white, fontSize: 19),
                ),
                style: ElevatedButton.styleFrom(
                    primary: const Color(0xFFEC4E52),
                    textStyle: TextStyle(
                        fontSize: 14, fontWeight: FontWeight.bold)),
              )),
        )
    );

  }
  _body() {
    if (productListController.networkStatus.value == true) {
      if (productListController.loadingBool.value == false) {
        if (productListController.productListEntity.value == null) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Nodata(response: 'No data found'),
                RetryButton(onTap: () {
                  productListController.checkNetworkStatus();
                  productListController.getProductList();
                })
              ],
            ),
          );
        } else if (productListController.productListEntity.value != null) {
          if (productListController.productListEntity.value.response ==
              'Success') {
            if (productListController.productListEntity.value.productlist ==
                0) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Nodata(response: 'No data found'),
                    RetryButton(onTap: () {
                      productListController.checkNetworkStatus();
                      productListController.getProductList();
                    })
                  ],
                ),
              );
            } else if (productListController
                .productListEntity.value.productlist !=
                0) {
              return ListView(
                children: [
                  SizedBox(height: 2.h,),
                  Container(
                    color: Colors.white,
                    child: Padding(
                      padding:  EdgeInsets.only(top: 1.h,bottom: 1.h),
                      child: Container(
                        // height: 32.h,
                        child: Padding(
                            padding:  EdgeInsets.all(6.h),
                            child:_image(productListController.productListEntity.value.productlist![0].coverimageurl.toString())

                          // Image(image: NetworkImage(ApiConstants.BASE_URL+productListController.productListEntity.value.productlist![0].coverimageurl.toString()),
                          //   fit: BoxFit.cover,),
                        ),

                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(0.h, 1.h, 0.h, 2.h),
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // HeadingText(text: "2115-BROWN-GENTS"),
                            Text(
                              productListController.productListEntity.value.productlist![0].artno.toString(),
                              style: GoogleFonts.radioCanada(
                                  fontSize: 17,
                                  // fontWeight: FontWeight.bold,
                                  color: Color(0xFF088EDA)),
                            ),
                            SizedBox(height: 2.h,),
                            BoldText(text:  productListController.productListEntity.value.productlist![0].comments.toString()),

                            Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(0.h, 3.h, 0.h, 0.h),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
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
                                          NormalText(text: "Stock: "),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(2.h, 3.h, 0.h, 0.h),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          NormalText(text:  productListController.productListEntity.value.productlist![0].categoryname.toString()),
                                          SizedBox(
                                            height: 2.h,
                                          ),
                                          NormalText(text:  productListController.productListEntity.value.productlist![0].colorname.toString()),
                                          SizedBox(
                                            height: 2.h,
                                          ),
                                          NormalText(
                                            text:productListController.productListEntity.value.productsizelist![0].sizename.toString(),
                                          ),
                                          SizedBox(
                                            height: 2.h,
                                          ),
                                          NormalText(
                                            text:"",
                                          ),

                                        ],
                                      ),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                            Padding(
                              padding:EdgeInsets.only(top: 2.h),
                              child: Column(
                                children: [
                                  GridView.count(
                                    shrinkWrap: true,
                                    physics: NeverScrollableScrollPhysics(),
                                    crossAxisCount: 3,
                                    mainAxisSpacing: 1,
                                    crossAxisSpacing: 1,
                                    // childAspectRatio: 2,
                                    children: productListController.sizeListGrid,

                                  )

                                ],
                              ),
                            )
                          ],
                        ),
                      )),
                ],
              );
            } else if (productListController.productListEntity.value.response ==
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
                  Nodata(
                      response: productListController
                          .productListEntity.value.response
                          .toString()),
                  RetryButton(onTap: () {
                    productListController.checkNetworkStatus();
                    productListController.getProductList();
                  })
                ],
              ),
            );
          }
        }
      } else if (productListController.loadingBool.value == true) {
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
    } else if (productListController.networkStatus.value == false) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Nodata(response: 'No Internet Connection'),
            RetryButton(onTap: () {
              print('ass');
              productListController.checkNetworkStatus();
              productListController.getProductList();
            })
          ],
        ),
      );
    }
  }
  _image(String images) {
    if (images == null) {
      return Container();
    } else if (images != null ) {
      return Container(
        child: CachedNetworkImage(imageUrl:ApiConstants.BASE_URL + images,
          // height: 7.h,
          // width: 4.h,
          errorWidget: (context, url, error) => Icon(Icons.error),
          fit: BoxFit.cover,),
        // height: 5.h,
      );
    }
  }


}
