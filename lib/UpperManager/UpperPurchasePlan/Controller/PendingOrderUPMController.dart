import 'package:get/get.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperPurchasePlan/Model/pending_order_u_p_m_entity.dart';

import '../../../Utils/InternetConnectivity.dart';
import '../Repository/AddProductionPlanUMPService.dart';

class PendingOrderUPMController extends GetxController{
  final String upmId;
  final String companyId;
  final String artnoId;
  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  Rx<PendingOrderUPMEntity>pendindOrderEntity=PendingOrderUPMEntity().obs;

  PendingOrderUPMController({required this.upmId, required this.companyId, required this.artnoId});

  getPendingOrder()async{
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true){
      loadingBool.value=true;
      pendindOrderEntity.value =
      (await AddProductionPlanUPMSevice().getPendinigOrder(companyId, artnoId))!;
      loadingBool.value=false;

    }
  }
  @override
  void onInit() {
    // TODO: implement onInit
    getPendingOrder();
    super.onInit();
  }
}