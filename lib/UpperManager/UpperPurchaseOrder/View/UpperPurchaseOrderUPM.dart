import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperPurchaseOrder/Controller/UpperPurchseOrderController.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperPurchaseOrder/View/UpperPurchaseOrder1UPM.dart';

import '../../../CustomFont/Header.dart';
import '../../../CustomFont/Heading.dart';
import '../../../CustomFont/NormalText.dart';

class UpperPurchaseOrderUPM extends StatelessWidget {
  final String upmId;
   UpperPurchaseOrderUPM({Key? key, required this.upmId}) : super(key: key);
  late final _controller=Get.put(UpperPurchseOrderController(upmId: upmId));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body:
        Obx(()=>
            _body()
        )
    );
  }
  _body(){
    if(_controller.loadingBool==true){
      return Center(
        child: Column(
          children: [HeadingText(text: 'Loading...')],
        ),
      );
    }
    else if(_controller.loadingBool.value==false){
      if(_controller.orderNoEntity.value==null){
        return Center(
          child: Column(
            children: [HeadingText(text: 'No Data')],
          ),
        );
      }
      else if(_controller.orderNoEntity.value!=null){
        if(_controller.orderNoEntity.value.response=='Success'){
          return       ListView(
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
                      itemCount: _controller.orderNoEntity.value.purchaseplanlist!.length,
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
                                        id: _controller.orderNoEntity.value.purchaseplanlist![index].id.toString(),
                                        orderno: _controller.orderNoEntity.value.purchaseplanlist![index].orderno.toString(),
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
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              HeadingText(
                                                  text:_controller.orderNoEntity.value.purchaseplanlist![index].companyname.toString()),
                                              NormalText(text: _controller.orderNoEntity.value.purchaseplanlist![index].orderdate.toString())
                                            ],
                                          ),
                                          SizedBox(
                                            height: 2.h,
                                          ),
                                          Row(
                                            // mainAxisAlignment:
                                            // MainAxisAlignment.spaceBetween,
                                            children: [
                                              NormalText(text: "Order no :  "),
                                              NormalText(text:_controller.orderNoEntity.value.purchaseplanlist![index].orderno.toString())
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
                                              NormalText(text: "Plan no :  "),
                                              NormalText(text: _controller.orderNoEntity.value.purchaseplanlist![index].companyplanno.toString())
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
        else{
          return Center(
            child: Column(
              children: [HeadingText(text:_controller.orderNoEntity.value.response.toString())],
            ),
          );
        }
      }
    }
  }
}
