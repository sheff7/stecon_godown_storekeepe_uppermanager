import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';
import 'package:stecon_godown_storekeepe_uppermanager/StoreKeeper/HomeSK/controller/homeControllerSK.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UppeOrder/View/OrderList.dart';
import '../../../AppConstants/ClourConstants.dart';
import '../../../CustomFont/Heading.dart';
import '../../../CustomFont/SubHeading.dart';
import '../../../CustomWidget/Nodata.dart';
import '../../../CustomWidget/RetryButton.dart';
import '../../../LoginPage/View/LoginPage.dart';
import '../../DamagedMaterialDetailsSkFn/View/AddDamageMaterialDetails.dart';
import '../../DamagedMaterialDetailsSkFn/View/DamagedMaterialDetailsList.dart';
import '../../IssuedMaterialSkFn/View/AddIssuedMaterialDeatils.dart';
import '../../IssuedMaterialSkFn/View/IssuedMaterialDetailsList.dart';
import '../../Material Received/view/ViewMaterialReceivedView.dart';
import '../../Material Received/view/materialReceivedList.dart';
import '../../MaterialReplacedDetailsSK/View/AddMaterialReplacedDetails.dart';
import '../../MaterialReplacedDetailsSK/View/MaterialReplaceddetailsList.dart';
import '../../MaterialStockSkFn/View/MaterialStockListProManager.dart';
import '../../profileSK/view/ProfileSkView.dart';

class HomePageSk extends StatelessWidget {
  final String uidSK;

  HomePageSk({Key? key, required this.uidSK}) : super(key: key);
  late final homecontroller = Get.put(HomeControllerSk(uidSK: uidSK));

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
        ),
          floatingActionButton: Padding(
            padding:EdgeInsets.only(bottom: 1.h,right: 3.h),
            child: Wrap(direction: Axis.vertical, children: [
              FloatingActionButton(
                backgroundColor: ColorConstants.appThemeColorRed,
                heroTag: 'btn1',
                child: Icon(
                  Icons.refresh,
                  color: Colors.white,
                ),
                onPressed: () async {
                  homecontroller.checkNetworkStatus();
                  homecontroller.getLoginByStatus();
                  homecontroller.getMaterialList();

                },
              ),
              SizedBox(
                height: 20,
              ),
              // FloatingActionButton(
              //   backgroundColor: ColorConstants.appThemeColorBlue,
              //   heroTag: 'bt2',
              //   child: Icon(
              //     Icons.my_location,
              //     color: Colors.white,
              //   ),
              //   onPressed: () async {
              //     // moveToCurrentLocation();
              //   },
              // ),
            ]),
          ),

          drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFFEC4E52),
                ),
                child: SingleChildScrollView(
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
                          homecontroller.loginByStatusEntity.value.loginlist![0]
                              .storekeepername
                              .toString(),
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        height: .5.h,
                      ),
                      Obx(() => Text(
                            homecontroller.userEmail.value.toString(),
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.w400),
                          ))
                    ],
                  ),
                ),
              ),
              _drawerList()
            ],
          ),
        ),
        body:
        Column(
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
                      Get.to(ProfileSK(
                          idSK: homecontroller.loginByStatusEntity.value
                              .loginlist![0].storekeeperid
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
                "Store Keeper",
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
                                onTap: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //       builder: (context) =>
                                  //            IssuedMaterialDetailsList()),
                                  // );
                                  Get.to(IssuedMaterialDetailsList());
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
                                              "issued\nmaterial",
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
                              child: InkWell(
                                onTap: () {
                                  Get.to(MaterialReplaceddetailsList());
                                },
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
                                              "Replaced\nmaterial",
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
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            DamageMaterialList()),
                                  );
                                },
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
                                                "damaged\nmaterial",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w500),
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
                            ),
                            // SizedBox(
                            //   height: 1.h,
                            //   width: 2.h,
                            // ),
                            // Expanded(
                            //   flex: 1,
                            //   child: Container(
                            //     height: 16.5.h,
                            //     child: ClipPath(
                            //       child: Card(
                            //         elevation: 2,
                            //         shape: Border(
                            //           left: BorderSide(
                            //               color: Color(0xFFF3A84F),
                            //               width: 1.7.w),
                            //         ),
                            //         child: Column(
                            //           crossAxisAlignment:
                            //               CrossAxisAlignment.start,
                            //           children: [
                            //             Container(
                            //               margin: EdgeInsets.fromLTRB(
                            //                   2.h, 0.7.h, 0.h, 0.h),
                            //               alignment: Alignment.topLeft,
                            //               height: 8.h,
                            //               width: 8.h,
                            //               decoration: BoxDecoration(
                            //                 image: DecorationImage(
                            //                   image: AssetImage(
                            //                       "Assets/HomePageIcons/Group 49.png"),
                            //                 ),
                            //               ),
                            //             ),
                            //             Expanded(
                            //               flex: 1,
                            //               child: Padding(
                            //                 padding: EdgeInsets.fromLTRB(
                            //                     2.5.h, 1.h, 0.h, 0.h),
                            //                 child: Text(
                            //                   "Add Purchase\nrequest",
                            //                   style: TextStyle(
                            //                     fontSize: 16,
                            //                     fontWeight: FontWeight.w500,
                            //                   ),
                            //                 ),
                            //               ),
                            //             )
                            //           ],
                            //         ),
                            //       ),
                            //       clipper: ShapeBorderClipper(
                            //           shape: RoundedRectangleBorder(
                            //               borderRadius:
                            //                   BorderRadius.circular(20))),
                            //     ),
                            //   ),
                            // )
                          ],
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(1.h, 1.h, 0.h, 2.h),
                              child: Text(
                                "Latest issued material deatils",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Obx(()=>
                            _orderList()
                            ),
                            // Text(homecontroller.txt.toString()),
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
    );
  }

  Widget _drawerList() {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Column(
        children: [
          // menuItem(),
          menuItem(1, 'Profile', Icons.person),
          menuItem(2, 'Material Received', Icons.logout),
          menuItem(3, 'Orders', Icons.logout),
          menuItem(4, 'Material Stock', Icons.logout),

          menuItem(5, 'Log Out', Icons.logout),
        ],
      ),
    );
  }

  _logout() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    _prefs.remove('usernameSK');
    _prefs.remove('passwordSK');
    _prefs.remove('user_idSK');
    _prefs.remove('user_typeSK');
    _prefs.remove('user_statusSK');
    _prefs.remove('user_nameSK');
    _prefs.remove('user_emailSK');
    Get.offAll(LoginScreen());
  }

  Widget menuItem(int id, String title, IconData icon) {
    return Material(
      child: InkWell(
        onTap: () {
          if (id == 1) {
            Get.to(ProfileSK(
              idSK: homecontroller
                  .loginByStatusEntity.value.loginlist![0].storekeeperid
                  .toString(),
            ));
          } else if (id == 2) {
            Get.to(MaterialReceivedList());
          } else if (id == 3) {
            Get.to(OrderList());

          } else if (id == 4) {
            Get.to(MaterialStockListProManager());
          } else if (id == 5) {
            _logout();
          } else if (id == 6) {
          } else if (id == 7) {

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
  _orderList() {

    if(homecontroller.networkStatus.value==true){
      if (homecontroller.loadingBool. value == true) {
        return Center(
          child: Column(
            children: [
              CircularProgressIndicator(color: ColorConstants.appThemeColorRed,),
              HeadingText(text: 'Loading...'),
            ],
          ),
        );
      } else if (homecontroller.loadingBool.value == false) {
        if (homecontroller.IssuedMaterialListEntity.value == null) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Nodata(response: 'No Data'),
                RetryButton(onTap: (){
                  homecontroller.checkNetworkStatus();
                  homecontroller.getLoginByStatus();
                  homecontroller.getMaterialList(); })
              ],
            ),
          );
        } else if (homecontroller.IssuedMaterialListEntity.value != null) {
          if (homecontroller.IssuedMaterialListEntity.value.response == 'Success') {
            return ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: homecontroller
                    .IssuedMaterialListEntity.value.materialitemslist!.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Material(
                        borderRadius: BorderRadius.circular(0),
                        elevation: 1,
                        shadowColor: Colors.grey,
                        child: ListTile(
                          leading: Padding(
                            padding: EdgeInsets.fromLTRB(0.h, 0.1, 1.h, 0.h),
                            child:
                            Image.asset("Assets/HomePageIcons/Group 48.png"),
                          ),
                          title: Padding(
                            padding: EdgeInsets.fromLTRB(
                              2.h,
                              1.5.h,
                              1.h,
                              2.h,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(homecontroller.IssuedMaterialListEntity.value
                                    .materialitemslist![index].itemnanme
                                    .toString()),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Text(
                                  homecontroller.IssuedMaterialListEntity.value
                                      .materialitemslist![index].date
                                      .toString(),
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
                });
          } else if(homecontroller.IssuedMaterialListEntity.value.response.toString()=='null'){
            return Center(
              child: Column(
                children: [
                  HeadingText(
                      text:'Please Wait...')
                ],
              ),
            );
          }
          else{
            return Center(
              child: Column(
                children: [
                  Nodata(response: homecontroller.IssuedMaterialListEntity.value.response.toString()),
                  RetryButton(onTap: () {
                    homecontroller.checkNetworkStatus();
                    homecontroller.getLoginByStatus();
                    homecontroller.getMaterialList();

                  },

                  )
                ],
              ),
            );
          }


        }
      }

    }
    else if(homecontroller.networkStatus.value==false){
      print('kko');
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Nodata(response: 'No Internet Connection'),
            RetryButton(onTap: (){
              print('ass');
              homecontroller.checkNetworkStatus();
              homecontroller.getLoginByStatus();
              homecontroller.getMaterialList(); })
          ],
        ),
      );
    }
  }

}
