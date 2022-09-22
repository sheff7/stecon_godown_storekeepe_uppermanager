import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class CustomBoxEditable extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  const CustomBoxEditable({Key? key, required this.controller, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        // color: ColorConstants.loginBackColor,
        margin: EdgeInsets.fromLTRB(2.h, 3.h, 0.h, 0.h),
        child: TextFormField(
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
                  color:const Color(0xFF787878)),
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
      ),
    );
  }
}
