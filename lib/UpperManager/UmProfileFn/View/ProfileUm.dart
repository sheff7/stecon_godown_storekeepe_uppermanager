import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../CustomFont/Heading.dart';
import '../../../CustomFont/NormalText.dart';
import '../../../CustomFont/SubHeading.dart';
import '../Controller/UmProfileController.dart';


class ProfileUm extends StatelessWidget {
  final String upperamanagerid;
  final String uid;
  ProfileUm({Key? key, required this.upperamanagerid, required this.uid}) : super(key: key);

  late final _umProfileController =
  Get.put(UmProfileController(upperamanagerid: upperamanagerid));

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        Get.back();
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: (){
              Get.back();
            },
            child: Icon(
              Icons.arrow_back_ios,
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.red,
        ),
        backgroundColor: Colors.red,
        body:Obx(()=> _body()),
      ),
    );
  }
  _body(){
    if(_umProfileController.networkStatus.value==true){
      if(_umProfileController.loadingBool.value==false){
        if(_umProfileController.ProfileEntity.value== null){
          return Container(
            child: Text('Null value'),
          );
        }
        else if(_umProfileController.ProfileEntity.value!=null){
          if (_umProfileController
              .ProfileEntity.value.response ==
              "Success") {
            if (_umProfileController.ProfileEntity.value
                .representativelist!.length ==
                0) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: HeadingText(
                        text: 'No Data',
                      ),
                    ),
                  ],
                ),
              );
            }
            else  if (_umProfileController.ProfileEntity.value
                .representativelist!.length !=
                0){
              return SingleChildScrollView(
                child: SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Column(
                          children: [
                            Image(
                                image: AssetImage(
                                  "Assets/HomePageIcons/Group 51.png",
                                )),
                            SizedBox(height: 2.5.h),
                            Text(
                              _umProfileController.ProfileEntity.value.representativelist![0].name.toString(),
                              style: GoogleFonts.radioCanada(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 0.5.h),
                            Text(
                              _umProfileController.ProfileEntity.value.representativelist![0].email.toString(),
                              style: GoogleFonts.radioCanada(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 5.h),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                topLeft: Radius.circular(20))),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            NormalText(text: 'Name'),
                            SizedBox(
                              height: 0.7.h,
                            ),
                            SubHeadingText(text:  _umProfileController.ProfileEntity.value.representativelist![0].name.toString(),),
                            Divider(
                              thickness: 1,
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            /////////////////////////////////////////////////
                            NormalText(text: 'Address'),
                            SizedBox(
                              height: 0.7.h,
                            ),
                            SubHeadingText(
                                text:
                                _umProfileController.ProfileEntity.value.representativelist![0].address.toString(),),
                            Divider(
                              thickness: 1,
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            /////////////////////////////////////////////////
                            NormalText(text: 'Contact No'),
                            SizedBox(
                              height: 0.7.h,
                            ),
                            SubHeadingText(text:  _umProfileController.ProfileEntity.value.representativelist![0].contactno.toString(),),
                            Divider(
                              thickness: 1,
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            /////////////////////////////////////////////////
                            NormalText(text: 'Email'),
                            SizedBox(
                              height: 0.7.h,
                            ),
                            SubHeadingText(text:  _umProfileController.ProfileEntity.value.representativelist![0].email.toString(),),
                            Divider(
                              thickness: 1,
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            /////////////////////////////////////////////////
                            NormalText(text: 'Desigination'),
                            SizedBox(
                              height: 0.7.h,
                            ),
                            SubHeadingText(text: _umProfileController.ProfileEntity.value.representativelist![0].designation.toString(),),
                            Divider(
                              thickness: 1,
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            /////////////////////////////////////////////////
                            NormalText(text: 'User Name'),
                            SizedBox(
                              height: 0.7.h,
                            ),
                            SubHeadingText(text: _umProfileController.ProfileEntity.value.representativelist![0].username.toString(),),
                            Divider(
                              thickness: 1,
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            /////////////////////////////////////////////////
                            NormalText(text: 'Joining Date'),
                            SizedBox(
                              height: 0.7.h,
                            ),
                            SubHeadingText(text:  _umProfileController.ProfileEntity.value.representativelist![0].joiningdate.toString(),),
                            Divider(
                              thickness: 1,
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            /////////////////////////////////////////////////
                            NormalText(text: 'DOB'),
                            SizedBox(
                              height: 0.7.h,
                            ),
                            SubHeadingText(text: _umProfileController.ProfileEntity.value.representativelist![0].dob.toString(),),
                            Divider(
                              thickness: 1,
                            ),
                            NormalText(text: 'Id Card no.'),
                            SizedBox(
                              height: 0.7.h,
                            ),
                            SubHeadingText(text: _umProfileController.ProfileEntity.value.representativelist![0].idcardno.toString(),),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            }
          }
          else {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: HeadingText(
                      text: _umProfileController.ProfileEntity.value.response
                          .toString(),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        _umProfileController.getProfileList();
                      },
                      child: Text('Retry'))
                ],
              ),
            );
          }
        }

      }
      else if (_umProfileController.loadingBool.value == true) {
        return Center(
          child: Column(
            children: [HeadingText(text: 'Loading..')],
          ),
        );
      }

    }
    else if (_umProfileController.networkStatus.value ==
        false) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: HeadingText(
                text: 'No Internet Connection',
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  _umProfileController!.getProfileList();
                },
                child: Text('Retry'))
          ],
        ),
      );
    }

  }

}
