import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../CustomFont/Header.dart';
import '../CustomFont/NormalText.dart';
import '../CustomFont/Status.dart';


class ViewOrdersGD extends StatelessWidget {
  const ViewOrdersGD({Key? key}) : super(key: key);

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
                                            Status(text: 'Completed')
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
                                              NormalText(text: '17-11-2022')
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
