import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../CustomFont/NormalText.dart';
import '../CustomFont/SubHeading.dart';

class ProfileUPM extends StatelessWidget {
  const ProfileUPM({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
        ),
        elevation: 0,
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.red,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    Image(
                        image: AssetImage(
                          "Assets/HomePageIcons/Group 51.png",
                        )),
                    SizedBox(height: 2.5.h),
                    Text(
                      'Yadu Krishnan',
                      style: GoogleFonts.radioCanada(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    SizedBox(height: 0.5.h),
                    Text(
                      'ID : 5263647 74657',
                      style: GoogleFonts.radioCanada(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 5.h),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20))),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    NormalText(text: 'Name'),
                    SizedBox(
                      height: 0.7.h,
                    ),
                    SubHeadingText(text: 'Yadu Krishnan'),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),

                    /////////////////////////////////////////////////
                    NormalText(text: 'Designation'),
                    SizedBox(
                      height: 0.7.h,
                    ),
                    SubHeadingText(
                        text:
                        'Lorem Ipsum'),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),

                    /////////////////////////////////////////////////
                    NormalText(text: 'Address'),
                    SizedBox(
                      height: 0.7.h,
                    ),
                    SubHeadingText(
                        text:
                        '2660 Fritts Crossing SE, Albuquerque,NM 87105, United States'),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    /////////////////////////////////////////////////
                    NormalText(text: 'Contact No'),
                    SizedBox(
                      height: 0.7.h,
                    ),
                    SubHeadingText(text: '+91 98676 75643'),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    /////////////////////////////////////////////////
                    NormalText(text: 'Email'),
                    SizedBox(
                      height: 0.7.h,
                    ),
                    SubHeadingText(text: 'info@codsairtechnologies.com'),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    /////////////////////////////////////////////////
                    NormalText(text: 'City'),
                    SizedBox(
                      height: 0.7.h,
                    ),
                    SubHeadingText(text: 'Kozhikode'),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    /////////////////////////////////////////////////
                    NormalText(text: 'State'),
                    SizedBox(
                      height: 0.7.h,
                    ),
                    SubHeadingText(text: 'Kerala'),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    /////////////////////////////////////////////////
                    NormalText(text: 'Country'),
                    SizedBox(
                      height: 0.7.h,
                    ),
                    SubHeadingText(text: 'India'),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    /////////////////////////////////////////////////
                    NormalText(text: 'Username'),
                    SizedBox(
                      height: 0.7.h,
                    ),
                    SubHeadingText(text: 'Yadu Krishnan'),
                    Divider(
                      thickness: 1,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
