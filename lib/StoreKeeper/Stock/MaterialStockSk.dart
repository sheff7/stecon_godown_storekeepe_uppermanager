import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../CustomFont/BoldText.dart';
import '../../CustomFont/Header.dart';
import '../../CustomFont/NormalText.dart';
import '../../CustomFont/NormalTextGreen.dart';

class MaterialStockSk extends StatelessWidget {
  const MaterialStockSk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7FBFC),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Header(
          text: 'Material Stock',
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 2.h,
          ),
          ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(
                      horizontal: 2.h, vertical: 2.h),
                  child: ExpansionTile(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        NormalText(text: 'Item name :'),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          "Chemical",
                          style: GoogleFonts.radioCanada(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue[200]),
                        ),
                        SizedBox(height: 1.h,),

                      ],
                    ),
                    expandedAlignment: Alignment.centerLeft,
                    children: [
                      Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 2.h, vertical: 2.h),
                          child: Column(
                            children: [

                              Row(

                                children: [
                                  NormalText(text: "Usage Count  :  "),

                                  BoldText(text: 'Gents'),

                                ],
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              Row(
                                children: [
                                  NormalText(text: "Brand name :  "),
                                  BoldText(text: 'CodsAir'),
                                ],
                              ),
                              SizedBox(
                                height: 2.h,
                              ),

                              Row(
                                children: [
                                  NormalText(text: "Quantity :  "),
                                  BoldText(text: '500'),
                                ],
                              ),

                              SizedBox(height: 2.h,),
                              Row(
                                children: [
                                  NormalText(text: "Type :  "),
                                  BoldText(text: 'Lorem Ipsorm'),
                                ],
                              ),
                              SizedBox(height: 2.h,),
                              Row(
                                children: [
                                  NormalText(text: "Total  "),
                                  BoldText(text: '500'),
                                ],
                              ),
                              SizedBox(height: 2.h,),
                            ],
                          )),
                    ]
                    ,
                  )
                  ,
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 2.h,
                );
              },
              itemCount: 10)

        ],
      ),
    );
  }
}
