import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperPurchaseOrder/View/UpperPurchaseOrder1UPM.dart';

import '../../../CustomFont/Header.dart';
import '../../../CustomFont/Heading.dart';
import '../../../CustomFont/NormalText.dart';
import '../Controller/UpperPurchseHistoryController.dart';
import 'UpperHistory1UPM.dart';

class UpperHistoryUPM extends StatelessWidget {
  final String upmId;
   UpperHistoryUPM({Key? key, required this.upmId}) : super(key: key);
  late final _controller=Get.put(UpperPurchseHistoryController(upmId: upmId));
  String? formatted1;
  String? formatted;

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
            text: 'Upper History',
          ),
          // Text(
          //   'Add Orders',
          //   style: TextStyle(fontSize: 18, color: Colors.black87),
          // ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(
                Icons.filter_list_rounded,
                size: 17,
              ),
              onPressed: () {
                Get.bottomSheet(
                    Obx(()=>Container(
                      height: 50.h,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 1.h,
                          ),
                          HeadingText(text: 'Filter By Date'),
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                2.h, 2.h, 2.h, 0.h),
                            child: Align(
                              alignment: Alignment.center,
                              child: NormalText(
                                text: 'Start Date',
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              try {
                                DateTime selectedDate =
                                (await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2021),
                                  lastDate: DateTime(2055),
                                ))!;

                                String? date =
                                selectedDate.toString();
                                print(date.toString());

                                final DateFormat formatter =
                                DateFormat('dd-MM-yyyy');
                                final DateFormat formatter1 =
                                DateFormat('yyyy-MM-dd');
                                // String  date1=formatter.format(date);
                                 formatted =
                                    formatter.format(selectedDate);
                                _controller.startDate.value=formatted.toString();
                                _controller.startDate.refresh();
                                // orderHistoryListController.startDate.value=formatted.toString();

                              } catch (e) {
                                print(e);
                              }
                            },
                            child: Container(
                              height: 6.h,
                              margin: EdgeInsets.fromLTRB(
                                  2.h, 2.h, 2.h, 1.h),
                              decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.circular(10),
                                color: const Color(0xFFF8F8F8),
                              ),
                              child: Padding(
                                padding:
                                const EdgeInsets.only(left: 20),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    _controller
                                        .startDate.value
                                        .toString(),
                                    style: GoogleFonts.radioCanada(
                                        textStyle:
                                        TextStyle(fontSize: 2.h)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                2.h, 2.h, 2.h, 0.h),
                            child: Align(
                              alignment: Alignment.center,
                              child: NormalText(
                                text: 'End Date',
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              try {
                                DateTime selectedDate =
                                (await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2021),
                                  lastDate: DateTime(2055),
                                ))!;

                                String? date1 =
                                selectedDate.toString();
                                print(date1.toString());

                                final DateFormat formatter =
                                DateFormat('dd-MM-yyyy');
                                final DateFormat formatter1 =
                                DateFormat('yyyy-MM-dd');
                                // String  date1=formatter.format(date);
                                String formatted1 =
                                    formatter.format(selectedDate);
                                _controller.endDate.value=formatted1.toString();
                                _controller.endDate.refresh();

                              } catch (e) {
                                print(e);
                              }
                            },
                            child: Container(
                              height: 6.h,
                              margin: EdgeInsets.fromLTRB(
                                  2.h, 2.h, 2.h, 1.h),
                              decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.circular(10),
                                color: const Color(0xFFF8F8F8),
                              ),
                              child: Padding(
                                padding:
                                const EdgeInsets.only(left: 20),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    _controller.endDate.value
                                        .toString(),
                                    style: GoogleFonts.radioCanada(
                                        textStyle:
                                        TextStyle(fontSize: 2.h)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.fromLTRB(
                                  3.h, 3.h, 3.h, 1.h),
                              height: 6.h,
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () async {
                                  // _controller
                                  //     .startDate.value = formatted!;
                                  // _controller
                                  //     .endDate.value = formatted1!;
                                  Get.back();
                                  _controller.getUpperOrderFilter();

                                },
                                child: Text(
                                  "Submit",
                                  style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      color: Colors.white),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: const Color(0xFFEC4E52),
                                    textStyle: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold)),
                              ))
                        ],
                      ),
                    ),
                    ),

                    //         persistent: false,
                    //         isDismissible: false,
                    //         backgroundColor: Colors.white,
                    //         shape: RoundedRectangleBorder(
                    //           borderRadius: BorderRadius.circular(10),
                    //         ));
                    //   },
                    //   child: Text(
                    //     "Filter",
                    //     style: GoogleFonts.poppins(
                    //         fontSize: 15, color: Colors.white),
                    //   ),
                    //   style: ElevatedButton.styleFrom(
                    //       primary: const Color(0xFF29377E),
                    //       textStyle: const TextStyle(
                    //           fontSize: 14, fontWeight: FontWeight.bold)),
                    // )),
                    persistent: false,
                    isDismissible: false,
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ));

              },
            )
          ],
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              size: 17,
            ),
            onPressed: () {
              Get.back();
              // Navigator.of(context).pop();
            },
          ),
        ),
        body: Obx(()=>
            _body()
        ),
      ),
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
                                      Get.to(UpperHistory1UPM(
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
