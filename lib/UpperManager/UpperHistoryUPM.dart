import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperPurchaseOrder1UPM.dart';

import '../CustomFont/Header.dart';
import '../CustomFont/Heading.dart';
import '../CustomFont/NormalText.dart';
import 'UpperHistory1UPM.dart';

class UpperHistoryUPM extends StatelessWidget {
  const UpperHistoryUPM({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        Material(
                          borderRadius: BorderRadius.circular(0),
                          elevation: 0,
                          // shadowColor: Colors.grey,
                          child: Container(
                            child: ListTile(
                              title: InkWell(
                                onTap: () {
                                  Get.to(UpperHistory1UPM());
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
                                              text: 'Codsair Technologies'),
                                          NormalText(text: '17-11-2022')
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
                                          NormalText(text: "546757 7565")
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
                                          NormalText(text: "546757 7565")
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
      ),
    );
  }
}
