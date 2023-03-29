import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

import '../../../AppConstants/ClourConstants.dart';
import '../../../CustomFont/Header.dart';
import '../../../CustomFont/Heading.dart';
import '../../../CustomFont/NormalText.dart';
import '../../../CustomWidget/CustomSnackBar.dart';
import '../../../CustomWidget/Nodata.dart';
import '../../../CustomWidget/RetryButton.dart';
import '../Controller/ViewBillController.dart';
import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:number_to_character/number_to_character.dart';



import '../Model/view_bill_single_entity.dart';

class ViewBill extends StatelessWidget {
  final String distributorId;
   ViewBill({Key? key, required this.distributorId}) : super(key: key);
  late final _controller = Get.put(ViewBillController(distruberid: distributorId));
  String? formatted;
  String? formatted1;


  @override
  Widget build(BuildContext context) {
    return      WillPopScope(
      onWillPop: () async {
        Get.back();
        return true;
      },
      child: RefreshIndicator(
        onRefresh: ()async{
          _controller.checkNetworkStatus();
          _controller.getBillList();
        },
        child: Scaffold(
            appBar: AppBar(
              iconTheme: IconThemeData(color: Colors.black),
              backgroundColor: Colors.white,
              elevation: 0,
              title: Header(
                text: 'View Bill',
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
                  icon: Icon(
                    Icons.sort_sharp,
                    size: 20,
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
                                    formatted1 =
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
                                    onPressed: ()  {
                                      // _controller
                                      //     .startDate.value = formatted!;
                                      // _controller
                                      //     .endDate.value = formatted1!;
                                      _controller.getBillListByDate();
                                      Get.back();
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
                        isDismissible: true,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ));
                  },
                ),
              ],
            ),
            body: Obx(() => _body())),
      ),
    );
  }
  _body() {
    if (_controller.networkStatus.value == true) {
      if (_controller.loadingBool.value == false) {
        if (_controller.getBillListEntity.value == null) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Nodata(response: 'No data found'),
                RetryButton(onTap: (){
                  _controller.checkNetworkStatus();
                  _controller.getBillList();            })
              ],
            ),
          );
        } else if (_controller.getBillListEntity.value != null) {
          if (_controller.getBillListEntity.value.response == 'Success') {
            if (_controller.getBillListEntity.value.billingdetailslist == 0) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Nodata(response: 'No data found'),
                    RetryButton(onTap: (){
                      _controller.checkNetworkStatus();
                      _controller.getBillList();            })
                  ],
                ),
              );
            } else if (_controller.getBillListEntity.value.billingdetailslist!.length != 0) {
              return ListView(
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
                          itemCount: _controller
                              .getBillListEntity.value.billingdetailslist!.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: [
                                Material(
                                  borderRadius: BorderRadius.circular(0),
                                  elevation: 0,
                                  // shadowColor: Colors.grey,
                                  child: Container(
                                    color: Colors.white,
                                    margin:
                                    EdgeInsets.fromLTRB(2.h, 0.h, 2.h, 2.h),
                                    child: InkWell(
                                      onTap: () {

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
                                                MainAxisAlignment
                                                    .spaceBetween,
                                                children: [
                                                  Expanded(
                                                      flex:1,
                                                      child: NormalText(text:_controller.getBillListEntity.value.billingdetailslist![index].name.toString())),
                                                  NormalText(
                                                      text:
                                                      _controller.getBillListEntity.value.billingdetailslist![index].invoicedate.toString())
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
                                                      "Total : "+_controller.getBillListEntity.value.billingdetailslist![index].totalamountaftertax.toString(),
                                                      style: GoogleFonts
                                                          .radioCanada(
                                                        fontSize: 17,
                                                        color: const Color(
                                                            0xFFEC4E52),
                                                      ),
                                                    ),
                                                    Text(
                                                      _controller.getBillListEntity.value.billingdetailslist![index].invoiceno.toString(),
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
                                              Container(
                                                  margin: EdgeInsets.fromLTRB(1.h, 1.h, 1.h, 1.h),
                                                  height: 4.h,
                                                  width: double.infinity,
                                                  child: ElevatedButton(
                                                    onPressed: () async {
                                                      String res=await _controller.getBillSingle(_controller.getBillListEntity.value.billingdetailslist![index].id.toString());
                                                      if(res=='Success'){
                                                        generatePdf();
                                                      }
                                                      else{
                                                        CustomSnackbar().InfoSnackBar('Invoice', 'No Invoice Found');
                                                      }

                                                    },
                                                    child: Text(
                                                      "Generate Invoice",
                                                      style: TextStyle(color: Colors.white, fontSize: 10.sp),
                                                    ),
                                                    style: ElevatedButton.styleFrom(
                                                        primary: const Color(0xFFEC4E52),
                                                        textStyle: TextStyle(
                                                            fontSize: 14.sp, fontWeight: FontWeight.bold)),
                                                  ))
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
            else if( _controller.getBillListEntity.value.response=='null'){
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
                  Nodata(response: _controller.getBillListEntity.value.response.toString()),
                  RetryButton(onTap: (){
                    _controller.checkNetworkStatus();
                    _controller.getBillList();
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
              _controller.getBillList();            })
          ],
        ),
      );
    }
  }


  recipientDetails(){
    return pw.Column(
        children: [
          pw.Container(
              decoration: pw.BoxDecoration(
                  border: pw.Border.all(color: PdfColors.black)
              ),
              child: pw.Center(
                  child: pw.Padding(
                      padding: pw.EdgeInsets.only(top: .5.h,bottom: .5.h),
                      child: pw.Text(
                          'TAX INVOICE',
                          style: pw.TextStyle(
                              fontSize: 1.5.h,
                              fontBold: pw.Font.courierBold()
                          )
                      )
                  )
              )
          ),
          pw.Container(
              decoration: pw.BoxDecoration(
                border: pw.Border.all(color: PdfColors.black),
              ),child: pw.Row(
              children: [
                pw.Expanded(flex:3,child: pw.Container(
                    child: pw.Column(
                        children: [
                          pw.SizedBox(
                              height: 1.h
                          ),
                          pw.Row(
                              children: [
                                pw.Padding(
                                    padding: pw.EdgeInsets.only(left: 1.h),
                                    child: pw.Text(
                                        'Name : ',
                                        style: pw.TextStyle(
                                          fontSize: 0.8.h,
                                        )
                                    )
                                ),
                                pw.Expanded(
                                    flex:1,
                                    child: pw.Padding(
                                        padding: pw.EdgeInsets.only(left: 1.h),
                                        child: pw.Text(
                                            _controller.billSingleEntity.value.billingdetailslist![0].name.toString(),
                                            style: pw.TextStyle(
                                                fontSize: 0.8.h,
                                                fontBold: pw.Font.courierBold()
                                            )
                                        )
                                    ))
                              ]
                          ),
                          pw.Row(
                              children: [
                                pw.Padding(
                                    padding: pw.EdgeInsets.only(left: 1.h),
                                    child: pw.Text(
                                        'Address : ',
                                        style: pw.TextStyle(
                                          fontSize: 0.8.h,
                                        )
                                    )
                                ),
                                pw.Expanded(
                                    flex:1,
                                    child: pw.Padding(
                                        padding: pw.EdgeInsets.only(left: 1.h),
                                        child: pw.Text(
                                            _controller.billSingleEntity.value.billingdetailslist![0].address.toString(),
                                            style: pw.TextStyle(
                                                fontSize: 0.8.h,
                                                fontBold: pw.Font.courierBold()
                                            )
                                        )
                                    ))
                              ]
                          ),
                          pw.Row(
                              children: [
                                pw.Padding(
                                    padding: pw.EdgeInsets.only(left: 1.h),
                                    child: pw.Text(
                                        'Phone : ',
                                        style: pw.TextStyle(
                                          fontSize: 0.8.h,
                                        )
                                    )
                                ),
                                pw.Expanded(
                                    flex:1,
                                    child: pw.Padding(
                                        padding: pw.EdgeInsets.only(left: 1.h),
                                        child: pw.Text(
                                            _controller.billSingleEntity.value.billingdetailslist![0].phone.toString(),
                                            style: pw.TextStyle(
                                                fontSize: 0.8.h,
                                                fontBold: pw.Font.courierBold()
                                            )
                                        )
                                    ))
                              ]
                          ),
                          pw.Row(
                              children: [
                                pw.Padding(
                                    padding: pw.EdgeInsets.only(left: 1.h),
                                    child: pw.Text(
                                        'GSTIN : ',
                                        style: pw.TextStyle(
                                          fontSize: 0.8.h,
                                        )
                                    )
                                ),
                                pw.Expanded(
                                    flex:1,
                                    child: pw.Padding(
                                        padding: pw.EdgeInsets.only(left: 1.h),
                                        child: pw.Text(
                                            _controller.billSingleEntity.value.billingdetailslist![0].gstin.toString(),
                                            style: pw.TextStyle(
                                                fontSize: 0.8.h,
                                                fontBold: pw.Font.courierBold()
                                            )
                                        )
                                    ))
                              ]
                          ),
                          pw.Row(
                              children: [
                                pw.Padding(
                                    padding: pw.EdgeInsets.only(left: 1.h),
                                    child: pw.Text(
                                        'PAN : ',
                                        style: pw.TextStyle(
                                          fontSize: 0.8.h,
                                        )
                                    )
                                ),
                                pw.Expanded(
                                    flex:1,
                                    child: pw.Padding(
                                        padding: pw.EdgeInsets.only(left: 1.h),
                                        child: pw.Text(
                                            _controller.billSingleEntity.value.billingdetailslist![0].pan.toString(),
                                            style: pw.TextStyle(
                                                fontSize: 0.8.h,
                                                fontBold: pw.Font.courierBold()
                                            )
                                        )
                                    ))
                              ]
                          ),
                          pw.Row(
                              children: [
                                pw.Padding(
                                    padding: pw.EdgeInsets.only(left: 1.h),
                                    child: pw.Text(
                                        'State : ',
                                        style: pw.TextStyle(
                                          fontSize: 0.8.h,
                                        )
                                    )
                                ),
                                pw.Expanded(
                                    flex:1,
                                    child: pw.Padding(
                                        padding: pw.EdgeInsets.only(left: 1.h),
                                        child: pw.Text(
                                            _controller.billSingleEntity.value.billingdetailslist![0].state.toString(),
                                            style: pw.TextStyle(
                                                fontSize: 0.8.h,
                                                fontBold: pw.Font.courierBold()
                                            )
                                        )
                                    ))
                              ]
                          ),
                          pw.Row(
                              children: [
                                pw.Padding(
                                    padding: pw.EdgeInsets.only(left: 1.h),
                                    child: pw.Text(
                                        'status code : ',
                                        style: pw.TextStyle(
                                          fontSize: 0.8.h,
                                        )
                                    )
                                ),
                                pw.Expanded(
                                    flex:1,
                                    child: pw.Padding(
                                        padding: pw.EdgeInsets.only(left: 1.h),
                                        child: pw.Text(
                                            _controller.billSingleEntity.value.billingdetailslist![0].statecode.toString(),
                                            style: pw.TextStyle(
                                                fontSize: 0.8.h,
                                                fontBold: pw.Font.courierBold()
                                            )
                                        )
                                    ))
                              ]
                          ),
                          pw.SizedBox(
                              height: 1.h
                          )
                        ]
                    )
                )),
                pw.Expanded(flex:3,child: pw.Container(
                    child: pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.end,
                        children: [
                          pw.Row(
                              children: [
                                pw.Padding(
                                    padding: pw.EdgeInsets.only(left: 1.h),
                                    child: pw.Text(
                                        'Invoice No : ',
                                        style: pw.TextStyle(
                                          fontSize: 0.8.h,
                                        )
                                    )
                                ),
                                pw.Expanded(
                                    flex:1,
                                    child: pw.Padding(
                                        padding: pw.EdgeInsets.only(left: 1.h),
                                        child: pw.Text(
                                            _controller.billSingleEntity.value.billingdetailslist![0].invoiceno.toString(),
                                            style: pw.TextStyle(
                                                fontSize: 0.8.h,
                                                fontBold: pw.Font.courierBold()
                                            )
                                        )
                                    ))
                              ]
                          ),
                          pw.Row(
                              children: [
                                pw.Padding(
                                    padding: pw.EdgeInsets.only(left: 1.h),
                                    child: pw.Text(
                                        'Invoice date : ',
                                        style: pw.TextStyle(
                                          fontSize: 0.8.h,
                                        )
                                    )
                                ),
                                pw.Expanded(
                                    flex:1,
                                    child: pw.Padding(
                                        padding: pw.EdgeInsets.only(left: 1.h),
                                        child: pw.Text(
                                            _controller.billSingleEntity.value.billingdetailslist![0].invoicedate.toString(),
                                            style: pw.TextStyle(
                                                fontSize: 0.8.h,
                                                fontBold: pw.Font.courierBold()
                                            )
                                        )
                                    ))
                              ]
                          ),
                          pw.Row(
                              children: [
                                pw.Padding(
                                    padding: pw.EdgeInsets.only(left: 1.h),
                                    child: pw.Text(
                                        'State : ',
                                        style: pw.TextStyle(
                                          fontSize: 0.8.h,
                                        )
                                    )
                                ),
                                pw.Expanded(
                                    flex:1,
                                    child: pw.Padding(
                                        padding: pw.EdgeInsets.only(left: 1.h),
                                        child: pw.Text(
                                            _controller.billSingleEntity.value.billingdetailslist![0].state.toString(),
                                            style: pw.TextStyle(
                                                fontSize: 0.8.h,
                                                fontBold: pw.Font.courierBold()
                                            )
                                        )
                                    ))
                              ]
                          ),
                          pw.Row(
                              children: [
                                pw.Padding(
                                    padding: pw.EdgeInsets.only(left: 1.h),
                                    child: pw.Text(
                                        'Status Code : ',
                                        style: pw.TextStyle(
                                          fontSize: 0.8.h,
                                        )
                                    )
                                ),
                                pw.Expanded(
                                    flex:1,
                                    child: pw.Padding(
                                        padding: pw.EdgeInsets.only(left: 1.h),
                                        child: pw.Text(
                                            _controller.billSingleEntity.value.billingdetailslist![0].statecode.toString(),
                                            style: pw.TextStyle(
                                                fontSize: 0.8.h,
                                                fontBold: pw.Font.courierBold()
                                            )
                                        )
                                    ))
                              ]
                          ),
                        ]
                    )
                ))

              ]
          )
          )
        ]
    );
  }


  totalSection(){
    double totalgst=double.parse(_controller.billSingleEntity.value.billingdetailslist![0].addcgst.toString())+
        double.parse(_controller.billSingleEntity.value.billingdetailslist![0].addsgst.toString());
    double totald=double.parse(_controller.billSingleEntity.value.billingdetailslist![0].totalamountaftertax.toString());
    int total=totald.toInt();
    var converter = NumberToCharacterConverter('en');

    return pw.Column(
        children: [
          pw.Container(
              width: double.infinity,
              decoration: pw.BoxDecoration(
                  border: pw.Border.all(color: PdfColors.black)
              ),
              child:pw.Column(
                  mainAxisAlignment: pw.MainAxisAlignment.start,
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Container(
                        child: pw.Row(
                            children: [
                              pw.Expanded(
                                  flex:4,
                                  child: pw.Container(
                                    child: pw.Row(
                                        children: [
                                          pw.Expanded(
                                              flex:2,
                                              child: pw.Padding(
                                                  padding: pw.EdgeInsets.only(left: 1.h,top: 0.5.h,bottom: 0.5.h),
                                                  child: pw.Text(
                                                      'Amount Chargeable (in words) : ',
                                                      style: pw.TextStyle(
                                                        fontSize: 0.8.h,
                                                      )
                                                  )
                                              )),
                                          pw.Expanded(
                                              flex:3,
                                              child: pw.Padding(
                                                  padding: pw.EdgeInsets.only(right: 1.h,top: 0.5.h,bottom: 0.5.h),
                                                  child: pw.Text(
                                                      'INR '+converter.convertInt(
                                                          total
                                                      ),
                                                      style: pw.TextStyle(
                                                          fontSize: 0.8.h,
                                                          fontBold: pw.Font.courierBold()
                                                      )
                                                  )
                                              ))
                                        ]
                                    ),


                                  )),
                              pw.Expanded(
                                  flex:3,
                                  child: pw.Container(
                                      decoration: pw.BoxDecoration(
                                          border: pw.Border.all(color:PdfColors.black)
                                      ),
                                      child: pw.Column(
                                          children: [
                                            pw.Container(
                                                child: pw.Row(
                                                    children: [
                                                      pw.Expanded(
                                                          flex:2,
                                                          child: pw.Padding(
                                                              padding: pw.EdgeInsets.only(left: 1.h,top: 0.5.h,bottom: 0.5.h),
                                                              child: pw.Text(
                                                                  'Total Amount Before Tax : ',
                                                                  style: pw.TextStyle(
                                                                      fontSize: 0.8.h,
                                                                      fontBold: pw.Font.courierBold()
                                                                  )
                                                              )
                                                          )),
                                                      pw.Align(
                                                          alignment: pw.Alignment.centerRight,
                                                          child: pw.Expanded(
                                                              flex:3,
                                                              child: pw.Padding(
                                                                  padding: pw.EdgeInsets.only(right: 1.h,top: 0.5.h,bottom: 0.5.h),
                                                                  child: pw.Text(
                                                                      _controller.billSingleEntity.value.billingdetailslist![0].totalbeforetax.toString(),
                                                                      style: pw.TextStyle(
                                                                          fontSize: 0.8.h,
                                                                          fontBold: pw.Font.courierBold()
                                                                      )
                                                                  )
                                                              ))
                                                      )
                                                    ]
                                                )
                                            ),
                                            pw.Container(
                                                decoration: pw.BoxDecoration(
                                                    border: pw.Border.all(color: PdfColors.black)
                                                ),
                                                child: pw.Row(
                                                    children: [
                                                      pw.Expanded(
                                                          flex:2,
                                                          child: pw.Padding(
                                                              padding: pw.EdgeInsets.only(left: 1.h,top: 0.5.h,bottom: 0.5.h),
                                                              child: pw.Text(
                                                                  'Add : CGST',
                                                                  style: pw.TextStyle(
                                                                      fontSize: 0.8.h,
                                                                      fontBold: pw.Font.courierBold()
                                                                  )
                                                              )
                                                          )),
                                                      pw.Align(
                                                          alignment: pw.Alignment.centerRight,
                                                          child: pw.Expanded(
                                                              flex:3,
                                                              child: pw.Padding(
                                                                  padding: pw.EdgeInsets.only(right: 1.h,top: 0.5.h,bottom: 0.5.h),
                                                                  child: pw.Text(
                                                                      _controller.billSingleEntity.value.billingdetailslist![0].addcgst.toString(),
                                                                      style: pw.TextStyle(
                                                                          fontSize: 0.8.h,
                                                                          fontBold: pw.Font.courierBold()
                                                                      )
                                                                  )
                                                              ))
                                                      )
                                                    ]
                                                )
                                            ),
                                            pw.Container(
                                                decoration: pw.BoxDecoration(
                                                    border: pw.Border.all(color: PdfColors.black)
                                                ),
                                                child: pw.Row(
                                                    children: [
                                                      pw.Expanded(
                                                          flex:2,
                                                          child: pw.Padding(
                                                              padding: pw.EdgeInsets.only(left: 1.h,top: 0.5.h,bottom: 0.5.h),
                                                              child: pw.Text(
                                                                  'Add :  SGST : ',
                                                                  style: pw.TextStyle(
                                                                      fontSize: 0.8.h,
                                                                      fontBold: pw.Font.courierBold()
                                                                  )
                                                              )
                                                          )),
                                                      pw.Align(
                                                          alignment: pw.Alignment.centerRight,
                                                          child: pw.Expanded(
                                                              flex:3,
                                                              child: pw.Padding(
                                                                  padding: pw.EdgeInsets.only(right: 1.h,top: 0.5.h,bottom: 0.5.h),
                                                                  child: pw.Text(
                                                                      _controller.billSingleEntity.value.billingdetailslist![0].addsgst.toString(),
                                                                      style: pw.TextStyle(
                                                                          fontSize: 0.8.h,
                                                                          fontBold: pw.Font.courierBold()
                                                                      )
                                                                  )
                                                              ))
                                                      )
                                                    ]
                                                )
                                            ),
                                            pw.Container(
                                                decoration: pw.BoxDecoration(
                                                    border: pw.Border.all(color: PdfColors.black)
                                                ),
                                                child: pw.Row(
                                                    children: [
                                                      pw.Expanded(
                                                          flex:2,
                                                          child: pw.Padding(
                                                              padding: pw.EdgeInsets.only(left: 1.h,top: 0.5.h,bottom: 0.5.h),
                                                              child: pw.Text(
                                                                  'Add : IGST',
                                                                  style: pw.TextStyle(
                                                                      fontSize: 0.8.h,
                                                                      fontBold: pw.Font.courierBold()
                                                                  )
                                                              )
                                                          )),
                                                      pw.Align(
                                                          alignment: pw.Alignment.centerRight,
                                                          child: pw.Expanded(
                                                              flex:3,
                                                              child: pw.Padding(
                                                                  padding: pw.EdgeInsets.only(right: 1.h,top: 0.5.h,bottom: 0.5.h),
                                                                  child: pw.Text(
                                                                      '',
                                                                      style: pw.TextStyle(
                                                                          fontSize: 0.8.h,
                                                                          fontBold: pw.Font.courierBold()
                                                                      )
                                                                  )
                                                              ))
                                                      )
                                                    ]
                                                )
                                            ),
                                            pw.Container(
                                                decoration: pw.BoxDecoration(
                                                    border: pw.Border.all(color: PdfColors.black)
                                                ),
                                                child: pw.Row(
                                                    children: [
                                                      pw.Expanded(
                                                          flex:2,
                                                          child: pw.Padding(
                                                              padding: pw.EdgeInsets.only(left: 1.h,top: 0.5.h,bottom: 0.5.h),
                                                              child: pw.Text(
                                                                  'Total Amount GST : ',
                                                                  style: pw.TextStyle(
                                                                      fontSize: 0.8.h,
                                                                      fontBold: pw.Font.courierBold()
                                                                  )
                                                              )
                                                          )),
                                                      pw.Align(
                                                          alignment: pw.Alignment.centerRight,
                                                          child: pw.Expanded(
                                                              flex:3,
                                                              child: pw.Padding(
                                                                  padding: pw.EdgeInsets.only(right: 1.h,top: 0.5.h,bottom: 0.5.h),
                                                                  child: pw.Text(
                                                                      totalgst.toString(),
                                                                      style: pw.TextStyle(
                                                                          fontSize: 0.8.h,
                                                                          fontBold: pw.Font.courierBold()
                                                                      )
                                                                  )
                                                              ))
                                                      )
                                                    ]
                                                )
                                            ),
                                            pw.Container(
                                                decoration: pw.BoxDecoration(
                                                    border: pw.Border.all(color: PdfColors.black)
                                                ),
                                                child: pw.Row(
                                                    children: [
                                                      pw.Expanded(
                                                          flex:2,
                                                          child: pw.Padding(
                                                              padding: pw.EdgeInsets.only(left: 1.h,top: 0.5.h,bottom: 0.5.h),
                                                              child: pw.Text(
                                                                  'Total Amount After Tax : ',
                                                                  style: pw.TextStyle(
                                                                      fontSize: 0.8.h,
                                                                      fontBold: pw.Font.courierBold()
                                                                  )
                                                              )
                                                          )),
                                                      pw.Align(
                                                          alignment: pw.Alignment.centerRight,
                                                          child: pw.Expanded(
                                                              flex:3,
                                                              child: pw.Padding(
                                                                  padding: pw.EdgeInsets.only(right: 1.h,top: 0.5.h,bottom: 0.5.h),
                                                                  child: pw.Text(
                                                                      _controller.billSingleEntity.value.billingdetailslist![0].totalamountaftertax.toString(),
                                                                      style: pw.TextStyle(
                                                                          fontSize: 0.8.h,
                                                                          fontBold: pw.Font.courierBold()
                                                                      )
                                                                  )
                                                              ))
                                                      )
                                                    ]
                                                )
                                            )





                                          ]
                                      )



                                  ))
                            ]
                        )
                    )
                  ]
              )
          ),
          pw.Container(
              width: double.infinity,
              child: pw.Row(
                  children: [
                    pw.Expanded(
                      flex:3,
                      child: pw.Container(
                          decoration: pw.BoxDecoration(
                              border: pw.Border.all(color: PdfColors.black)
                          ),
                          child: pw.Column(
                              children: [
                                pw.SizedBox(
                                  height: 2.h,
                                ),
                                pw.Align(
                                    alignment: pw.Alignment.center,
                                    child: pw.Text(
                                        'DECLARATION',
                                        style: pw.TextStyle(
                                            fontSize: 0.9.h,
                                            fontBold: pw.Font.courierBold()
                                        )
                                    )
                                ),
                                pw.Padding(padding: pw.EdgeInsets.only(left: 1.h,right: 1.h,top: 1.h,bottom: 1.h),
                                    child: pw.Text(
                                        'We declare that this invoice shows the actual price of the goods described and that all particulars are true and correct.',
                                        style: pw.TextStyle(
                                          fontSize: 0.8.h,

                                        )
                                    ))
                              ]
                          )
                      ),),
                    pw.Expanded(
                      flex:2,
                      child: pw.Container(
                          decoration: pw.BoxDecoration(
                              border: pw.Border.all(color: PdfColors.black)
                          ),
                          child: pw.Column(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              mainAxisSize: pw.MainAxisSize.max,
                              children: [
                                pw.SizedBox(height: 1.h),
                                pw.Padding(padding: pw.EdgeInsets.only(left: 1.h,),
                                    child: pw.Text('Company Bank Details',
                                        style: pw.TextStyle(
                                            fontSize: 0.8.h
                                        ))),
                                pw.SizedBox(height: 1.h),
                                pw.Row(
                                    children: [
                                      pw.Padding(padding: pw.EdgeInsets.only(left: 1.h,),
                                          child: pw.Text('Bank Name : ',
                                              style: pw.TextStyle(
                                                  fontSize: 0.8.h
                                              ))),
                                      pw.Padding(padding: pw.EdgeInsets.only(left: 1.h,),
                                          child: pw.Text(' PUNJAB NATIONAL BANK',
                                              style: pw.TextStyle(
                                                  fontSize: 0.8.h
                                              ))),
                                    ]
                                ),
                                pw.Row(
                                    children: [
                                      pw.Padding(padding: pw.EdgeInsets.only(left: 1.h,),
                                          child: pw.Text('A/c No. : ',
                                              style: pw.TextStyle(
                                                  fontSize: 0.8.h
                                              ))),
                                      pw.Padding(padding: pw.EdgeInsets.only(left: 1.h,),
                                          child: pw.Text(' 4362008700002183',
                                              style: pw.TextStyle(
                                                  fontSize: 0.8.h
                                              ))),
                                    ]
                                ),
                                pw.Row(
                                    children: [
                                      pw.Padding(padding: pw.EdgeInsets.only(left: 1.h,),
                                          child: pw.Text('Branch & IFS Code : ',
                                              style: pw.TextStyle(
                                                  fontSize: 0.8.h
                                              ))),
                                      pw.Padding(padding: pw.EdgeInsets.only(left: 1.h,),
                                          child: pw.Text(' VENGARA & PUNB0436200',
                                              style: pw.TextStyle(
                                                  fontSize: 0.8.h
                                              ))),
                                    ]
                                ),
                                pw.SizedBox(height: 1.h),

                              ]
                          )
                      ),),
                  ]
              )
          ),
          pw.Container(
              decoration: pw.BoxDecoration(
                  border: pw.Border.all(color: PdfColors.black)
              ),
              child: pw.Row(
                  children: [
                    pw.Expanded(
                      flex:4,
                      child: pw.Container(
                        child:  pw.Padding(padding: pw.EdgeInsets.only(left: 1.h,right: 1.h,top: 1.h,bottom: 1.h),
                            child: pw.Text('Terms of Delevery : ',
                                style: pw.TextStyle(
                                    fontSize: 0.8.h
                                ))),
                      ),),
                    pw.Expanded(
                        flex:3,
                        child: pw.Container(
                            decoration: pw.BoxDecoration(
                                border: pw.Border.all(color: PdfColors.black)
                            ),
                            child: pw.Column(
                                crossAxisAlignment: pw.CrossAxisAlignment.end,
                                children: [
                                  pw.Padding(padding: pw.EdgeInsets.only(left: 1.h,right: 1.h,top: 1.h,bottom: 1.h),
                                      child: pw.Text('For STECON POLYMERS PVT LTD',
                                          style: pw.TextStyle(
                                              fontSize: 0.8.h
                                          ))),
                                  pw.SizedBox(height: 1.h),
                                  pw.Padding(padding: pw.EdgeInsets.only(left: 1.h,right: 1.h,top: 1.h,bottom: 1.h),
                                      child: pw.Text('Authorized Signator',
                                          style: pw.TextStyle(
                                              fontSize: 0.8.h
                                          )))
                                ]
                            )
                        ))
                  ]
              )
          )
        ]
    );
  }
  tableValueTotal(){
    _controller.count.value=_controller.count.value+1;
    return pw.Container(
        child: pw.Table(
            border:pw.TableBorder.all(color: PdfColors.black),
            children: [
              pw.TableRow(children: [
                pw.Container(
                    width:1.2.h,
                    child: pw.Padding(
                        padding: pw.EdgeInsets.only(left: 0.2.h,),
                        child: pw.Text(
                            '',
                            style: pw.TextStyle(
                              fontSize: 0.8.h,
                            )
                        )
                    )),
                pw.Container(
                    width:8.h,
                    child: pw.Padding(
                        padding: pw.EdgeInsets.only(left: 0.2.h,),
                        child: pw.Text(
                            'Total',
                            style: pw.TextStyle(
                              fontSize: 0.8.h,

                            )
                        )
                    )),
                pw.Container(
                    width:2.5.h,
                    child: pw.Padding(
                        padding: pw.EdgeInsets.only(left: 0.2.h,),
                        child: pw.Text(
                            '',
                            style: pw.TextStyle(
                              fontSize: 0.8.h,

                            )
                        )
                    )),
                pw.Container(
                    width:2.5.h,
                    child: pw.Padding(
                        padding: pw.EdgeInsets.only(left: 0.2.h,),
                        child: pw.Text(
                            '',
                            style: pw.TextStyle(
                              fontSize: 0.8.h,

                            )
                        )
                    )),
                pw.Container(
                    width:2.5.h,
                    child: pw.Padding(
                        padding: pw.EdgeInsets.only(left: 0.2.h,),
                        child: pw.Text(
                            _controller.totalPair.toString()+" Pairs",
                            style: pw.TextStyle(
                              fontSize: 0.8.h,

                            )
                        )
                    )),
                pw.Container(
                    width:2.5.h,
                    child:pw.Padding(
                        padding: pw.EdgeInsets.only(left: 0.2.h,),
                        child: pw.Text(
                            _controller.totalBox.toString()+" Boxs",
                            style: pw.TextStyle(
                              fontSize: 0.8.h,

                            )
                        )
                    )),
                pw.Container(
                    width:2.5.h,
                    child:   pw.Padding(
                        padding: pw.EdgeInsets.only(left: 0.2.h,),
                        child: pw.Text(
                            '',
                            style: pw.TextStyle(
                              fontSize: 0.8.h,

                            )
                        )
                    )
                ),
                pw.Container(
                    width:2.5.h,
                    child: pw.Padding(
                        padding: pw.EdgeInsets.only(left: 0.2.h,),
                        child: pw.Text(
                            _controller.totalAmt.toString(),
                            style: pw.TextStyle(
                              fontSize: 0.8.h,

                            )
                        )
                    )),
                pw.Container(
                    width:2.5.h,
                    child: pw.Padding(
                        padding: pw.EdgeInsets.only(left: 0.2.h,),
                        child: pw.Text(
                            _controller.totallessdisc.toString(),
                            style: pw.TextStyle(
                              fontSize: 0.8.h,

                            )
                        )
                    )),
                pw.Container(
                    width:3.5.h,
                    child: pw.Padding(
                        padding: pw.EdgeInsets.only(left: 0.2.h,),
                        child: pw.Text(
                            _controller.totalTaxableValue.toString(),
                            style: pw.TextStyle(
                              fontSize: 0.8.h,

                            )
                        )
                    )),
                pw.Container(
                    width:3.5.h,
                    child: pw.Column(
                        children: [
                          // pw.Padding(
                          //     padding: pw.EdgeInsets.only(left: 0.2.h,),
                          //     child: pw.Text(
                          //         'SGST',
                          //         style: pw.TextStyle(
                          //           fontSize: 0.8.h,
                          //
                          //         )
                          //     )
                          // ),
                          pw.Container(
                              width: double.infinity,
                              child: pw.Row(
                                  children: [
                                    pw.Expanded(
                                      flex:1,
                                      child: pw.Container(
                                          decoration: pw.BoxDecoration(
                                              border: pw.Border.all(color: PdfColors.black)
                                          ),
                                          child: pw.Padding(
                                              padding: pw.EdgeInsets.only(left: 0.2.h),
                                              child: pw.Text(
                                                  '',
                                                  style: pw.TextStyle(
                                                      fontSize: 0.8.h
                                                  )
                                              )
                                          )
                                      ),),
                                    pw.Expanded(
                                        flex:3,
                                        child: pw.Container(
                                            decoration: pw.BoxDecoration(
                                                border: pw.Border.all(color: PdfColors.black)
                                            ),
                                            child: pw.Padding(
                                                padding: pw.EdgeInsets.only(left: 0.2.h),
                                                child: pw.Text(
                                                    _controller.totalsgst.toString(),
                                                    style: pw.TextStyle(
                                                        fontSize: 0.8.h
                                                    )
                                                )
                                            )
                                        ))
                                  ]
                              )
                          )

                        ]
                    )),
                pw.Container(
                    width:3.5.h,
                    child: pw.Column(
                        children: [
                          // pw.Padding(
                          //     padding: pw.EdgeInsets.only(left: 0.2.h,),
                          //     child: pw.Text(
                          //         'CGST',
                          //         style: pw.TextStyle(
                          //           fontSize: 0.8.h,
                          //
                          //         )
                          //     )
                          // ),
                          pw.Container(
                              width: double.infinity,
                              child: pw.Row(
                                  children: [
                                    pw.Expanded(
                                      flex:1,
                                      child: pw.Container(
                                        decoration: pw.BoxDecoration(
                                            border: pw.Border.all(color: PdfColors.black)
                                        ),
                                        child: pw.Padding(
                                            padding: pw.EdgeInsets.only(left: 0.2.h),
                                            child: pw.Text(
                                                '',
                                                style: pw.TextStyle(
                                                    fontSize: 0.8.h
                                                )
                                            )
                                        ),
                                      ),),
                                    pw.Expanded(
                                        flex:3,
                                        child: pw.Container(
                                          decoration: pw.BoxDecoration(
                                              border: pw.Border.all(color: PdfColors.black)
                                          ),
                                          child: pw.Padding(
                                              padding: pw.EdgeInsets.only(left: 0.2.h),
                                              child: pw.Text(
                                                  _controller.totalcgst.toString(),
                                                  style: pw.TextStyle(
                                                      fontSize: 0.8.h
                                                  )
                                              )
                                          ),

                                        ))
                                  ]
                              )
                          )

                        ]
                    )),
                pw.Container(
                    width:3.5.h,
                    child: pw.Padding(
                        padding: pw.EdgeInsets.only(left: 0.2.h,),
                        child: pw.Text(
                            _controller.total.toString(),
                            style: pw.TextStyle(
                              fontSize: 0.8.h,

                            )
                        )
                    )),

              ]),

            ]
        )
    );
  }

  tableValue(ViewBillSingleBillingproductlist billingproductlist){
    _controller.count.value=_controller.count.value+1;
    return pw.Container(
        child: pw.Table(
            border:pw.TableBorder.all(color: PdfColors.black),
            children: [
              pw.TableRow(children: [
                pw.Container(
                    width:1.2.h,
                    child: pw.Padding(
                        padding: pw.EdgeInsets.only(left: 0.2.h,),
                        child: pw.Text(
                            _controller.count.value.toString(),
                            style: pw.TextStyle(
                              fontSize: 0.8.h,
                            )
                        )
                    )),
                pw.Container(
                    width:8.h,
                    child: pw.Padding(
                        padding: pw.EdgeInsets.only(left: 0.2.h,),
                        child: pw.Text(
                            billingproductlist.productname.toString(),
                            style: pw.TextStyle(
                              fontSize: 0.8.h,

                            )
                        )
                    )),
                pw.Container(
                    width:2.5.h,
                    child: pw.Padding(
                        padding: pw.EdgeInsets.only(left: 0.2.h,),
                        child: pw.Text(
                            billingproductlist.hsnsac.toString(),
                            style: pw.TextStyle(
                              fontSize: 0.8.h,

                            )
                        )
                    )),
                pw.Container(
                    width:2.5.h,
                    child: pw.Padding(
                        padding: pw.EdgeInsets.only(left: 0.2.h,),
                        child: pw.Text(
                            billingproductlist.mrp.toString(),
                            style: pw.TextStyle(
                              fontSize: 0.8.h,

                            )
                        )
                    )),
                pw.Container(
                    width:2.5.h,
                    child: pw.Padding(
                        padding: pw.EdgeInsets.only(left: 0.2.h,),
                        child: pw.Text(
                            billingproductlist.qty.toString(),
                            style: pw.TextStyle(
                              fontSize: 0.8.h,

                            )
                        )
                    )),
                pw.Container(
                    width:2.5.h,
                    child:pw.Padding(
                        padding: pw.EdgeInsets.only(left: 0.2.h,),
                        child: pw.Text(
                            billingproductlist.altqty.toString(),
                            style: pw.TextStyle(
                              fontSize: 0.8.h,

                            )
                        )
                    )),
                pw.Container(
                    width:2.5.h,
                    child:   pw.Padding(
                        padding: pw.EdgeInsets.only(left: 0.2.h,),
                        child: pw.Text(
                            billingproductlist.rate.toString(),
                            style: pw.TextStyle(
                              fontSize: 0.8.h,

                            )
                        )
                    )
                ),
                pw.Container(
                    width:2.5.h,
                    child: pw.Padding(
                        padding: pw.EdgeInsets.only(left: 0.2.h,),
                        child: pw.Text(
                            billingproductlist.amt.toString(),
                            style: pw.TextStyle(
                              fontSize: 0.8.h,

                            )
                        )
                    )),
                pw.Container(
                    width:2.5.h,
                    child: pw.Padding(
                        padding: pw.EdgeInsets.only(left: 0.2.h,),
                        child: pw.Text(
                            billingproductlist.lessdiscamt.toString(),
                            style: pw.TextStyle(
                              fontSize: 0.8.h,

                            )
                        )
                    )),
                pw.Container(
                    width:3.5.h,
                    child: pw.Padding(
                        padding: pw.EdgeInsets.only(left: 0.2.h,),
                        child: pw.Text(
                            billingproductlist.txablevalue.toString(),
                            style: pw.TextStyle(
                              fontSize: 0.8.h,

                            )
                        )
                    )),
                pw.Container(
                    width:3.5.h,
                    child: pw.Column(
                        children: [
                          // pw.Padding(
                          //     padding: pw.EdgeInsets.only(left: 0.2.h,),
                          //     child: pw.Text(
                          //         'SGST',
                          //         style: pw.TextStyle(
                          //           fontSize: 0.8.h,
                          //
                          //         )
                          //     )
                          // ),
                          pw.Container(
                              width: double.infinity,
                              child: pw.Row(
                                  children: [
                                    pw.Expanded(
                                      flex:1,
                                      child: pw.Container(
                                          decoration: pw.BoxDecoration(
                                              border: pw.Border.all(color: PdfColors.black)
                                          ),
                                          child: pw.Padding(
                                              padding: pw.EdgeInsets.only(left: 0.2.h),
                                              child: pw.Text(
                                                  billingproductlist.sgstper.toString(),
                                                  style: pw.TextStyle(
                                                      fontSize: 0.8.h
                                                  )
                                              )
                                          )
                                      ),),
                                    pw.Expanded(
                                        flex:3,
                                        child: pw.Container(
                                            decoration: pw.BoxDecoration(
                                                border: pw.Border.all(color: PdfColors.black)
                                            ),
                                            child: pw.Padding(
                                                padding: pw.EdgeInsets.only(left: 0.2.h),
                                                child: pw.Text(
                                                    billingproductlist.sgastamt.toString(),
                                                    style: pw.TextStyle(
                                                        fontSize: 0.8.h
                                                    )
                                                )
                                            )
                                        ))
                                  ]
                              )
                          )

                        ]
                    )),
                pw.Container(
                    width:3.5.h,
                    child: pw.Column(
                        children: [
                          // pw.Padding(
                          //     padding: pw.EdgeInsets.only(left: 0.2.h,),
                          //     child: pw.Text(
                          //         'CGST',
                          //         style: pw.TextStyle(
                          //           fontSize: 0.8.h,
                          //
                          //         )
                          //     )
                          // ),
                          pw.Container(
                              width: double.infinity,
                              child: pw.Row(
                                  children: [
                                    pw.Expanded(
                                      flex:1,
                                      child: pw.Container(
                                        decoration: pw.BoxDecoration(
                                            border: pw.Border.all(color: PdfColors.black)
                                        ),
                                        child: pw.Padding(
                                            padding: pw.EdgeInsets.only(left: 0.2.h),
                                            child: pw.Text(
                                                billingproductlist.cgstper.toString(),
                                                style: pw.TextStyle(
                                                    fontSize: 0.8.h
                                                )
                                            )
                                        ),
                                      ),),
                                    pw.Expanded(
                                        flex:3,
                                        child: pw.Container(
                                          decoration: pw.BoxDecoration(
                                              border: pw.Border.all(color: PdfColors.black)
                                          ),
                                          child: pw.Padding(
                                              padding: pw.EdgeInsets.only(left: 0.2.h),
                                              child: pw.Text(
                                                  billingproductlist.cgstamt.toString(),
                                                  style: pw.TextStyle(
                                                      fontSize: 0.8.h
                                                  )
                                              )
                                          ),

                                        ))
                                  ]
                              )
                          )

                        ]
                    )),
                pw.Container(
                    width:3.5.h,
                    child: pw.Padding(
                        padding: pw.EdgeInsets.only(left: 0.2.h,),
                        child: pw.Text(
                            billingproductlist.total.toString(),
                            style: pw.TextStyle(
                              fontSize: 0.8.h,

                            )
                        )
                    )),

              ]),

            ]
        )
    );
  }

  tableHeader(){
    return pw.Container(
        child: pw.Table(
            border:pw.TableBorder.all(color: PdfColors.black),
            children: [
              pw.TableRow(children: [
                pw.Container(
                    width:1.2.h,
                    child: pw.Padding(
                        padding: pw.EdgeInsets.only(left: 0.2.h,),
                        child: pw.Text(
                            'Sl no',
                            style: pw.TextStyle(
                              fontSize: 0.8.h,
                            )
                        )
                    )),
                pw.Container(
                    width:8.h,
                    child: pw.Padding(
                        padding: pw.EdgeInsets.only(left: 0.2.h,),
                        child: pw.Text(
                            'Name of Products \n Service',
                            style: pw.TextStyle(
                              fontSize: 0.8.h,

                            )
                        )
                    )),
                pw.Container(
                    width:2.5.h,
                    child: pw.Padding(
                        padding: pw.EdgeInsets.only(left: 0.2.h,),
                        child: pw.Text(
                            'HSN \n SAC',
                            style: pw.TextStyle(
                              fontSize: 0.8.h,

                            )
                        )
                    )),
                pw.Container(
                    width:2.5.h,
                    child: pw.Padding(
                        padding: pw.EdgeInsets.only(left: 0.2.h,),
                        child: pw.Text(
                            'MRP',
                            style: pw.TextStyle(
                              fontSize: 0.8.h,

                            )
                        )
                    )),
                pw.Container(
                    width:2.5.h,
                    child: pw.Padding(
                        padding: pw.EdgeInsets.only(left: 0.2.h,),
                        child: pw.Text(
                            'Qty',
                            style: pw.TextStyle(
                              fontSize: 0.8.h,

                            )
                        )
                    )),
                pw.Container(
                    width:2.5.h,
                    child:pw.Padding(
                        padding: pw.EdgeInsets.only(left: 0.2.h,),
                        child: pw.Text(
                            'Alt \n Qty',
                            style: pw.TextStyle(
                              fontSize: 0.8.h,

                            )
                        )
                    )),
                pw.Container(
                    width:2.5.h,
                    child:   pw.Padding(
                        padding: pw.EdgeInsets.only(left: 0.2.h,),
                        child: pw.Text(
                            'Rate',
                            style: pw.TextStyle(
                              fontSize: 0.8.h,

                            )
                        )
                    )
                ),
                pw.Container(
                    width:2.5.h,
                    child: pw.Padding(
                        padding: pw.EdgeInsets.only(left: 0.2.h,),
                        child: pw.Text(
                            'Amt',
                            style: pw.TextStyle(
                              fontSize: 0.8.h,

                            )
                        )
                    )),
                pw.Container(
                    width:2.5.h,
                    child: pw.Padding(
                        padding: pw.EdgeInsets.only(left: 0.2.h,),
                        child: pw.Text(
                            'Less \n Disc',
                            style: pw.TextStyle(
                              fontSize: 0.8.h,

                            )
                        )
                    )),
                pw.Container(
                    width:3.5.h,
                    child: pw.Padding(
                        padding: pw.EdgeInsets.only(left: 0.2.h,),
                        child: pw.Text(
                            'Taxable \n Value',
                            style: pw.TextStyle(
                              fontSize: 0.8.h,

                            )
                        )
                    )),
                pw.Container(
                    width:3.5.h,
                    child: pw.Column(
                        children: [
                          pw.Padding(
                              padding: pw.EdgeInsets.only(left: 0.2.h,),
                              child: pw.Text(
                                  'SGST',
                                  style: pw.TextStyle(
                                    fontSize: 0.8.h,

                                  )
                              )
                          ),
                          pw.Container(
                              width: double.infinity,
                              child: pw.Row(
                                  children: [
                                    pw.Expanded(
                                      flex:1,
                                      child: pw.Container(
                                          decoration: pw.BoxDecoration(
                                              border: pw.Border.all(color: PdfColors.black)
                                          ),
                                          child: pw.Text(
                                              '%',
                                              style: pw.TextStyle(
                                                  fontSize: 0.8.h
                                              )
                                          )
                                      ),),
                                    pw.Expanded(
                                        flex:3,
                                        child: pw.Container(
                                            decoration: pw.BoxDecoration(
                                                border: pw.Border.all(color: PdfColors.black)
                                            ),
                                            child: pw.Text(
                                                'Amt',
                                                style: pw.TextStyle(
                                                    fontSize: 0.8.h
                                                )
                                            )
                                        ))
                                  ]
                              )
                          )

                        ]
                    )),
                pw.Container(
                    width:3.5.h,
                    child: pw.Column(
                        children: [
                          pw.Padding(
                              padding: pw.EdgeInsets.only(left: 0.2.h,),
                              child: pw.Text(
                                  'CGST',
                                  style: pw.TextStyle(
                                    fontSize: 0.8.h,

                                  )
                              )
                          ),
                          pw.Container(
                              width: double.infinity,
                              child: pw.Row(
                                  children: [
                                    pw.Expanded(
                                      flex:1,
                                      child: pw.Container(
                                          decoration: pw.BoxDecoration(
                                              border: pw.Border.all(color: PdfColors.black)
                                          ),
                                          child: pw.Text(
                                              '%',
                                              style: pw.TextStyle(
                                                  fontSize: 0.8.h
                                              )
                                          )
                                      ),),
                                    pw.Expanded(
                                        flex:3,
                                        child: pw.Container(
                                            decoration: pw.BoxDecoration(
                                                border: pw.Border.all(color: PdfColors.black)
                                            ),
                                            child: pw.Text(
                                                'Amt',
                                                style: pw.TextStyle(
                                                    fontSize: 0.8.h
                                                )
                                            )
                                        ))
                                  ]
                              )
                          )

                        ]
                    )),
                pw.Container(
                    width:3.5.h,
                    child: pw.Padding(
                        padding: pw.EdgeInsets.only(left: 0.2.h,),
                        child: pw.Text(
                            'Total',
                            style: pw.TextStyle(
                              fontSize: 0.8.h,

                            )
                        )
                    )),

              ]),

            ]
        )
    );
  }


  header(){
    return pw.Row(
        children:[
          pw.Expanded(
              flex: 1,
              child: pw.Container(
                  child: pw.Column(
                      children: [
                        pw.Row(
                            children: [
                              pw.Text('IRN    :', style: pw.TextStyle(
                                  fontSize: 1.h,
                                  color: PdfColors.black
                              )),
                              pw.Expanded(
                                  flex: 1,
                                  child: pw.Container(
                                      margin: pw.EdgeInsets.only(left: 1.h),
                                      child: pw.Text('9af61bc51cef28f6d9cf24c39d548fc3c2db74-eae44bf0d56125b55507916306',
                                          style: pw.TextStyle(
                                              fontSize: 1.2.h,
                                              fontBold: pw.Font.courierBold(),
                                              color: PdfColors.black
                                          ))
                                  ))
                            ]
                        ),
                        pw.Row(
                            children: [
                              pw.Text('Ack No    :', style: pw.TextStyle(
                                  fontSize: 1.h,
                                  color: PdfColors.black
                              )),
                              pw.Expanded(
                                  flex: 1,
                                  child: pw.Container(
                                      margin: pw.EdgeInsets.only(left: 1.h),
                                      child: pw.Text('152213143978059',

                                          style: pw.TextStyle(
                                              fontSize: 1.2.h,
                                              fontBold: pw.Font.courierBold(),
                                              color: PdfColors.black
                                          ))
                                  ))
                            ]
                        ),
                        pw.Row(
                            children: [
                              pw.Text('Ack Date     :', style: pw.TextStyle(
                                  fontSize: 1.h,
                                  color: PdfColors.black
                              )),
                              pw.Expanded(
                                  flex: 1,
                                  child: pw.Container(
                                      margin: pw.EdgeInsets.only(left: 1.h),
                                      child: pw.Text('1-Nov-22',

                                          style: pw.TextStyle(
                                              fontSize: 1.2.h,
                                              fontBold: pw.Font.courierBold(),
                                              color: PdfColors.black
                                          ))
                                  ))
                            ]
                        )
                      ]
                  )
              )),
          pw.Expanded(
              flex:1,child: pw.Container(
          )),

        ]
    );
  }

  heading(){
    return pw.Container(
        child: pw.Center(
            child: pw.Column(
                children:
                [
                  pw.Text('STECON POLYMERS PVT LTD',
                      style: pw.TextStyle(
                          fontSize: 2.5.h,
                          fontBold: pw.Font.courierBold(),
                          color: PdfColors.black
                      )),
                  pw.SizedBox(
                      height: 0.5.h
                  ),
                  pw.Text('2/268-A MLA ROAD, OORAKAM KIZHMURI,',
                      style: pw.TextStyle(
                          fontSize: 1.3.h,
                          color: PdfColors.black
                      )),
                  pw.Text('VENGARA, MALAPPURAM (DT.),',
                      style: pw.TextStyle(
                          fontSize: 1.3.h,
                          color: PdfColors.black
                      )),
                  pw.Text('KERALA. 676519',
                      style: pw.TextStyle(
                          fontSize: 1.3.h,
                          color: PdfColors.black
                      )),
                  pw.Text('GSTIN/UIN: 32AATCS3478A1ZA',
                      style: pw.TextStyle(
                          fontSize: 1.3.h,
                          color: PdfColors.black
                      )),
                  pw.Text('State Name : Kerala, Code : 32',
                      style: pw.TextStyle(
                          fontSize: 1.3.h,
                          color: PdfColors.black
                      )),
                  pw.Text('Contact : 0494-2457900,9544600056',
                      style: pw.TextStyle(
                          fontSize: 1.3.h,
                          color: PdfColors.black
                      )),
                  pw.Text('E-Mail : steconpolymers@gmail.com',
                      style: pw.TextStyle(
                          fontSize: 1.3.h,
                          color: PdfColors.black
                      )),
                  pw.Text('PAN : AATCS3478A',
                      style: pw.TextStyle(
                          fontSize: 1.3.h,
                          fontBold: pw.Font.helveticaBold(),
                          color: PdfColors.black
                      )),


                ]
            )
        )
    );
  }

  generatePdf()async{
    final pdf = pw.Document();
    pdf.addPage(
      pw.MultiPage(
        // theme: theme,
        build: (pw.Context context) =>[
          header(),
          pw.SizedBox(height: 2.h),
          heading(),
          pw.SizedBox(height: 2.h),
          recipientDetails(),
          tableHeader(),
          ..._controller.billSingleEntity.value.billingproductlist!.map((e) => tableValue(e)),
          tableValueTotal(),
          totalSection(),
        ],


      ),
    );



    final bytes = await pdf.save();
    final dir = await getApplicationDocumentsDirectory();
    DateTime dateTime=DateTime.now();
    final file = File('${dir.path}/${dateTime.toString()}example.pdf');

    await file.writeAsBytes(bytes);

    final url = file.path;
    print(file.path.toString());
    await OpenFilex.open(url);


    // await OpenFile.open(url);

    // Save the PDF to a file
    // ...
  }

}
