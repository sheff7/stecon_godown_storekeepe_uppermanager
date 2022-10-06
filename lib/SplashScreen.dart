import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';
import 'package:stecon_godown_storekeepe_uppermanager/StoreKeeper/HomeSK/view/HomePageSk.dart';

import 'CustomWidget/CustomSnackBar.dart';
import 'Godown/HomeGoDown.dart';
import 'LoginPage/View/LoginPage.dart';
import 'UpperManager/UpperMangerHomeFn/View/HomeUpperManager.dart';


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


      var usernameUM = _prefs.getString('usernameUM');
      var passwordUM = _prefs.getString('passwordUM');
      var typeUM = _prefs.getString('user_typeUM');
      var statusUM = _prefs.getString('user_statusUM');
      var uidUM = _prefs.getString('user_idUM');
      var idUM = _prefs.getString('idUM');



      var usernameSK = _prefs.getString('usernameSK');
      var passwordSK = _prefs.getString('passwordSK');
      var typeSK = _prefs.getString('user_typeSK');
      var statusSK = _prefs.getString('user_statusSK');
      var uidSK = _prefs.getString('user_idSK');
      var idSK = _prefs.getString('idSK');
      var emailSK = _prefs.getString('user_emailSK');


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
      else if (usernameUM != null && passwordUM != null) {
        if (typeUM == 'Upper Manager') {
          if (statusUM == 'Active') {
            print(uid);
            Get.to(HomeUpperManager(
              uid: uidUM.toString(),
            ));
          }
          else
          if (typeUM == 'Upper Manger') {} else if (statusUM == 'Inactive') {
            return CustomSnackbar()
                .InfoSnackBar('Warning', 'Please Contact Office');
          }
        }
      }
      else if (usernameSK != null && passwordSK != null) {
        if (typeSK == 'Store Keeper') {
          if (statusSK == 'Active') {
            Get.to(HomePageSk(uidSK: uidSK.toString(),
            )
            );
          }
          else if (typeSK == 'Store Keeper') {} else if (statusSK == 'Inactive') {
            return CustomSnackbar()
                .InfoSnackBar('Warning', 'Please Contact Office');
          }
        }
      }
      else {
        Get.to(LoginScreen());
      }
    }


  );
}}
