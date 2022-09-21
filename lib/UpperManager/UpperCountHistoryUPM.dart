import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import '../CustomFont/Header.dart';
import '../CustomFont/NormalText.dart';
import 'AddUpperCountStatus0UPM.dart';
import 'UpperCountHistory1UPM.dart';
import 'UpperCountStatus1UPM.dart';


class UpperCountHistory0UPM extends StatelessWidget {
  const UpperCountHistory0UPM({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7FBFC),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Header(
          text: 'Upper Count History',
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

      ),
      body: ListView(
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
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        InkWell(
                          onTap: (){
                            Get.to(UpperCountHistory1UPM());
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
                                            'Return no : ' + '85960 68796',
                                            style: GoogleFonts.radioCanada(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: const Color(0xFFEC4E52),),
                                          ),
                                          NormalText(text: '17-11-2022')
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
                                              "Order no : " + '657574 6574'),
                                        ],
                                      ),
                                      SizedBox(height: 1.h),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          NormalText(text: "Plan no :  " + "546757 7565"),


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
      ),
    );
  }
}
