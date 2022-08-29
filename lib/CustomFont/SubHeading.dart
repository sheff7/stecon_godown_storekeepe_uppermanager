import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubHeadingText extends StatelessWidget {
  final String text;


  const SubHeadingText({Key? key, required this.text,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.radioCanada(
          fontSize:17,
          color:Colors.black87),
    );
  }
}
