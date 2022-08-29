import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../CustomFont/BoldText.dart';
import '../CustomFont/Header.dart';
import '../CustomFont/NormalText.dart';
import '../CustomFont/NormalTextGreen.dart';
import 'AddDamageMaterialDetails.dart';

class DamageMaterialList extends StatelessWidget {
  const DamageMaterialList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7FBFC),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Header(
          text: 'Damaged Material',
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
        actions: [
          IconButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AddDamageMaterialDetails()),
            );
          }, icon: Icon(Icons.add))
        ],
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
                        NormalText(text: 'Damage no :'),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          "7768578 57685",
                          style: GoogleFonts.radioCanada(
                            fontSize: 17,
                            color: const Color(0xFFEC4E52),
                          ),
                        ),
                        SizedBox(height: 1.h,),
                        NormalText(text: 'Department : Production'),

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
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  NormalTextGreen(text: "confirmed")
                                ],
                              ),
                              Row(

                                children: [
                                  NormalText(text: "Replaced no.  :  "),

                                  BoldText(text: '7374848 575'),

                                ],
                              ),
                              SizedBox(height: 2.h,),

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
                                  NormalText(text: "Issue no.  :  "),

                                  BoldText(text: '7374848 575'),

                                ],
                              ),
                              SizedBox(height: 2.h,),

                              Row(
                                children: [
                                  NormalText(text: "Department :  "),
                                  BoldText(text: 'Production'),
                                ],
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              Row(
                                children: [
                                  NormalText(text: "Item name :  "),
                                  BoldText(text: 'Box'),
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
                                  NormalText(text: "Issue Date :  "),
                                  BoldText(text: '17-11-2022'),
                                ],
                              ),
                              SizedBox(height: 2.h,),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      NormalText(text: "Comments :  "),
                                    ],
                                  ),
                                  BoldText(text: 'Quisque hendrerit mi sed arcu varius, in lacinia ex scelerisque. Cras quis blandit dui. '),
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
