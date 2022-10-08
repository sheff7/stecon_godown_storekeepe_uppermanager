import 'package:get/get.dart';
import '../../../Utils/InternetConnectivity.dart';
import '../model/profile_g_d_entity.dart';
import '../repository/ProfileGDRepository.dart';


class ProfileGDController extends GetxController{
  final String godownid;

  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  Rx<ProfileGDEntity> ProfileEntity = ProfileGDEntity().obs;

  ProfileGDController({required this.godownid});


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
      ProfileEntity.value = (await ProfileGDService().getProfile(godownid))!;

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