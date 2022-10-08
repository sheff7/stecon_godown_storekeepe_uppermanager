
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../CustomWidget/CustomSnackBar.dart';
import '../../../LoginPage/View/LoginPage.dart';
import '../../../Utils/InternetConnectivity.dart';
import '../model/loginby_status_g_d_entity.dart';
import '../repository/HomeControllerGDServices.dart';





class GDHomeController extends GetxController {
  // final String id;
  final String Gid;

  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  Rx<LoginbyStatusGDEntity> loginByStatusEntity = LoginbyStatusGDEntity().obs;
  // Rx<LatestOrderDisEntity> latestOrderDisEntity = LatestOrderDisEntity().obs;

  RxString godownmanagerid=''.obs;
  RxString godownmanagername=''.obs;
  RxString txt='..'.obs;
  RxString userEmail='..'.obs;

  GDHomeController({ required this.Gid});

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
      (await LoginByStatusGDService().getLoginByStatus(Gid))!;
      loadingBool.value = false;
      print(loginByStatusEntity.value);
      print('gdhsdhgd' + loadingBool.value.toString());
      if (loginByStatusEntity.value.response == 'Success') {
        if (loginByStatusEntity.value.loginlist![0].status == 'Active') {
          if (loginByStatusEntity.value.loginlist![0].type == 'Godown Manager') {
            print("inside status");
            SharedPreferences _prefs = await SharedPreferences.getInstance();

            _prefs.setString('godownmanagername',
                loginByStatusEntity.value.loginlist![0].godownmanagername
                    .toString());
            _prefs.setString('godownmanagerid',
                loginByStatusEntity.value.loginlist![0].godownmanagerid
                    .toString());

            godownmanagerid.value =
                loginByStatusEntity.value.loginlist![0].godownmanagerid
                    .toString();
            godownmanagername.value =
                loginByStatusEntity.value.loginlist![0].godownmanagername
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
    var email=_prefs.get('user_email');
    userEmail.value=email.toString();
    print(email);
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
