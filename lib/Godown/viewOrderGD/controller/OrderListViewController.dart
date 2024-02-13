import 'package:get/get.dart';
import '../../../CustomWidget/CustomSnackBar.dart';
import '../../../Utils/InternetConnectivity.dart';
import '../model/get_distributors_entity.dart';
import '../model/orders_list_view_entity.dart';
import '../repository/ordersListViewServices.dart';

class OrderListViewController extends GetxController{



  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  RxBool searchBool = false.obs;
  Rx<ViewOrdersListViewEntity> orderListViewEntity = ViewOrdersListViewEntity().obs;
  RxString chooseDistributor = ''.obs;
  RxList<String>? distributorList = ['Select Distributor'].obs;
  RxList<ViewOrdersListViewOrderlist> filterList=List<ViewOrdersListViewOrderlist>.of([]).obs;
  Rx<GetDistributorsEntity> getDistributorEnitityy = GetDistributorsEntity().obs;
  RxString choosestatus="".obs;
  RxList statusList = ["Confirmed","Pending","Cancelled","Completed","Out for delivery","Delivered"].obs;
  RxString disid=''.obs;




  checkNetworkStatus() async {
    try {
      networkStatus.value =
      (await NetworkConnectivity().checkConnectivityState())!;
      print(networkStatus.value);
    } catch (e) {
      print(e);
    }
  }

  filterSearch(String value) {
    RxList<ViewOrdersListViewOrderlist> reslutList =
        List<ViewOrdersListViewOrderlist>.of([]).obs;
    if (value.isEmpty) {
      searchBool.value=false;
      reslutList.value = orderListViewEntity.value.orderlist!;
    } else {
      searchBool.value=true;
      reslutList.value = orderListViewEntity.value.orderlist!
          .where((element) => element.orderno
          .toString()
          .toLowerCase()
          .contains(value.toLowerCase())||
          element.distributorname
              .toString()
              .toLowerCase()
              .contains(value.toLowerCase())
      )
          .toList();
    }
    filterList.value=reslutList.value;
  }

  getOrderListView() async {
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true) {
      loadingBool.value = true;
      orderListViewEntity.value = (await OrderListViewService().getOrderListView())!;

      loadingBool.value= false;
      print("shahhh"+loadingBool.value.toString());
    }
  }
  getDistributorList()async{
    bool nBool =(await NetworkConnectivity().checkConnectivityState())!;
    if(nBool==true){
      CustomSnackbar().LoadingBottomSheet();
      getDistributorEnitityy.value = (await OrderListViewService().getDistributorListt())!;
      Get.back();
      if(getDistributorEnitityy.value!=null){
        if(getDistributorEnitityy.value.distributorslist!.length!=0){
          for(int i=0; i<getDistributorEnitityy.value.distributorslist!.length; i++){
            distributorList!.add(getDistributorEnitityy.value.distributorslist![i].name.toString());


          }
        }
      }
    }
  }
  DisTributorType(String value){
    if(value!='Select Distributor'){
      chooseDistributor.value = value;
      for(int i=0; i< getDistributorEnitityy.value.distributorslist!.length;i++){
        if(chooseDistributor.value.toString()==getDistributorEnitityy.value.distributorslist![i].name.toString()){
          disid.value= getDistributorEnitityy.value.distributorslist![i].id.toString();
        }
      }

    }
  }
  StatusType(String value){
    choosestatus.value = value;
  }

  GetOrderListByFilterr()async{
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if(nBool==true){
      loadingBool.value=true;
      orderListViewEntity.value = (await  OrderListViewService().GetOrderListByFilter(disid.value, choosestatus.value))!;
      loadingBool.value=false;
    }
  }


  @override
  void onInit() {
    // TODO: implement onInit
    checkNetworkStatus();
    getOrderListView();
    getDistributorList();

    super.onInit();
  }

}