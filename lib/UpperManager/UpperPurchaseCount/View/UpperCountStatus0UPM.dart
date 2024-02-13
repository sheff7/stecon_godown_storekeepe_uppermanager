import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../AppConstants/ClourConstants.dart';
import '../../../CustomFont/Header.dart';
import '../../../CustomFont/Heading.dart';
import '../../../CustomFont/NormalText.dart';
import '../../../CustomWidget/Nodata.dart';
import '../../../CustomWidget/RetryButton.dart';
import '../../AddUpperCountStatus0UPM.dart';
import 'UpperCountStatus1UPM.dart';
import '../Controller/UpperCountStatus0UPMController.dart';

class UpperCountStatus0UPM extends StatelessWidget {
  final String upmId;

  UpperCountStatus0UPM({Key? key, required this.upmId}) : super(key: key);
  late final _controller =
      Get.put(UpperCountStatus0UPMController(upmId: upmId));
  final searchController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.back();
        return true;
      },
      child: RefreshIndicator(
        color: ColorConstants.appThemeColorRed,
        onRefresh: () async {
          _controller.checkNetworkStatus();
          _controller.getUpperOrder();
        },
        child: Scaffold(
            backgroundColor: const Color(0xFFF7FBFC),
            appBar: AppBar(
              iconTheme: IconThemeData(color: Colors.black),
              backgroundColor: Colors.white,
              elevation: 0,
              title: Header(
                text: 'Upper Count Status',
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
                  // Navigator.of(context).pop();
                },
              ),
              actions: [
                // IconButton(onPressed: (){
                //   Get.to(AddUpperCountStatus0UPM());
                // }, icon: Icon(Icons.add))
              ],
            ),
            body: Column(
              children: [
                Container(
                  height: 6.h,
                  margin: EdgeInsets.fromLTRB(2.h, 0.5.h, 2.h, 0.5.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF8F8F8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Expanded(
                              flex: 3,
                              child: TextFormField(
                                  controller: searchController,
                                  onChanged: (value) {
                                    _controller.filterSearch(value);
                                  },
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 2.2.h, horizontal: 1.8.h),
                                      labelText: 'Search',
                                      labelStyle: GoogleFonts.poppins(),
                                      hintText: 'Enter Order Number',
                                      hintStyle: GoogleFonts.poppins(),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(0),
                                          borderSide: const BorderSide(
                                              width: 0, style: BorderStyle.none)),
                                      filled: true,
                                      fillColor: const Color(0xFFF8F8F8)))),
                          Expanded(
                              flex: 1,
                              child: InkWell(
                                  onTap: () {
                                    searchController.clear();
                                    _controller.searchBool.value =
                                    false;
                                  },
                                  child: Icon(
                                    Icons.clear,
                                    color: ColorConstants.appThemeColorRed,
                                  )))
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(child: Obx(() => _body())),
              ],
            )),
      ),
    );
  }

  _body() {
    if (_controller.networkStatus.value == true) {
      if (_controller.loadingBool.value == true) {
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
      } else if (_controller.loadingBool.value == false) {
       if(_controller.searchBool.value==false){
         if (_controller.orderNoEntity.value == null || _controller.orderNoEntity.value.response=='null') {
           return Center(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 Nodata(response: 'No Data'),
                 RetryButton(onTap: () {
                   _controller.checkNetworkStatus();
                   _controller.getUpperOrder();
                 })
               ],
             ),
           );
         } else if (_controller.orderNoEntity.value != null) {
           if (_controller.orderNoEntity.value.response == 'Success') {
             return ListView(
               children: [

                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Container(
                       color: Colors.white,
                       child: ListView.separated(
                         shrinkWrap: true,
                         physics: NeverScrollableScrollPhysics(),
                         itemCount: _controller
                             .orderNoEntity.value.purchaseplanlist!.length,
                         itemBuilder: (BuildContext context, int index) {
                           return Column(
                             children: [
                               InkWell(
                                 onTap: () {
                                   Get.to(UpperCountStatus1UPM(
                                     upmId: upmId,
                                     id: _controller.orderNoEntity.value
                                         .purchaseplanlist![index].id
                                         .toString(),
                                     orderno: _controller.orderNoEntity.value
                                         .purchaseplanlist![index].orderno
                                         .toString(),
                                   ));
                                 },
                                 child: Material(
                                   borderRadius: BorderRadius.circular(0),
                                   elevation: 0,
                                   // shadowColor: Colors.grey,
                                   child: Container(
                                     margin:
                                     EdgeInsets.fromLTRB(2.h, 0.h, 2.h, 2.h),
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
                                                 Flexible(
                                                   child: Container(
                                                     child: Text(
                                                       _controller
                                                           .orderNoEntity
                                                           .value
                                                           .purchaseplanlist![
                                                       index]
                                                           .companyname
                                                           .toString(),
                                                       style:
                                                       GoogleFonts.radioCanada(
                                                         fontSize: 16,
                                                         fontWeight: FontWeight.w500,
                                                         color:
                                                         const Color(0xFFEC4E52),
                                                       ),
                                                       overflow: TextOverflow.ellipsis,
                                                     ),
                                                   ),
                                                 ),
                                                 NormalText(
                                                     text: _controller
                                                         .orderNoEntity
                                                         .value
                                                         .purchaseplanlist![
                                                     index]
                                                         .orderdate
                                                         .toString())
                                               ],
                                             ),
                                             SizedBox(
                                               height: 2.h,
                                             ),
                                             Row(
                                               mainAxisAlignment:
                                               MainAxisAlignment
                                                   .spaceBetween,
                                               children: [
                                                 NormalText(
                                                     text: "Order no : " +
                                                         _controller
                                                             .orderNoEntity
                                                             .value
                                                             .purchaseplanlist![
                                                         index]
                                                             .orderno
                                                             .toString()),
                                               ],
                                             ),
                                             SizedBox(height: 1.h),
                                             Row(
                                               mainAxisAlignment:
                                               MainAxisAlignment
                                                   .spaceBetween,
                                               children: [
                                                 NormalText(
                                                     text: "Plan no :  " +
                                                         _controller
                                                             .orderNoEntity
                                                             .value
                                                             .purchaseplanlist![
                                                         index]
                                                             .companyplanno
                                                             .toString()),
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
                           return Padding(
                             padding: EdgeInsets.fromLTRB(2.h, 0.h, 2.h, 0.h),
                             child: Divider(height: .5, color: Colors.grey),
                           );
                         },
                       ),
                     ),
                     // SizedBox(height:2.h ,),
                   ],
                 )
               ],
             );
           } else {
             return Center(
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Nodata(response: _controller.orderNoEntity.value.response.toString()),
                   RetryButton(onTap: () {
                     _controller.checkNetworkStatus();
                     _controller.getUpperOrder();
                   })
                 ],
               ),
             );
           }
         }
       }
       else if(_controller.searchBool.value==true){
         if(_controller.filterList.value.length!=0){
           return                      Container(
             color: Colors.white,
             child: ListView.separated(
               shrinkWrap: true,
               physics: NeverScrollableScrollPhysics(),
               itemCount:  _controller
                   .filterList.value!.length,
               itemBuilder: (BuildContext context, int index) {
                 return Column(
                   children: [
                     InkWell(
                       onTap: () {
                         Get.to(UpperCountStatus1UPM(
                           upmId: upmId,
                           id:  _controller
                               .filterList.value![index].id
                               .toString(),
                           orderno:  _controller
                               .filterList.value![index].orderno
                               .toString(),
                         ));
                       },
                       child: Material(
                         borderRadius: BorderRadius.circular(0),
                         elevation: 0,
                         // shadowColor: Colors.grey,
                         child: Container(
                           margin:
                           EdgeInsets.fromLTRB(2.h, 0.h, 2.h, 2.h),
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
                                       Flexible(
                                         child: Container(
                                           child: Text(
                                             _controller
                                                 .filterList.value![
                                             index]
                                                 .companyname
                                                 .toString(),
                                             style:
                                             GoogleFonts.radioCanada(
                                               fontSize: 16,
                                               fontWeight: FontWeight.w500,
                                               color:
                                               const Color(0xFFEC4E52),
                                             ),
                                             overflow: TextOverflow.ellipsis,
                                           ),
                                         ),
                                       ),
                                       NormalText(
                                           text: _controller
                                               .filterList.value![
                                           index]
                                               .orderdate
                                               .toString())
                                     ],
                                   ),
                                   SizedBox(
                                     height: 2.h,
                                   ),
                                   Row(
                                     mainAxisAlignment:
                                     MainAxisAlignment
                                         .spaceBetween,
                                     children: [
                                       NormalText(
                                           text: "Order no : " +
                                               _controller
                                                   .filterList.value![
                                               index]
                                                   .orderno
                                                   .toString()),
                                     ],
                                   ),
                                   SizedBox(height: 1.h),
                                   Row(
                                     mainAxisAlignment:
                                     MainAxisAlignment
                                         .spaceBetween,
                                     children: [
                                       NormalText(
                                           text: "Plan no :  " +
                                               _controller
                                                   .filterList.value![
                                               index]
                                                   .companyplanno
                                                   .toString()),
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
                 return Padding(
                   padding: EdgeInsets.fromLTRB(2.h, 0.h, 2.h, 0.h),
                   child: Divider(height: .5, color: Colors.grey),
                 );
               },
             ),
           );
         }
         else if(_controller.filterList.value.length==0){
           return Center(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 Nodata(response: 'No Data'),
                 RetryButton(onTap: () {
                   _controller.checkNetworkStatus();
                   _controller.getUpperOrder();
                 })
               ],
             ),
           );
         }
       }
      }
    } else if (_controller.networkStatus.value == false) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Nodata(response: 'No Internet Connection'),
            RetryButton(onTap: () {
              print('ass');
              _controller.checkNetworkStatus();
              _controller.getUpperOrder();
            })
          ],
        ),
      );
    }
  }
}
