
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stecon_godown_storekeepe_uppermanager/StoreKeeper/HomeSK/repository/LoginByStatusService.dart';


import '../../../CustomWidget/CustomSnackBar.dart';

import '../../../LoginPage/View/LoginPage.dart';

import '../../../Utils/InternetConnectivity.dart';
import '../model/login_by_status_entity.dart';


class HomeControllerSk extends GetxController {
  // final String id;
  final String uidSK;

  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  Rx<LoginByStatusEntity> loginByStatusEntity = LoginByStatusEntity().obs;
  // Rx<LatestOrderDisEntity> latestOrderDisEntity = LatestOrderDisEntity().obs;

  RxString uppermanagerid=''.obs;
  RxString uppermanagername=''.obs;
  RxString txt='..'.obs;
  RxString userEmail='..'.obs;

  HomeControllerSk({required this.uidSK});

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
      loadingBool.value = true;
      loginByStatusEntity.value =
      (await LoginByStatusService().getLoginByStatus(uidSK))!;
      loadingBool.value = false;
      print(loginByStatusEntity.value);
      print('gdhsdhgd' + loadingBool.value.toString());
      if (loginByStatusEntity.value.response == 'Success') {
        if (loginByStatusEntity.value.loginlist![0].status == 'Active') {
          if (loginByStatusEntity.value.loginlist![0].type == 'Upper Manager') {
            print("inside status");
            SharedPreferences _prefs = await SharedPreferences.getInstance();

            _prefs.setString('uppermanagername',
                loginByStatusEntity.value.loginlist![0].storekeepername
                    .toString());
            _prefs.setString('uppermanagerid',
                loginByStatusEntity.value.loginlist![0].storekeeperid
                    .toString());

            uppermanagerid.value =
                loginByStatusEntity.value.loginlist![0].storekeeperid
                    .toString();
            uppermanagername.value =
                loginByStatusEntity.value.loginlist![0].storekeepername
                    .toString();
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
  getUserInfo() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    var emailSK=_prefs.get('user_emailSK');
    userEmail.value=emailSK.toString();

  }

  @override
  void onInit() {
    // TODO: implement onInit
    print("jdkjdf".toString());
    getUserInfo();
    checkNetworkStatus();
    getLoginByStatus();

    super.onInit();
  }

}
