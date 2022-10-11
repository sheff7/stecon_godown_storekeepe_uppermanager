import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import '../../../CustomFont/Header.dart';
import '../../../CustomFont/Heading.dart';
import '../../../CustomFont/NormalText.dart';
import '../../../CustomFont/Status.dart';
import '../controller/OrderListViewController.dart';
import 'orderSingleView.dart';


class OrderListViewGD extends StatelessWidget {
   OrderListViewGD({Key? key}) : super(key: key);
  late final orderListViewController = Get.put(OrderListViewController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF7FBFC),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 0,
          title: Header(
            text: 'View Orders',
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
        ),
        body: Obx(()=>body())
    );

  }
  body(){
    if(orderListViewController.networkStatus.value == true){
      if(orderListViewController.loadingBool.value == false){
        if(orderListViewController.orderListViewEntity.value == null){
          return
            Container(
              child: Text('Null value'),
            );
        }else if(orderListViewController.orderListViewEntity.value != null){
          if(orderListViewController.orderListViewEntity.value.response== 'Success'){
            if(orderListViewController.orderListViewEntity.value.orderlist!.length == 0){
              return
                Center(
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
            }else if(orderListViewController.orderListViewEntity.value.orderlist!.length != 0){
              return
              ListView(
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
                            itemCount: orderListViewController.orderListViewEntity.value.orderlist!.length,
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
                                        onTap: (){
                                          Get.to(ViewOrder1GD(orderno: orderListViewController.orderListViewEntity.value.orderlist![index].orderno.toString(),
                                            orderid: orderListViewController.orderListViewEntity.value.orderlist![index].id.toString(),));
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
                                                  MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    NormalText(
                                                        text: "Order No :"),
                                                    Status(text: orderListViewController.orderListViewEntity.value.orderlist![index].status.toString())
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0.h, 1.h, 0.h, 1.5.h),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(
                                                       orderListViewController.orderListViewEntity.value.orderlist![index].orderno.toString(),
                                                        style: GoogleFonts.radioCanada(
                                                          fontSize: 17,
                                                          color:
                                                          const Color(0xFFEC4E52),
                                                        ),
                                                      ),
                                                      NormalText(text: orderListViewController.orderListViewEntity.value.orderlist![index].deliverydate.toString())
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 1.h,
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
                    ),
                  )
                ],
              );

            }
          }else{
            return
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: HeadingText(
                        text: orderListViewController.orderListViewEntity.value.response
                            .toString(),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () async {
                          orderListViewController.getOrderListView();
                        },
                        child: Text('Retry'))
                  ],
                ),
              );
          }
        }
      }
      else if (orderListViewController.loadingBool.value == true) {
        return Center(
          child: Column(
            children: [HeadingText(text: 'Loading..')],
          ),
        );
      }
    }
    else if (orderListViewController.networkStatus.value ==
        false) {
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
                  orderListViewController!.getOrderListView();
                },
                child: Text('Retry'))
          ],
        ),
      );
    }
  }
}
