import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:stecon_godown_storekeepe_uppermanager/CustomFont/NormalTextGreen.dart';

import '../../../CustomFont/BoldText.dart';
import '../../../CustomFont/Header.dart';
import '../../../CustomFont/Heading.dart';
import '../../../CustomFont/NormalText.dart';
import '../../../CustomWidget/Nodata.dart';
import '../Controller/ViewIssuedMaterialDetailsView.dart';
import 'AddIssuedMaterialDeatils.dart';
import 'EditIssuedMaterialDetailsSdk.dart';

class IssuedMaterialDetailsList extends StatelessWidget {
  IssuedMaterialDetailsList({Key? key}) : super(key: key);
  late final issuedMaterialSdkListController =
      Get.put(IssuedMaterialSdkListController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF7FBFC),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 0,
          title: Header(
            text: 'Issued material details',
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              size: 17,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Get.to(AddIssuedMaterialDeatils());
                },
                icon: Icon(Icons.add))
          ],
        ),
        body: Obx(() => _body()));
  }

  _body() {
    if (issuedMaterialSdkListController.networkStatus.value == true) {
      if (issuedMaterialSdkListController.loadingBool.value == false) {
        if (issuedMaterialSdkListController.IssuedMaterialListEntity.value ==
            null) {
          return Container(
            child: Text('Null value'),
          );
        } else if (issuedMaterialSdkListController
                .IssuedMaterialListEntity.value !=
            null) {
          if (issuedMaterialSdkListController
                  .IssuedMaterialListEntity.value.response ==
              "Success") {
            if (issuedMaterialSdkListController
                    .IssuedMaterialListEntity.value.materialitemslist!.length ==
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
            } else if (issuedMaterialSdkListController
                    .IssuedMaterialListEntity.value.materialitemslist!.length !=
                0) {
              return ListView(
                children: [
                  SizedBox(
                    height: 2.h,
                  ),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: issuedMaterialSdkListController
                        .IssuedMaterialListEntity
                        .value
                        .materialitemslist!
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
                              NormalText(text: 'Issue no :'),
                              SizedBox(
                                height: 1.h,
                              ),
                              Text(
                                issuedMaterialSdkListController
                                    .IssuedMaterialListEntity
                                    .value
                                    .materialitemslist![index]
                                    .issuedno
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
                                      issuedMaterialSdkListController
                                          .IssuedMaterialListEntity
                                          .value
                                          .materialitemslist![index]
                                          .departmentname
                                          .toString()),
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
                                            text:
                                                issuedMaterialSdkListController
                                                    .IssuedMaterialListEntity
                                                    .value
                                                    .materialitemslist![index]
                                                    .status
                                                    .toString())
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        IconButton(onPressed: (){
                                          Get.to(EditIssuedMaterialDetailsSdk(orderId: issuedMaterialSdkListController.IssuedMaterialListEntity.value.materialitemslist![index].id.toString(),));

                                        }, icon:Icon(
                                            Icons.edit,),)
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        NormalText(text: "Department :  "),
                                        BoldText(
                                            text:
                                                issuedMaterialSdkListController
                                                    .IssuedMaterialListEntity
                                                    .value
                                                    .materialitemslist![index]
                                                    .departmentname
                                                    .toString()),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    Row(
                                      children: [
                                        NormalText(text: "Item name :  "),
                                        BoldText(
                                            text:
                                                issuedMaterialSdkListController
                                                    .IssuedMaterialListEntity
                                                    .value
                                                    .materialitemslist![index]
                                                    .itemnanme
                                                    .toString()),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    Row(
                                      children: [
                                        NormalText(text: "Brand name :  "),
                                        BoldText(
                                            text:
                                                issuedMaterialSdkListController
                                                    .IssuedMaterialListEntity
                                                    .value
                                                    .materialitemslist![index]
                                                    .companyname
                                                    .toString()),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    Row(
                                      children: [
                                        NormalText(text: "Quantity :  "),
                                        BoldText(
                                            text:
                                                issuedMaterialSdkListController
                                                    .IssuedMaterialListEntity
                                                    .value
                                                    .materialitemslist![index]
                                                    .quantity
                                                    .toString()),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    Row(
                                      children: [
                                        NormalText(text: "Type :  "),
                                        BoldText(
                                            text:
                                                issuedMaterialSdkListController
                                                    .IssuedMaterialListEntity
                                                    .value
                                                    .materialitemslist![index]
                                                    .type
                                                    .toString()),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    Row(
                                      children: [
                                        NormalText(text: "Issue Date :  "),
                                        BoldText(
                                            text:
                                                issuedMaterialSdkListController
                                                    .IssuedMaterialListEntity
                                                    .value
                                                    .materialitemslist![index]
                                                    .date
                                                    .toString()),
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
                                          ],
                                        ),
                                        BoldText(
                                            text:
                                                issuedMaterialSdkListController
                                                    .IssuedMaterialListEntity
                                                    .value
                                                    .materialitemslist![index]
                                                    .comments
                                                    .toString()),
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
          } else {
            return Column(
              children: [
                Nodata(
                  response: issuedMaterialSdkListController
                      .IssuedMaterialListEntity.value.response
                      .toString(),
                ),
                ElevatedButton(
                    onPressed: () async {
                      issuedMaterialSdkListController.getMaterialList();
                    },
                    child: Text('Retry'))
              ],
            );
          }
        }
      } else if (issuedMaterialSdkListController.loadingBool.value == true) {
        return Center(
          child: Column(
            children: [HeadingText(text: 'Loading..')],
          ),
        );
      }
    } else if (issuedMaterialSdkListController.networkStatus.value == false) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: HeadingText(
                text: 'No Internet Connection',
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  issuedMaterialSdkListController.getMaterialList();
                },
                child: Text('Retry'))
          ],
        ),
      );
    }
  }
}
