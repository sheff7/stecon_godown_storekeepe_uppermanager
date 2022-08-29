import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NormalTextGreen extends StatelessWidget {
  final String text;

  const NormalTextGreen({Key? key, required this.text,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.radioCanada(
          fontSize:15,
          color:const Color(0xFF4FE138)),
    );
  }
}
