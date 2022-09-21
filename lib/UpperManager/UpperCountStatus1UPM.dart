import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../CustomFont/Header.dart';
import '../CustomFont/Heading.dart';
import '../CustomFont/NormalText.dart';
import 'UpperCountStatus2UPM.dart';


class UpperCountStatus1UPM extends StatelessWidget {
  const UpperCountStatus1UPM({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Header(
          text: 'Upper Count Status',
        ),
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
          Container(
            color: Colors.white,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 2.h, vertical: 3.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Return no : ' + '85960 68796',
                        style: GoogleFonts.radioCanada(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFFEC4E52),
                        ),
                      ),
                      NormalText(text: '17-11-2022')
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      NormalText(text: "Order no : " + '657574 6574'),
                    ],
                  ),
                  SizedBox(height: 1.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      NormalText(text: "Plan no :  " + "546757 7565"),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Divider(
            thickness: 1.5.h,
            color: Colors.grey[200],
          ),
          Container(
            color: Colors.white,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 0.h, vertical: 3.h),
              child: ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext Context, int index) {
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 2.h),
                      color: Colors.white,
                      child: ExpansionTile(
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            HeadingText(
                              text: 'Plan-1',
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            NormalText(text: '2115-BROWN-GENTS')
                          ],
                        ),
                        children: [
                          ListView.separated(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (BuildContext Context, int index) {
                                return InkWell(
                                  onTap: (){
                                    Get.to(
                                        UpperCountStatus2UPM()
                                    );
                                  },
                                  child: Container(
                                    margin: EdgeInsets.symmetric(horizontal: 2.h, vertical: 3.h),
                                    child: Text(
                                      '2115-BROWN-GENTS',
                                      style: GoogleFonts.radioCanada(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                );
                              },
                              separatorBuilder: (Context, index) {
                                return Container();
                              },
                              itemCount: 4)
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(height: .5, color: Colors.grey);
                  },
                  itemCount: 10),
            ),
          )
        ],
      ),
    );
  }
}
