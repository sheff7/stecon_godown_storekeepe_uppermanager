import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BoldText extends StatelessWidget {
  final String text;

  const BoldText({Key? key, required this.text,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.visible,
      style: GoogleFonts.radioCanada(
          fontSize:15,
          fontWeight: FontWeight.w500,
          color: Colors.black),
    );
  }
}