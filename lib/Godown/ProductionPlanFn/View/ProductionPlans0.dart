import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import '../../../AppConstants/ClourConstants.dart';

import '../../../CustomFont/Header.dart';
import '../../../CustomFont/Heading.dart';
import '../../../CustomFont/NormalText.dart';
import '../../../CustomFont/Status.dart';
import '../../../CustomWidget/Nodata.dart';
import '../../../CustomWidget/RetryButton.dart';
import '../Controller/productionPlanListcontroller.dart';
import 'ProductionPlans1.dart';

class ProductionPlan0 extends StatelessWidget {
  ProductionPlan0({Key? key}) : super(key: key);

  late final productionPlanListController =
      Get.put(ProductionPlanListController());

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
          productionPlanListController.checkNetworkStatus();
          productionPlanListController.getProductionPlanList();
        },
        child: Scaffold(
            backgroundColor: const Color(0xFFF7FBFC),
            appBar: AppBar(
              iconTheme: IconThemeData(color: Colors.black),
              backgroundColor: Colors.white,
              elevation: 0,
              title: Header(
                text: 'Production plans',
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
    if (productionPlanListController.networkStatus.value == true) {
      if (productionPlanListController.loadingBool.value == false) {
        if (productionPlanListController.productionPlanEntity.value == null) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Nodata(response: 'No data found'),
                RetryButton(onTap: (){
                  productionPlanListController.checkNetworkStatus();
                  productionPlanListController.getProductionPlanList();            })
              ],
            ),
          );
        } else if (productionPlanListController.productionPlanEntity.value != null) {
          if (productionPlanListController.productionPlanEntity.value.response == 'Success') {
            if (productionPlanListController.productionPlanEntity.value.productionlist == 0) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Nodata(response: 'No data found'),
                    RetryButton(onTap: (){
                      productionPlanListController.checkNetworkStatus();
                      productionPlanListController.getProductionPlanList();            })
                  ],
                ),
              );
            } else if (productionPlanListController.productionPlanEntity.value.productionlist != 0) {
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
                            itemCount: productionPlanListController
                                .productionPlanEntity
                                .value
                                .productionlist!
                                .length,
                            itemBuilder: (BuildContext context, int index) {
                              return Column(
                                children: [
                                  InkWell(
                                    onTap: (){
                                      Get.to(ProductionPlan1(id: productionPlanListController
                                          .productionPlanEntity
                                          .value
                                          .productionlist![index].id.toString(),));
                                    },
                                    child: Material(
                                      borderRadius: BorderRadius.circular(0),
                                      elevation: 0,
                                      // shadowColor: Colors.grey,
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
                                                    NormalText(
                                                        text: "Prouction Plan :"),
                                                    Status(
                                                        text: productionPlanListController
                                                            .productionPlanEntity
                                                            .value
                                                            .productionlist![
                                                        index]
                                                            .status
                                                            .toString())
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
                                                      Text(
                                                        productionPlanListController
                                                            .productionPlanEntity
                                                            .value
                                                            .productionlist![
                                                        index]
                                                            .id
                                                            .toString(),
                                                        style: GoogleFonts
                                                            .radioCanada(
                                                          fontSize: 17,
                                                          color: const Color(
                                                              0xFFEC4E52),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 1.h,
                                                ),
                                                NormalText(
                                                    text: 'Date of Production : ' +
                                                        productionPlanListController
                                                            .productionPlanEntity
                                                            .value
                                                            .productionlist![
                                                        index]
                                                            .dateofproduction
                                                            .toString())
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
                    ),
                  )
                ],
              );
            }
            else if( productionPlanListController.productionPlanEntity.value.response=='null'){
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
                  Nodata(response: productionPlanListController.productionPlanEntity.value.response.toString()),
                  RetryButton(onTap: (){
                    productionPlanListController.checkNetworkStatus();
                    productionPlanListController.getProductionPlanList();
                  })
                ],
              ),
            );
          }
        }
      } else if (productionPlanListController.loadingBool.value == true) {
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
    } else if (productionPlanListController.networkStatus.value == false) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Nodata(response: 'No Internet Connection'),
            RetryButton(onTap: (){
              print('ass');
              productionPlanListController.checkNetworkStatus();
              productionPlanListController.getProductionPlanList();            })
          ],
        ),
      );
    }
  }
}
