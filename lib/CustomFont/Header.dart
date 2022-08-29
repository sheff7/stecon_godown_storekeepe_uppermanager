import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  final String text;


  const Header({Key? key, required this.text,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.radioCanada(
          fontWeight: FontWeight.bold,
          fontSize:18,
          color:Colors.black87),
    );
  }
}
