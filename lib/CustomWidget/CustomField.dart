import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class CustomField extends StatelessWidget {
  final TextEditingController controller;
  final String label;

  const CustomField({Key? key, required this.controller, required this.label,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.fromLTRB(0.h, 0.h, 0.h, 0.h),
      child: TextFormField(
        // readOnly: true,
        controller: controller,
        style: GoogleFonts.roboto(),
        decoration: InputDecoration(
          hintText: 'Enter here..!',
            hintStyle:  GoogleFonts.roboto(),
            labelText: label,
            contentPadding:
            EdgeInsets.symmetric(vertical: 2.4.h, horizontal: 1.8.h),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(
                    width: 1, style: BorderStyle.none, color: Colors.red)),
             filled: true,
            fillColor: Colors.white,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[400]!)
            )
        ),
      ),
    );
  }
}
