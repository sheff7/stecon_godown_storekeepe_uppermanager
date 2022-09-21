import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';

import '../../../CustomFont/SubHeading.dart';
import '../../../LoginPage/View/LoginPage.dart';
import '../../UpperPurchasePlan/View/AddProductionPlanUPM.dart';
import '../../UmProfileFn/View/ProfileUm.dart';
import '../../UpperPurchaseOrder1UPM.dart';
import '../../UpperPurchaseOrderUPM.dart';
import '../Controller/HomePageController.dart';


class HomeUpperManager extends StatelessWidget {

  final String uid;
   HomeUpperManager({Key? key, required this.uid}) : super(key: key);

  late final _umHomeController = Get.put(
      UmHomeController(uid: uid));

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFFFA6367),
              Color(0xFFC71317),
            ]),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          // title: Text(
          //   "Select Date",
          //   style: TextStyle(color: Colors.white),
          // ),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFFC71317),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 3.h,
                    ),
                    Image(
                        image: AssetImage(
                          "Assets/HomePageIcons/Group 51.png",
                        )),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      "Yadu Krishnan",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: .5.h,
                    ),
                    Text(
                      "yadukrishnan@gmail.com",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              _drawerList()
            ],
          ),
        ),
        body:
        Obx(()=>
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(6.6.h, 0.h, 5.h, 0.h),
              child: Row(
                children:  [
                  Text(
                    "Hello There..!",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      // Get.to(DisProfileScreen(uid:_loginByStatusController
                      //     .loginByStatusEntity.value
                      //     .loginlist![0].distributorid
                      //     .toString(), id: id.toString(), logid: uid.toString(),
                      Get.to(ProfileUm(upperamanagerid: _umHomeController.loginByStatusEntity.value.loginlist![0].uppermanagerid.toString(), uid: uid.toString(),));
                    },
                    child: Image(
                        image: AssetImage(
                          "Assets/HomePageIcons/Group 51.png",
                        )),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(6.6.h, 0.h, 0.h, 1.5.h),
              child: Text(
                "Have a Productive Day",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  color: const Color(0xFFF7FBFC),
                ),
                child: Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(height: 1.h),
                            Expanded(
                              flex: 1,
                              child: InkWell(
                               onTap: () async {
                                 // Get.to(UpperPurchaseOrderUPM());
                                 Get.to(AddProductionPlanUPM(upmId: _umHomeController.loginByStatusEntity.value.loginlist![0].uppermanagerid.toString(),));
                               },
                                child: Container(
                                  height: 16.5.h,
                                  child: ClipPath(
                                    child: Card(
                                      elevation: 2,
                                      shape: Border(
                                        left: BorderSide(
                                            color: Color(0xFFFA6367), width: 1.7.w),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                2.h, 1.h, 0.h, 0.h),
                                            alignment: Alignment.topLeft,
                                            height: 8.h,
                                            width: 8.h,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    "Assets/HomePageIcons/Group 33.png"),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                2.5.h, 0.7.h, 0.h, 0.h),
                                            child: Text(
                                              "Upper\nPurchase Order",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    clipper: ShapeBorderClipper(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(20))),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 1.h,
                              width: 2.h,
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 16.5.h,
                                child: ClipPath(
                                  child: Card(
                                    elevation: 2,
                                    shape: Border(
                                      left: BorderSide(
                                          color: Color(0xFF7A70E9), width: 1.7.w),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              2.h, 1.h, 0.h, 0.h),
                                          alignment: Alignment.topLeft,
                                          height: 8.h,
                                          width: 8.h,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  "Assets/HomePageIcons/Group 50.png"),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              2.5.h, 0.7.h, 0.h, 0.h),
                                          child: Text(
                                            "Upper\nReturn Products",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  clipper: ShapeBorderClipper(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(20))),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0.h, 1.h, 0.h, 2.h),
                              child: Text(
                                "Latest Upper Purchase Order",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: 8,
                                itemBuilder: (BuildContext context, int index) {
                                  return Column(
                                    children: [
                                      Material(
                                        borderRadius: BorderRadius.circular(0),
                                        elevation: 1,
                                        shadowColor: Colors.grey,
                                        child: ListTile(
                                          leading: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                0.h, 0.1, 1.h, 0.h),
                                            child: Image.asset(
                                                "Assets/HomePageIcons/Group 48.png"),
                                          ),
                                          title: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                              2.h,
                                              1.5.h,
                                              1.h,
                                              2.h,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Text("59684586"),
                                                SizedBox(
                                                  height: 1.h,
                                                ),
                                                Text(
                                                  "17-11-22",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                  ),
                                                ),
                                                // SizedBox(
                                                //   height: 3.h,
                                                // )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                }),
                            Text(_umHomeController.txt.value.toString()),
                            // SizedBox(height:2.h ,),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
  Widget _drawerList(){
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Column(
        children: [
          // menuItem(),
          menuItem(1, 'Profile', Icons.person),
          menuItem(2, 'About us', Icons.info),
          menuItem(3, 'Logout', Icons.logout),
        ],
      ),
    );
  }
  _logout() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    _prefs.remove('usernameUM');
    _prefs.remove('passwordUM');
    _prefs.remove('user_idUM');
    _prefs.remove('user_typeUM');
    _prefs.remove('user_statusUM');
    _prefs.remove('user_nameUM');
    _prefs.remove('user_emailUM');
    _prefs.remove('uppermanagername');
    _prefs.remove('uppermanagerid');
    Get.offAll(LoginScreen());
  }
  Widget menuItem(int id, String title, IconData icon) {
    return Material(
      child: InkWell(
        onTap: () {
          if (id == 1) {

          } else if (id == 2) {

          } else if (id == 3) {
            _logout();
          }
        },
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Row(
            children: [
              // Expanded(
              //     child: Icon(
              //       icon,
              //       size: 20,
              //       color: ColorConstants.,
              //     )),
              Expanded(
                flex: 3,
                child: SubHeadingText(
                  text: title,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
