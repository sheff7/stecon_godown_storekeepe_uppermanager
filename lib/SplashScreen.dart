import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';

import 'CustomWidget/CustomSnackBar.dart';
import 'Godown/HomeGoDown.dart';
import 'LoginPage/View/LoginPage.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SvgPicture.asset(
          'Assets/STECON LOGO SPLASH MOB1.svg',
          height: 7.h,
          width: 0,
        ),
      ),
    );
  }

  @override
  void initState() {
    CheckPrefUser();
    super.initState();
  }

  CheckPrefUser() async {
    await Future.delayed(Duration(seconds: 2), ()
    async {
      print("inside splash");
      SharedPreferences _prefs = await SharedPreferences.getInstance();
      var username = _prefs.getString('username');
      var password = _prefs.getString('password');
      var type = _prefs.getString('user_type');
      var status = _prefs.getString('user_status');
      var uid = _prefs.getString('user_id');
      var id = _prefs.getString('id');
      // var distributeid = _prefs.getString('distributorid');
      // var distrubutename = _prefs.getString('distributorname');


      // var usernameR = _prefs.getString('usernameR');
      // var passwordR = _prefs.getString('passwordR');
      // var typeR = _prefs.getString('user_typeR');
      // var statusR = _prefs.getString('user_statusR');
      // var uidR = _prefs.getString('user_idR');
      // var idR = _prefs.getString('idR');
      //

      print(status);
      if (username != null && password != null) {
        if (type == 'Godown') {
          if (status == 'Active') {
            Get.to(HomeGodown(
            ));
          }
          else if (type == 'Godown') {} else if (status == 'Inactive') {
            return CustomSnackbar()
                .InfoSnackBar('Warning', 'Please Contact Office');
          }
        }
      }
      // else if (usernameR != null && passwordR != null) {
      //   if (typeR == 'Representative') {
      //     if (statusR == 'Active') {
      //       Get.to(RepresentativeHome(uidR: uidR.toString(),
      //       ));
      //     }
      //     else
      //     if (typeR == 'Representative') {} else if (statusR == 'Inactive') {
      //       return CustomSnackbar()
      //           .InfoSnackBar('Warning', 'Please Contact Office');
      //     }
      //   }
      // }
      else {
        Get.to(LoginScreen());
      }
    }


  );
}}
