import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class RetryButton extends StatelessWidget {
  final Function() onTap;
  const RetryButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10.h, 3.h, 10.h, 1.h),
        height: 4.h,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: onTap,
          child: Text(
            "Retry",
            style: TextStyle(
                color: Colors.white, fontSize: 14),
          ),
          style: ElevatedButton.styleFrom(
              primary: const Color(0xFFEC4E52),
              textStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold)),
        ));
  }
}
