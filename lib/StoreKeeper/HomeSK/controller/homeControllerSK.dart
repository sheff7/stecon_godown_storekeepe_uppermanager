
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stecon_godown_storekeepe_uppermanager/StoreKeeper/HomeSK/repository/LoginByStatusService.dart';


import '../../../CustomWidget/CustomSnackBar.dart';

import '../../../LoginPage/View/LoginPage.dart';

import '../../../Utils/InternetConnectivity.dart';
import '../../IssuedMaterialSkFn/Model/get_issued_material_list_entity.dart';
import '../../IssuedMaterialSkFn/Repository/IssuedMaterialListServices.dart';
import '../model/login_by_status_entity.dart';


class HomeControllerSk extends GetxController {
  // final String id;
  final String uidSK;

  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  Rx<LoginByStatusEntity> loginByStatusEntity = LoginByStatusEntity().obs;
  // Rx<LatestOrderDisEntity> latestOrderDisEntity = LatestOrderDisEntity().obs;

  RxString storekeeperid=''.obs;
  RxString storekeepername=''.obs;
  RxString txt='..'.obs;
  RxString userEmail=''.obs;
  Rx<GetIssuedMaterialListEntity> IssuedMaterialListEntity = GetIssuedMaterialListEntity().obs;


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
      CustomSnackbar().LoadingBottomSheet();
      loginByStatusEntity.value =
      (await LoginByStatusService().getLoginByStatus(uidSK))!;
      Get.back();
      print(loginByStatusEntity.value);
      print('gdhsdhgd' + loadingBool.value.toString());
      if (loginByStatusEntity.value.response == 'Success') {
        if (loginByStatusEntity.value.loginlist![0].status == 'Active') {
          if (loginByStatusEntity.value.loginlist![0].type == 'Store Keeper') {
            print("inside status");
            SharedPreferences _prefs = await SharedPreferences.getInstance();

            _prefs.setString('storekeepername',
                loginByStatusEntity.value.loginlist![0].storekeepername
                    .toString());
            _prefs.setString('storekeeperid',
                loginByStatusEntity.value.loginlist![0].storekeeperid
                    .toString());

            storekeeperid.value =
                loginByStatusEntity.value.loginlist![0].storekeeperid
                    .toString();
            storekeepername.value =
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
    else if(nBool == false){
      CustomSnackbar().NoInernetSnackBar();
    }
  }
  getUserInfo() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    var emailSK=_prefs.get('user_emailSK');
    if(emailSK!=null || emailSK.toString().length!=0) {
      userEmail.value = emailSK.toString();
    }

  }
  getMaterialList() async {
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true) {
      loadingBool.value = true;
      IssuedMaterialListEntity.value = (await IssuedMaterialListSdkServices().getMaterialList())!;

      loadingBool.value= false;
      print("shahhh"+loadingBool.value.toString());
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    print("jdkjdf".toString());
    getUserInfo();
    checkNetworkStatus();
    getLoginByStatus();
    getMaterialList();

    super.onInit();
  }

}
