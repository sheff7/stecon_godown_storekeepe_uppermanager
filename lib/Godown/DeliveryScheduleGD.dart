import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:stecon_godown_storekeepe_uppermanager/CustomFont/BoldText.dart';

import '../CustomFont/Header.dart';
import '../CustomFont/NormalText.dart';
import '../CustomFont/Status.dart';

class DeliveryScheduleGD extends StatelessWidget {
  const DeliveryScheduleGD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF7FBFC),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 0,
          title: Header(
            text: 'Delivery Schedule',
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
        body: ListView(
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
                      itemCount: 10,
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
                                                text: "Prouction Plan :"),
                                            NormalText(text: '17-11-2022')
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
                                                "7854 65498 565",
                                                style: GoogleFonts.radioCanada(
                                                  fontSize: 17,
                                                  color:
                                                      const Color(0xFFEC4E52),
                                                ),
                                              ),

                                            ],
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                              flex: 1,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  NormalText(text: 'Order No : ',),
                                                    SizedBox(height: 2.h,),
                                                    NormalText(text: 'Area Code : ',),
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              flex: 2,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  BoldText(text: '7586969 8676',),
                                                  SizedBox(height: 2.h,),
                                                  BoldText(text: '505',),
                                                ],
                                              ),
                                            )

                                          ],
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
        ));
  }
}
