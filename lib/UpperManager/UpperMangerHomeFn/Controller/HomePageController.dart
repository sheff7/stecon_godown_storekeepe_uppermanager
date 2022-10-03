
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';


import '../../../CustomWidget/CustomSnackBar.dart';

import '../../../LoginPage/View/LoginPage.dart';
import '../../../Utils/InternetConnectivity.dart';
import '../../UpperPurchaseOrder/Model/get_upper_purchse_plan_entity.dart';
import '../Model/get_login_by_statusa_entity.dart';
import '../Repository/HomeUMService.dart';




class UmHomeController extends GetxController {
  // final String id;
  final String uid;

  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  Rx<GetLoginByStatusaEntity> loginByStatusEntity = GetLoginByStatusaEntity().obs;
  Rx<GetUpperPurchsePlanEntity> orderNoEntity=GetUpperPurchsePlanEntity().obs;

  // Rx<LatestOrderDisEntity> latestOrderDisEntity = LatestOrderDisEntity().obs;

  RxString uppermanagerid=''.obs;
  RxString uppermanagername=''.obs;
  RxString txt='..'.obs;
  RxString upmId=''.obs;

  UmHomeController({ required this.uid});

  checkNetworkStatus() async {
    try {
      networkStatus.value =
      (await NetworkConnectivity().checkConnectivityState())!;
      print(networkStatus.value);
    } catch (e) {
      print(e);
    }
  }

  getLoginByStatus() async {
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true) {
      CustomSnackbar().LoadingBottomSheet();
      loginByStatusEntity.value =
      (await LoginByStatusService().getLoginByStatus(uid))!;
      Get.back();
      print(loginByStatusEntity.value);
      print('gdhsdhgd' + loadingBool.value.toString());
      if (loginByStatusEntity.value.response == 'Success') {
        if (loginByStatusEntity.value.loginlist![0].status == 'Active') {
          if (loginByStatusEntity.value.loginlist![0].type == 'Upper Manager') {
            print("inside status");
            SharedPreferences _prefs = await SharedPreferences.getInstance();

            _prefs.setString('uppermanagername',
                loginByStatusEntity.value.loginlist![0].uppermanagername
                    .toString());
            _prefs.setString('uppermanagerid',
                loginByStatusEntity.value.loginlist![0].uppermanagerid
                    .toString());

            uppermanagerid.value =
                loginByStatusEntity.value.loginlist![0].uppermanagerid
                    .toString();
            uppermanagername.value =
                loginByStatusEntity.value.loginlist![0].uppermanagername
                    .toString();
            getUpperOrder();
            // getLatestOrder();
          }
        }
        else if (loginByStatusEntity.value.loginlist![0].status == 'Inactive') {
          CustomSnackbar().InfoSnackBar("Inactive", 'Please Contact to Office');
          Get.offAll(LoginScreen());
        }
      }
      else if (loginByStatusEntity.value.response == 'Failed') {
        CustomSnackbar().InfoSnackBar(
            "Inactive", 'Please check your credentails');
      }
      else {
        CustomSnackbar().InfoSnackBar("HomePage", 'Something Went Wrong');
      }
    }
  }
  // getLatestOrder() async {
  //   bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
  //   if (nBool == true) {
  //     loadingBool.value = true;
  //     print(uppermanagerid.value);
  //     latestOrderDisEntity.value = (await LoginByStatusService().latestOrder(distributorid.value.toString()))!;
  //
  //     loadingBool.value= false;
  //   }
  // }
  void ABC(int x){
    print('jjj');
    if(x<=0){
      return;
    }
    ABC(x-1);
    print("output"+x.toString());
    ABC(x-1);

  }

  getUpperOrder()async{
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true){
      loadingBool.value=true;
      orderNoEntity.value=(await LoginByStatusService().getUpperPurchseOrder(uppermanagerid.value.toString()))!;
      loadingBool.value=false;

    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    print("jdkjdf".toString());
    ABC(3);

    checkNetworkStatus();
    getLoginByStatus();

    super.onInit();
  }

}
