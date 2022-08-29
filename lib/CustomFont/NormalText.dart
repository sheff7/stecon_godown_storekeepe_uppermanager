import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NormalText extends StatelessWidget {
  final String text;

  const NormalText({Key? key, required this.text,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.radioCanada(
          fontSize:15,
          color:const Color(0xFF787878)),
    );
  }
}
