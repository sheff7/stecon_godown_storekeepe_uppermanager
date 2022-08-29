import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Status extends StatelessWidget {
  final String text;

  const Status({Key? key, required this.text,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.radioCanada(
          fontSize:15,
          color:const Color(0xFF5FEB1D)),
    );
  }
}
