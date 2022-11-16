import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../AppConstants/ApiConstants.dart';
import '../../../AppConstants/ClourConstants.dart';
import '../../../CustomFont/Header.dart';
import '../../../CustomFont/Heading.dart';
import '../../../CustomFont/NormalText.dart';
import '../../../CustomWidget/Nodata.dart';
import '../../../CustomWidget/RetryButton.dart';
import '../Controller/StockListUmController.dart';
import 'StockSingleViewUm.dart';


class StockListUm extends StatelessWidget {
  StockListUm({Key? key}) : super(key: key);
  late final productListController = Get.put(StockListUmController());
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color(0xFFECECEC),
        elevation: 0,
        title: Header(
          text: 'Products',
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
      body: Obx(() => ListView(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          Container(
            height: 6.h,
            margin: EdgeInsets.fromLTRB(2.h, 2.h, 2.h, 1.h),
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
                              productListController.filterSearch(value);
                            },
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 2.2.h, horizontal: 1.8.h),
                                labelText: 'Search',
                                labelStyle: GoogleFonts.poppins(),
                                hintText: 'Enter Art no.',
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
                              productListController.searchBool.value =
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
          _body(),
        ],
      )),
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
            if (productListController.productListEntity.value.stocklist ==
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
                .productListEntity.value.stocklist !=
                0) {
              if (productListController.searchBool.value == false) {
                return
                  // ListView(
                  // children: [
                  //   SizedBox(
                  //     height: 2.h,
                  //   ),
                  //   Column(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       Container(
                  //         child:
                  ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: productListController
                        .productListEntity.value.stocklist!.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Material(
                            borderRadius: BorderRadius.circular(0),
                            elevation: 0,
                            // shadowColor: Colors.grey,
                            child: Container(
                              color: Colors.white,
                              margin: EdgeInsets.fromLTRB(2.h, 0.h, 2.h, 2.h),
                              child: InkWell(
                                onTap: () {
                                  Get.to(StockSingleViewUm(
                                    productid: productListController
                                        .productListEntity
                                        .value
                                        .stocklist![index]
                                        .id.toString()

                                  ));
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(top: 2.h, bottom: 2.h),
                                  child: ListTile(
                                    selectedTileColor: Color(0xFFEC4E52),
                                    title: Padding(
                                      padding: EdgeInsets.only(
                                        left: 2.h,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            productListController
                                                .productListEntity
                                                .value
                                                .stocklist![index]
                                                .artno
                                                .toString(),
                                            style: GoogleFonts.radioCanada(
                                                fontSize: 17,
                                                // fontWeight: FontWeight.bold,
                                                color: Color(0xFF088EDA)),
                                          ),
                                          SizedBox(
                                            height: 1.h,
                                          ),
                                          NormalText(
                                              text: productListController
                                                  .productListEntity
                                                  .value
                                                  .stocklist![index]
                                                  .categoryname
                                                  .toString()),
                                        ],
                                      ),
                                    ),
                                    leading: _image(productListController
                                        .productListEntity
                                        .value
                                        .stocklist![index]
                                        .coverimageurl
                                        .toString()),
                                    trailing: NormalText(text:productListController
                                        .productListEntity
                                        .value
                                        .stocklist![index]
                                        .stockstatus
                                        .toString() ,),
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
                  );
                //       ),
                //       // SizedBox(height:2.h ,),
                //     ],
                //   )
                // ],
                // );
              } else if (productListController.searchBool.value == true) {
                if (productListController.artList.length == 0) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: HeadingText(
                            text: 'No Result Found',
                          ),
                        ),
                      ],
                    ),
                  );
                } else if (productListController.artList.length != 0) {
                  return
                    // ListView(
                    // children: [
                    //   SizedBox(
                    //     height: 2.h,
                    //   ),
                    //   Column(
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     children: [
                    //       Container(
                    //         child:
                    ListView.separated(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: productListController.artList!.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Material(
                              borderRadius: BorderRadius.circular(0),
                              elevation: 0,
                              // shadowColor: Colors.grey,
                              child: Container(
                                color: Colors.white,
                                margin: EdgeInsets.fromLTRB(2.h, 0.h, 2.h, 2.h),
                                child: InkWell(
                                  onTap: () {
                                    Get.to(StockSingleViewUm(
                                      productid: productListController
                                          .artList.value[index].id
                                          .toString(),
                                    ));
                                  },
                                  child: Padding(
                                    padding:
                                    EdgeInsets.only(top: 2.h, bottom: 2.h),
                                    child: ListTile(
                                      selectedTileColor: Color(0xFFEC4E52),
                                      title: Padding(
                                        padding: EdgeInsets.only(
                                          left: 2.h,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              productListController
                                                  .artList.value[index].artno
                                                  .toString(),
                                              style: GoogleFonts.radioCanada(
                                                  fontSize: 17,
                                                  // fontWeight: FontWeight.bold,
                                                  color: Color(0xFF088EDA)),
                                            ),
                                            SizedBox(
                                              height: 1.h,
                                            ),
                                            NormalText(
                                                text: productListController
                                                    .artList
                                                    .value[index]
                                                    .categoryname
                                                    .toString()),
                                          ],
                                        ),
                                      ),
                                      leading: _image(productListController
                                          .artList.value[index].coverimageurl
                                          .toString()),
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
                    );
                  //         ),
                  //         // SizedBox(height:2.h ,),
                  //       ],
                  //     )
                  //   ],
                  // );

                }
              }
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
    // productListController!.imgurl.value = images;
    if (images == null) {
      return Container();
    } else if (images != null) {
      return Container(
        child: CachedNetworkImage(
          imageUrl: ApiConstants.BASE_URL + images,
          height: 7.h,
          width: 4.h,
          errorWidget: (context, url, error) => Icon(Icons.error),
          fit: BoxFit.fill,
        ),
        // height: 5.h,
      );
    }
  }
}
