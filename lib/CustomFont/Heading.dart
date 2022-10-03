import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stecon_godown_storekeepe_uppermanager/AppConstants/ClourConstants.dart';

class HeadingText extends StatelessWidget {
  final String text;


  const HeadingText({Key? key, required this.text,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.radioCanada(
          fontSize:17,
          color:ColorConstants.appThemeColorRed ),
    );
  }
}
