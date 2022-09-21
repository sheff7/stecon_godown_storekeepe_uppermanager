import 'package:get/get.dart';

import '../../../Utils/InternetConnectivity.dart';
import '../Model/um_profile_entity.dart';
import '../Repository/UmProfileServices.dart';


class UmProfileController extends GetxController{
  final String upperamanagerid;

  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  Rx<UmProfileEntity> ProfileEntity = UmProfileEntity().obs;

  UmProfileController({required this.upperamanagerid});


  checkNetworkStatus() async {
    try {
      networkStatus.value =
      (await NetworkConnectivity().checkConnectivityState())!;
      print(networkStatus.value);
    } catch (e) {
      print(e);
    }
  }
  getProfileList() async {
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true) {
      loadingBool.value = true;
      ProfileEntity.value = (await ProfileUmService().getProfile(upperamanagerid))!;

      loadingBool.value= false;
      print("shahhh"+loadingBool.value.toString());
    }
  }


  @override
  void onInit() {
    // TODO: implement onInit
    checkNetworkStatus();
    getProfileList();

    super.onInit();
  }

}