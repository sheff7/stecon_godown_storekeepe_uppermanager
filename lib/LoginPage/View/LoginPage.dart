import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:sizer/sizer.dart';

import '../../CustomWidget/CustomSnackBar.dart';
import '../Controller/LoginPageController.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key,}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obsecurepassword = true;
  DateTime? currentBackPressTime;
  LoginController? _loginController;

  @override
  void initState() {
    _loginController=Get.put(LoginController( ));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (){
        DateTime now = DateTime.now();
        if (currentBackPressTime == null ||
            now.difference(currentBackPressTime!) > Duration(seconds: 2)) {
          currentBackPressTime = now;
          CustomSnackbar().InfoSnackBar("Exit", 'Press Back Again To Exit');
          return Future.value(false);
        }
        SystemNavigator.pop();
        return Future.value(true);
      },
      child: Scaffold(
        backgroundColor: const Color(0xFFF7FBFC),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              width: double.infinity,
              height: 40.5.h,
              child: SvgPicture.asset('Assets/stecon 1-01.svg'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 0.7.h, horizontal: 5.h),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Welcome'
                      '\nBack..!',
                  style: TextStyle(
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.black87),
                ),
              ),
            ),
            // CustomTextFormFiled(controller: _usernameController, hint: 'username', textInputAction: TextInputAction.done),
            Container(
              margin: EdgeInsets.fromLTRB(5.h, 5.h, 5.h, 1.h),
              child: TextFormField(
                controller: _usernameController,
                textInputAction: TextInputAction.next,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter Username";
                  }
                },
                decoration: InputDecoration(
                    hintText: 'Username',
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 2.h, horizontal: 1.8.h),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                        const BorderSide(width: 0, style: BorderStyle.none)),
                    prefixIcon: Icon(Icons.person, color: Colors.grey),

                    filled: true,
                    fillColor: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(5.h, 3.h, 5.h, 1.h),
              child: TextFormField(
                controller: _passwordController,
                textInputAction: TextInputAction.next,
                obscureText: _obsecurepassword,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter Password";
                  }
                },
                decoration: InputDecoration(
                    hintText: 'Password',
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 2.h, horizontal: 1.8.h),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                        const BorderSide(width: 0, style: BorderStyle.none)),
                    prefixIcon: Icon(Icons.lock, color: Colors.grey),
                    suffixIcon: IconButton(
                      color: Colors.grey,
                      icon: Icon(_obsecurepassword
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _obsecurepassword = !_obsecurepassword;
                        });
                      },
                    ),
                    filled: true,
                    fillColor: Colors.white),
              ),
            ),
            SizedBox(height: 4.h,),
            Center(
              child: Container(
                  margin: EdgeInsets.fromLTRB(5.h, 3.h, 5.h, 1.h),
                  height: 6.h,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () async {
                      if(_usernameController.text.isEmpty){
                        CustomSnackbar().InfoSnackBar('Login', 'Enter Valid Username ');

                      }
                      else if(_passwordController.text.isEmpty){
                        CustomSnackbar().InfoSnackBar('Login', 'Enter Valid Password ');
                      }
                      else{
                        _loginController!.login(_usernameController.text,_passwordController.text);

                      }


                    },
                    child: Text("Log In",style: TextStyle(color: Colors.white, fontSize: 14.sp),),
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFEC4E52),
                        textStyle: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.bold)),
                  )),
            ),
            SizedBox(height: 2.h,),
            Center(
              // child: Text('Forgot Password',style: TextStyle(color: Color(0xFFEC4E52), fontSize: 16.sp,fontWeight:FontWeight.bold,),),
            )
          ]),
        ),
        // child: formKey,
      ),
    );
  }
}