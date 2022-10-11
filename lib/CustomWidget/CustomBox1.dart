import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class CustomBox1 extends StatelessWidget {
  final TextEditingController controller;
  final String label;

  final bool Enabled;
  const CustomBox1({Key? key, required this.controller, required this.label, required this.Enabled}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: ColorConstants.loginBackColor,
      margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
      child: TextFormField(
        enabled: Enabled,
        textAlign: TextAlign.center,
        controller: controller,
        keyboardType: TextInputType.number,
        validator: (value) {
          if (value!.isEmpty) {
            // return "size";
          }
        },
        decoration: InputDecoration(
            isDense: true,
            labelText: label,
            floatingLabelStyle: GoogleFonts.radioCanada(
              fontSize:19,
              color: const Color(0xFFEC4E52),),
            hintStyle: GoogleFonts.radioCanada(
                fontSize:14,
                color:const Color(0xFF787878)),
            labelStyle: GoogleFonts.radioCanada(
                fontSize:15,
                color:const Color(0xFF787878)),
            hintText: 'Enter here!',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                    width: 0, style: BorderStyle.none, color: Colors.black87)),
            filled: true,
            fillColor: Colors.white),
      ),
    );
  }
}
