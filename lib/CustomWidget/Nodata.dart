import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../CustomFont/Heading.dart';

class Nodata extends StatelessWidget {
  // final String functionCall;
  final String response;

  const Nodata({
    Key? key,
    // required this.functionCall,
    required this.response,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              child: Center(
                  child: Column(
            children: [
              SvgPicture.asset(
                "Assets/noDataStecon.svg",
                height: 22.h, //asset location//svg color
              ),
              HeadingText(text: response),
            ],
          ))),
        ]);
  }
}
