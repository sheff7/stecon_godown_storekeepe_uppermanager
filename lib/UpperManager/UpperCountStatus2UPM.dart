import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../CustomFont/BoldText.dart';
import '../CustomFont/Header.dart';
import '../CustomFont/Heading.dart';
import '../CustomFont/NormalText.dart';

class UpperCountStatus2UPM extends StatelessWidget {
  const UpperCountStatus2UPM({Key? key}) : super(key: key);

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
              margin: EdgeInsets.symmetric(horizontal: 3.h, vertical: 3.h),
              child: Column(
                children: [
                  Row(
                    children: [
                      HeadingText(text: '2115-BROWN-GENTS'),
                    ],
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      NormalText(text: "Category : " + 'Gents'),
                    ],
                  ),
                  SizedBox(height: 2.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      NormalText(text: "Color :  " + "Black"),
                    ],
                  ),
                  SizedBox(height: 2.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      NormalText(text: "Size :  " + "1x5"),
                    ],
                  ),
                  SizedBox(height: 2.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      NormalText(text: "Date of Counting :  " + "17-11-2022"),
                    ],
                  ),
                  SizedBox(height: 2.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      NormalText(text: "Comments : "),
                    ],
                  ),
                  SizedBox(height: 1.h),
                  Text(
                    'Quisque hendrerit mi sed arcu varius, in lacinia ex scelerisque. Cras quis blandit dui. ',
                    style: GoogleFonts.radioCanada(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.grey[200],
            padding: EdgeInsets.symmetric(vertical: 2.h),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Text(
                        'Size',
                        style: GoogleFonts.radioCanada(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Text(
                        'OC',
                        style: GoogleFonts.radioCanada(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Text(
                        'RC',
                        style: GoogleFonts.radioCanada(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Text(
                        'DC',
                        style: GoogleFonts.radioCanada(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Colors.white,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 2.h),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 2.h),
                            child: BoldText(text: '1')),
                        Divider(
                          height: 5,
                          color: Colors.grey[400],
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 2.h),
                            child: BoldText(text: '2')),
                        Divider(
                          height: 5,
                          color: Colors.grey[400],
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 2.h),
                            child: BoldText(text: '3')),
                        Divider(
                          height: 5,
                          color: Colors.grey[400],
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 2.h),
                            child: BoldText(text: '4')),
                        Divider(
                          height: 5,
                          color: Colors.grey[400],
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 2.h),
                            child: BoldText(text: '5')),
                        Divider(
                          height: 5,
                          color: Colors.grey[400],
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 2.h),
                            child: BoldText(text: '6')),
                        Divider(
                          height: 5,
                          color: Colors.grey[400],
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 2.h),
                            child: BoldText(text: '7')),
                        Divider(
                          height: 5,
                          color: Colors.grey[400],
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 2.h),
                            child: BoldText(text: '8')),
                        Divider(
                          height: 5,
                          color: Colors.grey[400],
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 2.h),
                            child: BoldText(text: '9')),
                        Divider(
                          height: 5,
                          color: Colors.grey[400],
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 2.h),
                            child: BoldText(text: '10')),
                        Divider(
                          height: 5,
                          color: Colors.grey[400],
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 2.h),
                            child: BoldText(text: '11')),
                        Divider(
                          height: 5,
                          color: Colors.grey[400],
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 2.h),
                            child: BoldText(text: '12')),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 2.h),
                            child: BoldText(text: '1')),
                        Divider(
                          height: 5,
                          color: Colors.grey[400],
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 2.h),
                            child: BoldText(text: '2')),
                        Divider(
                          height: 5,
                          color: Colors.grey[400],
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 2.h),
                            child: BoldText(text: '3')),
                        Divider(
                          height: 5,
                          color: Colors.grey[400],
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 2.h),
                            child: BoldText(text: '4')),
                        Divider(
                          height: 5,
                          color: Colors.grey[400],
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 2.h),
                            child: BoldText(text: '5')),
                        Divider(
                          height: 5,
                          color: Colors.grey[400],
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 2.h),
                            child: BoldText(text: '6')),
                        Divider(
                          height: 5,
                          color: Colors.grey[400],
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 2.h),
                            child: BoldText(text: '7')),
                        Divider(
                          height: 5,
                          color: Colors.grey[400],
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 2.h),
                            child: BoldText(text: '8')),
                        Divider(
                          height: 5,
                          color: Colors.grey[400],
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 2.h),
                            child: BoldText(text: '9')),
                        Divider(
                          height: 5,
                          color: Colors.grey[400],
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 2.h),
                            child: BoldText(text: '10')),
                        Divider(
                          height: 5,
                          color: Colors.grey[400],
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 2.h),
                            child: BoldText(text: '11')),
                        Divider(
                          height: 5,
                          color: Colors.grey[400],
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 2.h),
                            child: BoldText(text: '12')),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 2.h),
                            child: BoldText(text: '1')),
                        Divider(
                          height: 5,
                          color: Colors.grey[400],
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 2.h),
                            child: BoldText(text: '2')),
                        Divider(
                          height: 5,
                          color: Colors.grey[400],
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 2.h),
                            child: BoldText(text: '3')),
                        Divider(
                          height: 5,
                          color: Colors.grey[400],
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 2.h),
                            child: BoldText(text: '4')),
                        Divider(
                          height: 5,
                          color: Colors.grey[400],
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 2.h),
                            child: BoldText(text: '5')),
                        Divider(
                          height: 5,
                          color: Colors.grey[400],
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 2.h),
                            child: BoldText(text: '6')),
                        Divider(
                          height: 5,
                          color: Colors.grey[400],
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 2.h),
                            child: BoldText(text: '7')),
                        Divider(
                          height: 5,
                          color: Colors.grey[400],
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 2.h),
                            child: BoldText(text: '8')),
                        Divider(
                          height: 5,
                          color: Colors.grey[400],
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 2.h),
                            child: BoldText(text: '9')),
                        Divider(
                          height: 5,
                          color: Colors.grey[400],
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 2.h),
                            child: BoldText(text: '10')),
                        Divider(
                          height: 5,
                          color: Colors.grey[400],
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 2.h),
                            child: BoldText(text: '11')),
                        Divider(
                          height: 5,
                          color: Colors.grey[400],
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 2.h),
                            child: BoldText(text: '12')),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 2.h),
                            child: BoldText(text: '1')),
                        Divider(
                          height: 5,
                          color: Colors.grey[400],
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 2.h),
                            child: BoldText(text: '2')),
                        Divider(
                          height: 5,
                          color: Colors.grey[400],
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 2.h),
                            child: BoldText(text: '3')),
                        Divider(
                          height: 5,
                          color: Colors.grey[400],
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 2.h),
                            child: BoldText(text: '4')),
                        Divider(
                          height: 5,
                          color: Colors.grey[400],
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 2.h),
                            child: BoldText(text: '5')),
                        Divider(
                          height: 5,
                          color: Colors.grey[400],
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 2.h),
                            child: BoldText(text: '6')),
                        Divider(
                          height: 5,
                          color: Colors.grey[400],
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 2.h),
                            child: BoldText(text: '7')),
                        Divider(
                          height: 5,
                          color: Colors.grey[400],
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 2.h),
                            child: BoldText(text: '8')),
                        Divider(
                          height: 5,
                          color: Colors.grey[400],
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 2.h),
                            child: BoldText(text: '9')),
                        Divider(
                          height: 5,
                          color: Colors.grey[400],
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 2.h),
                            child: BoldText(text: '10')),
                        Divider(
                          height: 5,
                          color: Colors.grey[400],
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 2.h),
                            child: BoldText(text: '11')),
                        Divider(
                          height: 5,
                          color: Colors.grey[400],
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 2.h),
                            child: BoldText(text: '12')),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 2.h,
          )
        ],
      ),
    );
  }
}
