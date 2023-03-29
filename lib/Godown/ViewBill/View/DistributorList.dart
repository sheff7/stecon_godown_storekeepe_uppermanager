import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:stecon_godown_storekeepe_uppermanager/Godown/ViewBill/View/ViewBill.dart';

import '../../../AppConstants/ClourConstants.dart';
import '../../../CustomFont/Header.dart';
import '../../../CustomFont/Heading.dart';
import '../../../CustomFont/NormalText.dart';
import '../../../CustomFont/SubHeading.dart';
import '../../../CustomWidget/Nodata.dart';
import '../../../CustomWidget/RetryButton.dart';
import '../Controller/GetDistributorListController.dart';

class DistributorList extends StatelessWidget {
   DistributorList({Key? key}) : super(key: key);
  late final _controller =
  Get.put(GetDistributorListController());

  @override
  Widget build(BuildContext context) {
    return      WillPopScope(
      onWillPop: ()async{
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
            text: 'Distributors',
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
            // IconButton(
            //   icon: Icon(
            //     Icons.sort_sharp,
            //     size: 20,
            //   ),
            //   onPressed: () {
            //     Navigator.of(context).pop();
            //   },
            // ),
          ],
        ),
        body: Obx(()=> _body()),

      ),
    );
  }

  _body() {
    if (_controller.networkStatus.value == true) {
      if (_controller.loadingBool.value == false) {
        if (_controller.disListForRepEntity.value == null) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Nodata(response: 'No data found'),
                RetryButton(onTap: (){
                  _controller.checkNetworkStatus();
                  _controller.getDisList();            })
              ],
            ),
          );
        } else if (_controller.disListForRepEntity.value != null) {
          if (_controller.disListForRepEntity.value.response == 'Success') {
            if (_controller.disListForRepEntity.value.distributorslist == 0) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Nodata(response: 'No data found'),
                    RetryButton(onTap: (){
                      _controller.checkNetworkStatus();
                      _controller.getDisList();            })
                  ],
                ),
              );
            } else if (_controller.disListForRepEntity.value.distributorslist != 0) {
              return ListView(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 2.h,
                      ),
                      Container(
                        color: Colors.white,
                        child: ListView.separated(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: _controller.disListForRepEntity.value.distributorslist!.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: [
                                Material(
                                  borderRadius: BorderRadius.circular(0),
                                  elevation: 0,
                                  // shadowColor: Colors.grey,
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(1.h, 0.h, 1.h, 0.h),
                                    color: Colors.white,
                                    child: InkWell(
                                      onTap: ()async{
                                        Get.to(ViewBill(distributorId: _controller.disListForRepEntity.value.distributorslist![index].id.toString()));
                                        // if(page=='dis'){
                                        //   Get.to(DistributorsSingleView(id: disListForRepController.disListForRepEntity.value.distributorlist![index].id.toString(),));
                                        // }
                                        // else if(page=='bill'){
                                        //   Get.to(ViewBill(distributorId: disListForRepController.disListForRepEntity.value.distributorlist![index].id.toString(),));
                                        // }
                                      },
                                      child: ListTile(
                                        title: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            SubHeadingText(text: _controller.disListForRepEntity.value.distributorslist![index].name.toString()),
                                            Icon(
                                              Icons.arrow_forward_ios,
                                              size: 15,
                                            ),
                                          ],
                                        ),
                                        subtitle: NormalText(
                                          text: _controller.disListForRepEntity.value.distributorslist![index].contactno.toString(),
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
                            return Divider(height: .5, color: Colors.grey);
                          },
                        ),
                      )
                    ],
                  )
                ],
              );
            }
            else if( _controller.disListForRepEntity.value.response=='null'){
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
                  Nodata(response: _controller.disListForRepEntity.value.response.toString()),
                  RetryButton(onTap: (){
                    _controller.checkNetworkStatus();
                    _controller.getDisList();
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
              _controller.getDisList();            })
          ],
        ),
      );
    }
  }

}
