import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperPurchaseOrder/Controller/UpperPuirchseOrder1Controller.dart';

import '../../../CustomFont/Header.dart';
import '../../../CustomFont/Heading.dart';
import '../../../CustomFont/NormalText.dart';
import '../../../CustomFont/SubHeading.dart';
import '../../../CustomWidget/CustomBox.dart';

class UpperPuchaseOrder1UPM extends StatelessWidget {
  final String upmId;
  final String id;
  final String orderno;
  UpperPuchaseOrder1UPM({Key? key, required this.upmId, required this.id, required this.orderno}) : super(key: key);
  late final _controller =Get.put(UpperPurchseOrder1Controller(upmId: upmId, id: id, orderno: orderno));


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
            text: 'Upper Purchase Order',
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
        body:
          Obx(()=>
              _body()
          )
      ),
    );
  }
  _body(){
    if(_controller.loadingBool.value==true){
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
            children: [HeadingText(text: 'No date')],
          ),
        );
      }
       else if(_controller.orderNoEntity.value!=null){
         if(_controller.orderNoEntity.value.response=='Success'){
           return ListView(
             children: [
               SizedBox(
                 height: 2.h,
               ),
               Container(
                 color: Colors.white,
                 child: Container(
                   margin: EdgeInsets.fromLTRB(3.h, 3.h, 3.h, 3.h),
                   color: Colors.white,
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           HeadingText(
                             text:_controller.orderNoEntity.value.purchaseplanlist![0].companyname.toString(),
                           ),
                         ],
                       ),
                       SizedBox(height: 2.h),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           NormalText(text: 'Plan no : ' + _controller.orderNoEntity.value.purchaseplanlist![0].companyplanno.toString()),
                           Text(
                             _controller.orderNoEntity.value.purchaseplanlist![0].status.toString(),
                             style: GoogleFonts.radioCanada(
                               fontSize: 15,
                               // fontWeight: FontWeight.bold,
                               color: const Color(0xFF4FE138),
                             ),
                           ),
                         ],
                       ),
                       SizedBox(
                         height: 1.h,
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           NormalText(text: 'Order no : ' +_controller.orderNoEntity.value.purchaseplanlist![0].orderno.toString()),
                           NormalText(text: _controller.orderNoEntity.value.purchaseplanlist![0].orderdate.toString())
                         ],
                       ),
                       SizedBox(height: 2.h),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           NormalText(text: "Status From Office: "+_controller.orderNoEntity.value.purchaseplanlist![0].status1.toString()),
                         ],
                       ),
                       SizedBox(
                         height: 0.5.h,
                       ),
                       // NormalText(
                       //     text:
                       //     "Quisque hendrerit mi sed arcu varius, in lacinia ex scelerisque. Cras quis blandit dui"),
                       // SizedBox(
                       //   height: 2.h,
                       // ),
                     ],
                   ),
                 ),
               ),
               Divider(
                 height: 1.5.h,
                 color: Colors.grey[200],
               ),
               Container(
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Container(
                         color: Colors.white,
                         child: ListView.separated(
                           shrinkWrap: true,
                           physics: NeverScrollableScrollPhysics(),
                           itemCount: _controller.orderNoEntity.value.purchaseproductlist!.length,
                           itemBuilder: (BuildContext context, int index) {
                             final size1controller = TextEditingController();
                             final size2controller = TextEditingController();
                             final size3controller = TextEditingController();
                             final size4controller = TextEditingController();
                             final size5controller = TextEditingController();
                             final size6controller = TextEditingController();
                             final size7controller = TextEditingController();
                             final size8controller = TextEditingController();
                             final size9controller = TextEditingController();
                             final size10controller = TextEditingController();
                             final size11controller = TextEditingController();
                             final size12controller = TextEditingController();
                             final size13controller = TextEditingController();
                             size1controller.text=_controller.orderNoEntity.value.purchaseproductlist![index].s1.toString();
                             size2controller.text=_controller.orderNoEntity.value.purchaseproductlist![index].s2.toString();
                             size3controller.text=_controller.orderNoEntity.value.purchaseproductlist![index].s3.toString();
                             size4controller.text=_controller.orderNoEntity.value.purchaseproductlist![index].s4.toString();
                             size5controller.text=_controller.orderNoEntity.value.purchaseproductlist![index].s5.toString();
                             size6controller.text=_controller.orderNoEntity.value.purchaseproductlist![index].s6.toString();
                             size7controller.text=_controller.orderNoEntity.value.purchaseproductlist![index].s7.toString();
                             size8controller.text=_controller.orderNoEntity.value.purchaseproductlist![index].s8.toString();
                             size9controller.text=_controller.orderNoEntity.value.purchaseproductlist![index].s9.toString();
                             size10controller.text=_controller.orderNoEntity.value.purchaseproductlist![index].s10.toString();
                             size11controller.text=_controller.orderNoEntity.value.purchaseproductlist![index].s11.toString();
                             size12controller.text=_controller.orderNoEntity.value.purchaseproductlist![index].s12.toString();
                             size13controller.text=_controller.orderNoEntity.value.purchaseproductlist![index].s13.toString();

                             return Column(
                               children: [
                                 Material(
                                   borderRadius: BorderRadius.circular(0),
                                   elevation: 0,
                                   // shadowColor: Colors.grey,
                                   child: Container(
                                     margin: EdgeInsets.fromLTRB(1.h, 0.h, 1.h, 0.h),
                                     color: Colors.white,
                                     child: ExpansionTile(
                                       title: Padding(
                                         padding:
                                         EdgeInsets.fromLTRB(0.h, 2.h, 0.h, 2.h),
                                         child: Column(
                                           mainAxisAlignment: MainAxisAlignment.start,
                                           crossAxisAlignment: CrossAxisAlignment.start,
                                           children: [
                                             Padding(
                                               padding: EdgeInsets.only(top: 1.5.h),
                                               child: Text(
                                                 _controller.orderNoEntity.value.purchaseproductlist![index].planno.toString(),
                                                 style: GoogleFonts.radioCanada(
                                                     fontSize: 17,
                                                     fontWeight: FontWeight.bold,
                                                     color: Colors.blue[200]),
                                               ),
                                             ),
                                             SizedBox(
                                               height: 1.h,
                                             ),
                                             NormalText(text:_controller.orderNoEntity.value.purchaseproductlist![index].artnoname.toString()),
                                             SizedBox(
                                               height: 1.h,
                                             ),
                                           ],
                                         ),
                                       ),
                                       children: [
                                         Column(
                                           children: [
                                             Container(
                                                 margin: EdgeInsets.fromLTRB(
                                                     0.h, 0.h, 0.h, 0.h),
                                                 color: Colors.white,
                                                 child: Padding(
                                                   padding: const EdgeInsets.all(20.0),
                                                   child: Column(
                                                     crossAxisAlignment:
                                                     CrossAxisAlignment.start,
                                                     children: [
                                                       // HeadingText(text: "2115-BROWN-GENTS"),
                                                       Row(
                                                         children: [
                                                           Expanded(
                                                             flex: 1,
                                                             child: Container(
                                                               child: Column(
                                                                 crossAxisAlignment:
                                                                 CrossAxisAlignment
                                                                     .start,
                                                                 children: [
                                                                   NormalText(
                                                                       text:
                                                                       "Category : "),
                                                                   SizedBox(
                                                                     height: 2.h,
                                                                   ),
                                                                   NormalText(
                                                                       text: "Color : "),
                                                                   SizedBox(
                                                                     height: 2.h,
                                                                   ),
                                                                   // NormalText(
                                                                   //     text: "Size : "),
                                                                   // SizedBox(
                                                                   //   height: 2.h,
                                                                   // ),
                                                                   NormalText(
                                                                       text:
                                                                       "Cut of date : "),
                                                                   SizedBox(
                                                                     height: 2.h,
                                                                   ),
                                                                   NormalText(
                                                                       text: "Total : "),
                                                                   SizedBox(
                                                                     height: 2.h,
                                                                   ),
                                                                 ],
                                                               ),
                                                             ),
                                                           ),
                                                           Expanded(
                                                             flex: 2,
                                                             child: Container(
                                                               child: Padding(
                                                                 padding:
                                                                 EdgeInsets.fromLTRB(
                                                                     2.h,
                                                                     0.h,
                                                                     0.h,
                                                                     0.h),
                                                                 child: Column(
                                                                   crossAxisAlignment:
                                                                   CrossAxisAlignment
                                                                       .start,
                                                                   children: [
                                                                     NormalText(
                                                                         text: _controller.orderNoEntity.value.purchaseproductlist![index].categoryname.toString()),
                                                                     SizedBox(
                                                                       height: 2.h,
                                                                     ),
                                                                     NormalText(
                                                                         text: _controller.orderNoEntity.value.purchaseproductlist![index].colorname.toString()),
                                                                     SizedBox(
                                                                       height: 2.h,
                                                                     ),
                                                                     // NormalText(
                                                                     //     text: "1*5"),
                                                                     // SizedBox(
                                                                     //   height: 2.h,
                                                                     // ),
                                                                     NormalText(
                                                                         text:
                                                                         _controller.orderNoEntity.value.purchaseproductlist![index].cutofdate.toString()),
                                                                     SizedBox(
                                                                       height: 2.h,
                                                                     ),
                                                                     NormalText(
                                                                         text: _controller.orderNoEntity.value.purchaseproductlist![index].totalpairs.toString()),
                                                                     SizedBox(
                                                                       height: 2.h,
                                                                     ),
                                                                   ],
                                                                 ),
                                                               ),
                                                             ),
                                                           )
                                                         ],
                                                       ),
                                                       Divider(
                                                         color: Colors.grey[400],
                                                       ),
                                                       SizedBox(
                                                         height: 2.h,
                                                       ),
                                                       Row(
                                                         children: [
                                                           Expanded(
                                                             flex: 1,
                                                             child: Container(
                                                               child: Column(
                                                                 crossAxisAlignment:
                                                                 CrossAxisAlignment
                                                                     .start,
                                                                 children: [
                                                                   Row(
                                                                     mainAxisAlignment:
                                                                     MainAxisAlignment
                                                                         .spaceBetween,
                                                                     children: [
                                                                       NormalText(
                                                                           text:
                                                                           "Note: "),
                                                                     ],
                                                                   ),
                                                                   SizedBox(
                                                                     height: 2.h,
                                                                   ),
                                                                   NormalText(
                                                                       text:
                                                                       _controller.orderNoEntity.value.purchaseproductlist![index].note.toString()),
                                                                   SizedBox(
                                                                     height: 2.h,
                                                                   ),
                                                                   Divider(
                                                                     color: Colors
                                                                         .grey[400],
                                                                   ),
                                                                 ],
                                                               ),
                                                             ),
                                                           ),
                                                         ],
                                                       ),
                                                     ],
                                                   ),
                                                 )),
                                             Container(
                                               color: Colors.white,
                                               margin: EdgeInsets.fromLTRB(
                                                   0.h, 0.h, 0.h, 0.h),
                                               child: Container(
                                                 color: Colors.white,
                                                 margin: EdgeInsets.fromLTRB(
                                                     0.h, 0.h, 2.h, 0.h),
                                                 child: Column(children: [
                                                   Column(
                                                     crossAxisAlignment:
                                                     CrossAxisAlignment.start,
                                                     children: [
                                                       Padding(
                                                         padding: EdgeInsets.fromLTRB(
                                                             2.h, 0.h, 0.h, 0.h),
                                                         child: SubHeadingText(
                                                             text: "Size Details"),
                                                       ),
                                                       Row(
                                                         children: [
                                                           CustomBox(
                                                               controller:
                                                               size1controller,
                                                               label: "Size-1"),
                                                           CustomBox(
                                                               controller:
                                                               size2controller,
                                                               label: "Size-2"),
                                                           CustomBox(
                                                               controller:
                                                               size3controller,
                                                               label: "Size-3")
                                                         ],
                                                       ),
                                                     ],
                                                   ),
                                                   Row(
                                                     children: [
                                                       CustomBox(
                                                           controller: size4controller,
                                                           label: "Size-4"),
                                                       CustomBox(
                                                           controller: size5controller,
                                                           label: "Size-5"),
                                                       CustomBox(
                                                           controller: size6controller,
                                                           label: "Size-6")
                                                     ],
                                                   ),
                                                   Row(
                                                     children: [
                                                       CustomBox(
                                                           controller: size7controller,
                                                           label: "Size-7"),
                                                       CustomBox(
                                                           controller: size8controller,
                                                           label: "Size-8"),
                                                       CustomBox(
                                                           controller: size9controller,
                                                           label: "Size-9")
                                                     ],
                                                   ),
                                                   Row(
                                                     children: [
                                                       CustomBox(
                                                           controller: size10controller,
                                                           label: "Size-10"),
                                                       CustomBox(
                                                           controller: size11controller,
                                                           label: "Size-11"),
                                                       CustomBox(
                                                           controller: size12controller,
                                                           label: "Size-12")
                                                     ],
                                                   ),
                                                   Row(
                                                     children: [
                                                       CustomBox(
                                                           controller: size13controller,
                                                           label: "Size-13"),
                                                       Expanded(
                                                         flex: 1,
                                                         child: Container(),
                                                       ),
                                                       Expanded(
                                                         flex: 1,
                                                         child: Container(),
                                                       ),
                                                     ],
                                                   ),
                                                   SizedBox(
                                                     height: 4.h,
                                                   ),
                                                 ]),
                                               ),
                                             ),
                                             Container(
                                               margin:
                                               EdgeInsets.symmetric(horizontal: 3.h),
                                               child: SizedBox(
                                                 height: 5.h,
                                                 width: double.infinity,
                                                 child: ElevatedButton(
                                                   style: ElevatedButton.styleFrom(
                                                       primary: const Color(0xFFEC4E52),
                                                       textStyle: TextStyle(
                                                           fontSize: 15,
                                                           fontWeight: FontWeight.bold)),
                                                   onPressed: () {},
                                                   child: Text('Cancel Plan'),
                                                 ),
                                               ),
                                             ),
                                             SizedBox(
                                               height: 3.h,
                                             )
                                           ],
                                         )
                                       ],
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
                   )),

               // child: ExpansionTile(
               //   title: Padding(
               //     padding: EdgeInsets.fromLTRB(2.h, 2.h, 0.h, 2.h),
               //     child: Column(
               //       mainAxisAlignment: MainAxisAlignment.start,
               //       crossAxisAlignment: CrossAxisAlignment.start,
               //       children: [
               //         Text(
               //           "2115-BROWN-GENTS",
               //           style: GoogleFonts.radioCanada(
               //               fontSize: 17,
               //               fontWeight: FontWeight.bold,
               //               color: Colors.blue[200]),
               //         ),
               //         NormalText(text: "Orderd no: 558755 8555 455"),
               //         NormalText(text: "Date: 17-11-22"),
               //       ],
               //     ),
               //   ),
               //   children: [
               //     Column(
               //       children: [
               //         Container(
               //             margin: EdgeInsets.fromLTRB(0.h, 0.h, 0.h, 0.h),
               //             color: Colors.white,
               //             child: Padding(
               //               padding: const EdgeInsets.all(20.0),
               //               child: Column(
               //                 crossAxisAlignment: CrossAxisAlignment.start,
               //                 children: [
               //                   // HeadingText(text: "2115-BROWN-GENTS"),
               //                   Row(
               //                     children: [
               //                       Expanded(
               //                         flex: 1,
               //                         child: Container(
               //                           child: Column(
               //                             crossAxisAlignment:
               //                                 CrossAxisAlignment.start,
               //                             children: [
               //                               NormalText(text: "Category: "),
               //                               SizedBox(
               //                                 height: 2.h,
               //                               ),
               //                               NormalText(text: "Color: "),
               //                               SizedBox(
               //                                 height: 2.h,
               //                               ),
               //                               NormalText(text: "Size: "),
               //                               SizedBox(
               //                                 height: 2.h,
               //                               ),
               //                               NormalText(text: "Pair: "),
               //                               SizedBox(
               //                                 height: 2.h,
               //                               ),
               //                               NormalText(text: "Box: "),
               //                             ],
               //                           ),
               //                         ),
               //                       ),
               //                       Expanded(
               //                         flex: 2,
               //                         child: Container(
               //                           child: Padding(
               //                             padding: EdgeInsets.fromLTRB(
               //                                 2.h, 3.h, 0.h, 0.h),
               //                             child: Column(
               //                               crossAxisAlignment:
               //                                   CrossAxisAlignment.start,
               //                               children: [
               //                                 NormalText(text: "Gents"),
               //                                 SizedBox(
               //                                   height: 2.h,
               //                                 ),
               //                                 NormalText(text: "Black"),
               //                                 SizedBox(
               //                                   height: 2.h,
               //                                 ),
               //                                 NormalText(text: "1*5"),
               //                                 SizedBox(
               //                                   height: 2.h,
               //                                 ),
               //                                 NormalText(text: "50"),
               //                                 SizedBox(
               //                                   height: 2.h,
               //                                 ),
               //                                 NormalText(text: "2"),
               //                               ],
               //                             ),
               //                           ),
               //                         ),
               //                       )
               //                     ],
               //                   ),
               //                 ],
               //               ),
               //             )),
               //         Container(
               //           color: Colors.white,
               //           margin: EdgeInsets.fromLTRB(0.h, 1.h, 0.h, 0.h),
               //           child: Container(
               //             color: Colors.white,
               //             margin: EdgeInsets.fromLTRB(0.h, 2.h, 2.h, 0.h),
               //             child: Column(children: [
               //               Column(
               //                 crossAxisAlignment: CrossAxisAlignment.start,
               //                 children: [
               //                   Padding(
               //                     padding:
               //                         EdgeInsets.fromLTRB(2.h, 0.h, 0.h, 0.h),
               //                     child: SubHeadingText(text: "Size Details"),
               //                   ),
               //                   Row(
               //                     children: [
               //                       CustomBox(
               //                           controller: size1controller,
               //                           label: "Size-1"),
               //                       CustomBox(
               //                           controller: size2controller,
               //                           label: "Size-2"),
               //                       CustomBox(
               //                           controller: size3controller,
               //                           label: "Size-3")
               //                     ],
               //                   ),
               //                 ],
               //               ),
               //               Row(
               //                 children: [
               //                   CustomBox(
               //                       controller: size4controller,
               //                       label: "Size-4"),
               //                   CustomBox(
               //                       controller: size5controller,
               //                       label: "Size-5"),
               //                   CustomBox(
               //                       controller: size6controller,
               //                       label: "Size-6")
               //                 ],
               //               ),
               //               Row(
               //                 children: [
               //                   CustomBox(
               //                       controller: size7controller,
               //                       label: "Size-7"),
               //                   CustomBox(
               //                       controller: size8controller,
               //                       label: "Size-8"),
               //                   CustomBox(
               //                       controller: size9controller,
               //                       label: "Size-9")
               //                 ],
               //               ),
               //               Row(
               //                 children: [
               //                   CustomBox(
               //                       controller: size10controller,
               //                       label: "Size-10"),
               //                   CustomBox(
               //                       controller: size11controller,
               //                       label: "Size-11"),
               //                   CustomBox(
               //                       controller: size12controller,
               //                       label: "Size-12")
               //                 ],
               //               ),
               //               Row(
               //                 children: [
               //                   CustomBox(
               //                       controller: size13controller,
               //                       label: "Size-13"),
               //                   Expanded(
               //                     flex: 1,
               //                     child: Container(),
               //                   ),
               //                   Expanded(
               //                     flex: 1,
               //                     child: Container(),
               //                   ),
               //                 ],
               //               ),
               //               SizedBox(
               //                 height: 4.h,
               //               ),
               //             ]),
               //           ),
               //         )
               //       ],
               //     )
               //   ],
               // ),
             ],
           );
         }
         else{
           return Center(
             child: Column(
               children: [HeadingText(text: _controller.orderNoEntity.value.response.toString())],
             ),
           );
         }
      }
    }
  }
}
