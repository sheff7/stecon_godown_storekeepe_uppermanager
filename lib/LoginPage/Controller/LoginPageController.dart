import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stecon_godown_storekeepe_uppermanager/StoreKeeper/HomeSK/view/HomePageSk.dart';
import '../../CustomWidget/CustomSnackBar.dart';
import '../../Godown/HomeGoDown.dart';
import '../../UpperManager/UpperMangerHomeFn/View/HomeUpperManager.dart';
import '../../Utils/InternetConnectivity.dart';
import '../Model/login_page_entity.dart';
import '../Repository/LoginPageServices.dart';


class LoginController extends GetxController {


  RxBool networkStatus = true.obs;
  Rx<LoginPageEntity> loginEntity = LoginPageEntity().obs;



  checkNetworkStatus() async {
    try {
      networkStatus.value =
      (await NetworkConnectivity().checkConnectivityState())!;
      print(networkStatus.value);
    } catch (e) {
      print(e);
    }
  }

  login(String username, String password) async {
    print(username + password);
    bool nBool = false; //(await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == false) {
      CustomSnackbar().LoadingBottomSheet();
      loginEntity.value = (await LoginPageService().Login(username, password))!;
      Get.back();
      print(loginEntity.value.status);
      if (loginEntity.value.status == 'SUCCESS') {
        if (loginEntity.value.userType == 'Godown') {
          if (loginEntity.value.userStatus == 'Active') {
            print("inside status");
            SharedPreferences _prefs = await SharedPreferences.getInstance();
            _prefs.setString('username', username);
            _prefs.setString('password', password);
            _prefs.setString('user_type', loginEntity.value.userType.toString());
            _prefs.setString('user_id', loginEntity.value.userId.toString());
            _prefs.setString('id', loginEntity.value.id.toString());
            _prefs.setString('user_status', loginEntity.value.userStatus.toString());
            _prefs.setString(
                'user_email', loginEntity.value.userEmail.toString());
            Get.to(HomeGodown());
          }
          else if(loginEntity.value.userStatus=='Inactive'){
            return CustomSnackbar().InfoSnackBar('Inactive', ' Please Contact to Office');

          }
        }
        else if(loginEntity.value.userType=='Upper Manager'){
          if(loginEntity.value.userStatus=='Active'){
            SharedPreferences _prefs = await SharedPreferences.getInstance();
            _prefs.setString('usernameUM', username);
            _prefs.setString('passwordUM', password);
            _prefs.setString('user_typeUM', loginEntity.value.userType.toString());
            _prefs.setString('user_idUM', loginEntity.value.userId.toString());
            _prefs.setString('idUM', loginEntity.value.id.toString());
            _prefs.setString('user_statusUM', loginEntity.value.userStatus.toString());
            _prefs.setString(
                'user_emailUM', loginEntity.value.userEmail.toString());
            print("show"+loginEntity.value.userId.toString(),);
            Get.to(HomeUpperManager(
               uid:loginEntity.value.userId.toString(),

            ));

          }
          else if(loginEntity.value.userStatus=='Inactive'){
            return CustomSnackbar().InfoSnackBar('Inactive', ' Please Contact to Office');

          }

        }
        else if(loginEntity.value.userType=='Store Keeper'){
          if(loginEntity.value.userStatus=='Active'){
            SharedPreferences _prefs = await SharedPreferences.getInstance();
            _prefs.setString('usernameSK', username);
            _prefs.setString('passwordSK', password);

            _prefs.setString('user_typeSK', loginEntity.value.userType.toString());
            _prefs.setString('user_idSK', loginEntity.value.userId.toString());
            _prefs.setString('idSK', loginEntity.value.id.toString());
            _prefs.setString('user_statusSK', loginEntity.value.userStatus.toString());
            _prefs.setString(
                'user_emailSK', loginEntity.value.userEmail.toString());
            print("show"+loginEntity.value.userId.toString(),);
            Get.to(HomePageSk(uidSK: loginEntity.value.userId.toString(),
            ));
          }
          else if(loginEntity.value.userStatus=='Inactive'){
            return CustomSnackbar().InfoSnackBar('Inactive', ' Please Contact to Office');

          }

        }


      }
      else if (loginEntity.value.status == 'Failed') {
        CustomSnackbar().InfoSnackBar("Login", 'Please check your credentails');
      }
      else {
        CustomSnackbar().InfoSnackBar("Login", 'Something Went Wrong');
      }
    }
    else if (nBool == false) {
      CustomSnackbar().NoInernetSnackBar();
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    checkNetworkStatus();
    super.onInit();
  }
}