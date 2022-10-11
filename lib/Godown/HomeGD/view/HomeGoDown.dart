import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';
import 'package:stecon_godown_storekeepe_uppermanager/Godown/HomeGD/controller/HomeControllerGD.dart';
import 'package:stecon_godown_storekeepe_uppermanager/Godown/ProfileGD/view/ProfileGDView.dart';

import '../../../CustomFont/SubHeading.dart';
import '../../../LoginPage/View/LoginPage.dart';
import '../../DeliverySchedulefn/View/DeliveryScheduleListGd.dart';
import '../../viewOrderGD/view/orderListView.dart';

class HomeGodown extends StatelessWidget {
  final String Gid;

  HomeGodown({Key? key, required this.Gid}) : super(key: key);

  late final gdHomeController = Get.put(GDHomeController(Gid: Gid));

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
                    Obx(
                      () => Text(
                        gdHomeController.loginByStatusEntity.value.loginlist![0]
                            .godownmanagername
                            .toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: .5.h,
                    ),
                    Obx(() => Text(
                          gdHomeController.userEmail.value.toString(),
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                ),
              ),
              _drawerList()
            ],
          ),
        ),
        body: Obx(()=>Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(6.6.h, 0.h, 5.h, 0.h),
              child: Row(
                children: [
                  Text(
                    "Hello There..!",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      Get.to(ProfileGD(
                          godownid: gdHomeController.loginByStatusEntity.value
                              .loginlist![0].godownmanagerid
                              .toString()));
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
                                onTap: (){
                                  Get.to(OrderListViewGD());
                                },
                                child: Container(
                                  height: 16.5.h,
                                  child: ClipPath(
                                    child: Card(
                                      elevation: 2,
                                      shape: Border(
                                        left: BorderSide(
                                            color: Color(0xFFFA6367),
                                            width: 1.7.w),
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
                                              "View\nOrder",
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
                                          color: Color(0xFF7A70E9),
                                          width: 1.7.w),
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
                                            "Pop Up\nView",
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
                          height: 2.h,
                        ),
                        Row(
                          children: [
                            SizedBox(height: 1.h),
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 16.5.h,
                                child: ClipPath(
                                  child: Card(
                                    elevation: 2,
                                    shape: Border(
                                      left: BorderSide(
                                          color: Color(0xFF60E96E),
                                          width: 1.7.w),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              2.h, 0.7.h, 0.h, 0.h),
                                          alignment: Alignment.topLeft,
                                          height: 8.h,
                                          width: 8.h,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  "Assets/HomePageIcons/Group 74.png"),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                2.5.h, 1.h, 0.h, 0.h),
                                            child: Text(
                                              "View\nStock",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500),
                                            ),
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
                            SizedBox(
                              height: 1.h,
                              width: 2.h,
                            ),
                            Expanded(
                              flex: 1,
                              child: InkWell(
                                onTap: () {
                                  Get.to(DeliveryScheduleGD());
                                },
                                child: Container(
                                  height: 16.5.h,
                                  child: ClipPath(
                                    child: Card(
                                      elevation: 2,
                                      shape: Border(
                                        left: BorderSide(
                                            color: Color(0xFFF3A84F),
                                            width: 1.7.w),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                2.h, 0.7.h, 0.h, 0.h),
                                            alignment: Alignment.topLeft,
                                            height: 8.h,
                                            width: 8.h,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    "Assets/HomePageIcons/Group 49.png"),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  2.5.h, 1.h, 0.h, 0.h),
                                              child: Text(
                                                "View Delivery\nSchedule",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
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
                                "Production History",
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
                            Text(gdHomeController.txt.value.toString()),
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
        ),),
      ),
    );
  }

  Widget _drawerList() {
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
    _prefs.remove('username');
    _prefs.remove('password');
    _prefs.remove('user_id');
    _prefs.remove('user_type');
    _prefs.remove('user_status');
    _prefs.remove('user_name');
    _prefs.remove('user_email');
    Get.offAll(LoginScreen());
  }

  Widget menuItem(int id, String title, IconData icon) {
    return Material(
      child: InkWell(
        onTap: () {
          if (id == 1) {
            Get.to(ProfileGD(
                godownid: gdHomeController
                    .loginByStatusEntity.value.loginlist![0].godownmanagerid
                    .toString()));
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
