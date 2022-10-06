import 'package:get/get.dart';

import '../../../Utils/InternetConnectivity.dart';
import '../model/profile_sk_entity.dart';
import '../repository/ProfileSkService.dart';



class SkProfileController extends GetxController{
  final String idSK;

  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  Rx<ProfileSkEntity> ProfileEntity = ProfileSkEntity().obs;

  SkProfileController({required this.idSK,});


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
      ProfileEntity.value = (await ProfileSkService().getProfile(idSK))!;

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