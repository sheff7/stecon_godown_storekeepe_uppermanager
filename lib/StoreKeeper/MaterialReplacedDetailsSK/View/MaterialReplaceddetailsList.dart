import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../AppConstants/ClourConstants.dart';
import '../../../CustomFont/BoldText.dart';
import '../../../CustomFont/Header.dart';
import '../../../CustomFont/Heading.dart';
import '../../../CustomFont/NormalText.dart';
import '../../../CustomFont/NormalTextGreen.dart';
import '../../../CustomWidget/Nodata.dart';
import '../../../CustomWidget/RetryButton.dart';
import '../Controller/MaterilaRepacedListControllerSk.dart';
import 'AddMaterialReplacedDetails.dart';
import 'EditMaterialReplacedDetails.dart';

class MaterialReplaceddetailsList extends StatelessWidget {
  MaterialReplaceddetailsList({Key? key}) : super(key: key);
  late final materialReplacedListController =
      Get.put(MaterialReplacedSkListController());

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      color: ColorConstants.appThemeColorRed,
      onRefresh: () async {
        materialReplacedListController.checkNetworkStatus();
        materialReplacedListController.getMaterialList();
      },
      child: WillPopScope(
        onWillPop: () async {
          Get.back();
          return true;
        },
        child: Scaffold(
          backgroundColor: const Color(0xFFF7FBFC),
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.white,
            elevation: 0,
            title: Header(
              text: 'Material   Replaced details',
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
                  onPressed: () {
                    Get.to(AddMaterialRepalcedDetails());
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) =>  AddMaterialRepalcedDetails()),
                    // );
                  },
                  icon: Icon(Icons.add))
            ],
          ),
          body: Obx(
            () => _body(),
          ),
        ),
      ),
    );
  }

  _body() {
    if (materialReplacedListController.networkStatus.value == true) {
      if (materialReplacedListController.loadingBool.value == false) {
        if (materialReplacedListController.MaterialReplacedListrEntity.value ==
            null) {
          return Container(
            child: Text('Null value'),
          );
        } else if (materialReplacedListController
                .MaterialReplacedListrEntity.value.response !=
            null) {
          if (materialReplacedListController
                  .MaterialReplacedListrEntity.value.response ==
              "Success") {
            if (materialReplacedListController.MaterialReplacedListrEntity.value
                    .materialreplacedlist!.length ==
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
            } else if (materialReplacedListController
                    .MaterialReplacedListrEntity
                    .value
                    .materialreplacedlist!
                    .length !=
                0) {
              return ListView(
                children: [
                  SizedBox(
                    height: 2.h,
                  ),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: materialReplacedListController
                        .MaterialReplacedListrEntity
                        .value
                        .materialreplacedlist!
                        .length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        color: Colors.white,
                        padding: EdgeInsets.symmetric(
                            horizontal: 2.h, vertical: 2.h),
                        child: ExpansionTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              NormalText(text: 'Replaced no :'),
                              SizedBox(
                                height: 1.h,
                              ),
                              Text(
                                materialReplacedListController
                                    .MaterialReplacedListrEntity
                                    .value
                                    .materialreplacedlist![index]
                                    .replacedno
                                    .toString(),
                                style: GoogleFonts.radioCanada(
                                  fontSize: 17,
                                  color: const Color(0xFFEC4E52),
                                ),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              NormalText(
                                text: 'Department :' +
                                    materialReplacedListController
                                        .MaterialReplacedListrEntity
                                        .value
                                        .materialreplacedlist![index]
                                        .departmentname
                                        .toString(),
                              ),
                            ],
                          ),
                          expandedAlignment: Alignment.centerLeft,
                          children: [
                            Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 2.h, vertical: 2.h),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        NormalTextGreen(
                                          text: materialReplacedListController
                                              .MaterialReplacedListrEntity
                                              .value
                                              .materialreplacedlist![index]
                                              .status
                                              .toString(),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        IconButton(
                                          onPressed: () {
                                            Get.to(EditMaterialRepalcedDetails(
                                              Id: materialReplacedListController
                                                  .MaterialReplacedListrEntity
                                                  .value
                                                  .materialreplacedlist![index]
                                                  .id
                                                  .toString(),
                                            ));
                                          },
                                          icon: Icon(
                                            Icons.edit,
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        NormalText(text: "Issue no  :  "),
                                        Flexible(
                                          child: BoldText(
                                            text: materialReplacedListController
                                                .MaterialReplacedListrEntity
                                                .value
                                                .materialreplacedlist![index]
                                                .issueno
                                                .toString(),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    Row(
                                      children: [
                                        NormalText(text: "Department :  "),
                                        BoldText(
                                          text: materialReplacedListController
                                              .MaterialReplacedListrEntity
                                              .value
                                              .materialreplacedlist![index]
                                              .departmentname
                                              .toString(),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    Row(
                                      children: [
                                        NormalText(text: "Item name :  "),
                                        Flexible(
                                          child: BoldText(
                                            text: materialReplacedListController
                                                .MaterialReplacedListrEntity
                                                .value
                                                .materialreplacedlist![index]
                                                .itemnanme
                                                .toString(),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    Row(
                                      children: [
                                        NormalText(text: "Brand name :  "),
                                        Flexible(
                                          child: BoldText(
                                            text: materialReplacedListController
                                                .MaterialReplacedListrEntity
                                                .value
                                                .materialreplacedlist![index]
                                                .companyname
                                                .toString(),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    Row(
                                      children: [
                                        NormalText(text: "Quantity :  "),
                                        BoldText(
                                          text: materialReplacedListController
                                              .MaterialReplacedListrEntity
                                              .value
                                              .materialreplacedlist![index]
                                              .quantity
                                              .toString(),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    Row(
                                      children: [
                                        NormalText(text: "Type :  "),
                                        BoldText(
                                          text: materialReplacedListController
                                              .MaterialReplacedListrEntity
                                              .value
                                              .materialreplacedlist![index]
                                              .type
                                              .toString(),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    Row(
                                      children: [
                                        NormalText(text: "Issue Date :  "),
                                        BoldText(
                                          text: materialReplacedListController
                                              .MaterialReplacedListrEntity
                                              .value
                                              .materialreplacedlist![index]
                                              .date
                                              .toString(),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            NormalText(text: "Comments :  "),
                                            Flexible(
                                                child: BoldText(
                                                  text: materialReplacedListController
                                                      .MaterialReplacedListrEntity
                                                      .value
                                                      .materialreplacedlist![
                                                          index]
                                                      .comments
                                                      .toString(),
                                                )),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 2.h,
                      );
                    },
                  )
                ],
              );
            }
            else if( materialReplacedListController.MaterialReplacedListrEntity.value.response=='null'){
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
                  Nodata(response: 'No Data'),
                  RetryButton(onTap: () {
                    print('ass');
                    materialReplacedListController.checkNetworkStatus();
                    materialReplacedListController.getMaterialList();
                  })
                ],
              ),
            );
          }
        }

      } else if (materialReplacedListController.loadingBool.value == true) {
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
    } else if (materialReplacedListController.networkStatus.value == false) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Nodata(response: 'No Internet Connection'),
            RetryButton(onTap: () {
              print('ass');
              materialReplacedListController.checkNetworkStatus();
              materialReplacedListController.getMaterialList();
            })
          ],
        ),
      );
    }
  }
}
