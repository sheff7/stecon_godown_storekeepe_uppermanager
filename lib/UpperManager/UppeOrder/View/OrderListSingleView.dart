import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../CustomFont/BoldText.dart';
import '../../../CustomFont/Header.dart';
import '../../../CustomFont/Heading.dart';
import '../../../CustomFont/NormalText.dart';
import '../Controller/OrderListSingleViewController.dart';
import 'OrderListProductSingle.dart';

class OrderListSingleView extends StatelessWidget {
  final String orderno;
  final String orderid;
  final String distributorid;
   OrderListSingleView({Key? key, required this.orderno, required this.orderid, required this.distributorid}) : super(key: key);
  late final _controller=Get.put(OrderListSingleViewController(orderno: orderno,orderid: orderid,distruberid: distributorid));

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
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
            text: 'History',
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
            //     // Navigator.of(context).pop();
            //   },
            // ),
          ],
        ),
        body: Obx(() => _body()),
      ),
    );
  }

  _body() {
    if (_controller.networkStatus.value == true) {
      if (_controller.loadingBool == false) {
        if (_controller
            .orderEntity.value ==
            null) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Text("Null Value"),
              ),
            ],
          );
        } else if (_controller
            .orderEntity.value !=
            null) {
          if (_controller
              .orderEntity.value.response ==
              "Success") {
            if (_controller
                .orderEntity.value.orderlist!.length ==
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
            } else if (_controller
                .orderEntity.value.orderlist!.length !=
                0) {
              return ListView(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 2.h,
                      ),
                      Container(
                        color: Colors.white,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(2.h, 2.h, 2.h, 4.h),
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  NormalText(text: "Order no : "),
                                  BoldText(
                                      text: _controller
                                          .orderEntity
                                          .value
                                          .orderlist![0]
                                          .orderno
                                          .toString())
                                ],
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  NormalText(text: "Distributor Name : "),
                                  BoldText(
                                      text: _controller
                                          .orderEntity
                                          .value
                                          .orderlist![0]
                                          .distributorname
                                          .toString())
                                ],
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  NormalText(text: "Ordered Date: "),
                                  BoldText(
                                      text:_controller
                                          .orderEntity
                                          .value
                                          .orderlist![0]
                                          .deliverydate
                                          .toString()),
                                ],
                              ),
                              // SizedBox(
                              //   height: 1.h,
                              // ),
                              // Row(
                              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              //   children: [
                              //     NormalText(text:""),
                              //     NormalText(text:  historySingleViewDisDisController.historySingleViewDisEntity.value.orderlist![0].deliverydate.toString()),
                              //   ],
                              // ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            color: Colors.white,
                            child: ListView.separated(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: _controller
                                  .orderEntity
                                  .value
                                  .orderproductlist!
                                  .length,
                              itemBuilder: (BuildContext context, int index) {
                                return Column(
                                  children: [
                                    Material(
                                      borderRadius: BorderRadius.circular(0),
                                      elevation: 0,
                                      // shadowColor: Colors.grey,
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(
                                            1.h, 0.h, 1.h, 0.h),
                                        color: Colors.white,
                                        child: InkWell(
                                          onTap: ()async{
                                            // Get.to(HistoryProductSingleViewDis(distributorid: distributorid.toString(), orderno: orderno.toString(), orderid: orderid.toString(),));
                                            Get.to(OrderListProductSingle(
                                              id: _controller.orderEntity.value.orderproductlist![index].id.toString(),
                                              orderid: _controller.orderEntity.value.orderproductlist![index].orderid.toString(),
                                              orderno: _controller.orderEntity.value.orderproductlist![index].orderno.toString(),
                                            ));
                                          },
                                          child: ListTile(
                                            title: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  _controller
                                                      .orderEntity
                                                      .value
                                                      .orderproductlist![index]
                                                      .artno
                                                      .toString(),
                                                  style: GoogleFonts.radioCanada(
                                                      fontSize: 17,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.blue[200]),
                                                ),
                                                Icon(
                                                  Icons.arrow_forward_ios,
                                                  size: 15,
                                                ),
                                              ],
                                            ),
                                            subtitle: NormalText(
                                              text:
                                              _controller
                                                  .orderEntity
                                                  .value
                                                  .orderproductlist![index]
                                                  .size
                                                  .toString(),
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
                          ),
                          // SizedBox(height:2.h ,),
                        ],
                      )
                    ],
                  ),
                ],
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
                      text: _controller
                          .orderEntity.value.response
                          .toString(),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        _controller.getHistory();
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
            children: [HeadingText(text: 'Loading..')],
          ),
        );
      }
    }
    else if (_controller.networkStatus.value == false) {
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
                  _controller.getHistory();
                },
                child: Text('Retry'))
          ],
        ),
      );
    }
  }

}
