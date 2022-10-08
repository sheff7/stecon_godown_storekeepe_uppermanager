import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import '../../../CustomFont/Heading.dart';
import '../../../CustomFont/NormalText.dart';
import '../../../CustomFont/SubHeading.dart';
import '../controller/ProfileGdController.dart';

class ProfileGD extends StatelessWidget {
  final String godownid;

  // final String uid;
  ProfileGD({Key? key, required this.godownid,}) : super(key: key);

  late final ProfileControllerGD =
  Get.put(ProfileGDController(godownid: godownid));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Obx(() => _body()),
    );
  }

  _body() {
    if (ProfileControllerGD.networkStatus.value == true) {
      if (ProfileControllerGD.loadingBool.value == false) {
        if (ProfileControllerGD.ProfileEntity.value == null) {
          return Container(
            child: Text('Null value'),
          );
        }
        else if (ProfileControllerGD.ProfileEntity.value != null) {
          if (ProfileControllerGD
              .ProfileEntity.value.response ==
              "Success") {
            if (ProfileControllerGD.ProfileEntity.value
                .storekeeperlist!.length ==
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
            else if (ProfileControllerGD.ProfileEntity.value
                .storekeeperlist!.length !=
                0) {
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
                              ProfileControllerGD.ProfileEntity.value
                                  .storekeeperlist![0].name.toString(),
                              style: GoogleFonts.radioCanada(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 0.5.h),
                            Text(
                              ProfileControllerGD.ProfileEntity.value
                                  .storekeeperlist![0].email.toString(),
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
                        padding: EdgeInsets.symmetric(
                            horizontal: 3.h, vertical: 5.h),
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
                        SubHeadingText(text: ProfileControllerGD.ProfileEntity
                            .value.storekeeperlist![0].name.toString(),),
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
                          ProfileControllerGD.ProfileEntity.value
                              .storekeeperlist![0].address.toString(),),
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
                        SubHeadingText(text: ProfileControllerGD.ProfileEntity
                            .value.storekeeperlist![0].contactno.toString(),),
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
                        SubHeadingText(text: ProfileControllerGD.ProfileEntity
                            .value.storekeeperlist![0].email.toString(),),
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
                        SubHeadingText(
                            text: ProfileControllerGD.ProfileEntity.value.storekeeperlist
                            ![0].designation.toString(),),
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
                      SubHeadingText(
                        text: ProfileControllerGD.ProfileEntity.value
                            .storekeeperlist![0].username.toString(),),
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
                      SubHeadingText(
                        text: ProfileControllerGD.ProfileEntity.value
                            .storekeeperlist![0].joiningdate.toString(),),
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
                      SubHeadingText(
                        text: ProfileControllerGD.ProfileEntity.value
                            .storekeeperlist![0].dob.toString(),),
                      Divider(
                        thickness: 1,
                      ),
                              SizedBox(
                                height: 5.h,
                              ),
                      NormalText(text: 'Id Card no.'),
                      SizedBox(
                        height: 0.7.h,
                      ),
                      SubHeadingText(
                        text: ProfileControllerGD.ProfileEntity.value
                            .storekeeperlist![0].idcardno.toString(),),
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
    text: ProfileControllerGD.ProfileEntity.value.response
        .toString(),
    ),
    ),
    ElevatedButton(
    onPressed: () async {
    ProfileControllerGD.getProfileList();
    },
    child: Text('Retry'))
    ],
    ),
    );
    }
    }

    }
    else if (ProfileControllerGD.loadingBool.value == true) {
    return Center(
    child: Column(
    children: [HeadingText(text: 'Loading..')],
    ),
    );
    }

    }
    else if (ProfileControllerGD.networkStatus.value ==
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
    ProfileControllerGD!.getProfileList();
    },
    child: Text('Retry'))
    ],
    ),
    );
    }

  }

}
