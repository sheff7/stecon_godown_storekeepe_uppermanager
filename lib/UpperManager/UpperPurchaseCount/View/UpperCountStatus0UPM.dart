import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../CustomFont/Header.dart';
import '../../../CustomFont/Heading.dart';
import '../../../CustomFont/NormalText.dart';
import '../../AddUpperCountStatus0UPM.dart';
import 'UpperCountStatus1UPM.dart';
import '../Controller/UpperCountStatus0UPMController.dart';


class UpperCountStatus0UPM extends StatelessWidget {
  final String upmId;
   UpperCountStatus0UPM({Key? key, required this.upmId}) : super(key: key);
  late final _controller=Get.put(UpperCountStatus0UPMController(upmId: upmId));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            // Navigator.of(context).pop();
          },
        ),
        actions: [
          // IconButton(onPressed: (){
          //   Get.to(AddUpperCountStatus0UPM());
          // }, icon: Icon(Icons.add))
        ],
      ),
      body:Obx(()=>
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
    else if(_controller.loadingBool==false){
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
                            InkWell(
                              onTap: (){
                                Get.to(UpperCountStatus1UPM(upmId: upmId,
                                  id: _controller.orderNoEntity.value.purchaseplanlist![index].id.toString(),
                                  orderno: _controller.orderNoEntity.value.purchaseplanlist![index].orderno.toString(),

                                ));
                              },
                              child: Material(
                                borderRadius: BorderRadius.circular(0),
                                elevation: 0,
                                // shadowColor: Colors.grey,
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(2.h, 0.h, 2.h, 2.h),
                                  child: ListTile(
                                    title: Padding(
                                      padding: EdgeInsets.only(top: 2.h),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Compnay Name: ' + _controller.orderNoEntity.value.purchaseplanlist![index].companyname.toString(),
                                                style: GoogleFonts.radioCanada(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  color: const Color(0xFFEC4E52),),
                                              ),
                                              NormalText(text: _controller.orderNoEntity.value.purchaseplanlist![index].orderdate.toString())
                                            ],
                                          ),
                                          SizedBox(
                                            height: 2.h,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              NormalText(
                                                  text:
                                                  "Order no : " + _controller.orderNoEntity.value.purchaseplanlist![index].orderno.toString()),
                                            ],
                                          ),
                                          SizedBox(height: 1.h),
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              NormalText(text: "Plan no :  " +  _controller.orderNoEntity.value.purchaseplanlist![index].companyplanno.toString()),


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
