
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';




import '../../../CustomFont/SubHeading.dart';
import '../../../CustomWidget/CustomSnackBar.dart';


import '../../../Utils/InternetConnectivity.dart';
import '../Model/get_company_entity.dart';
import '../Model/get_department_entity.dart';
import '../Model/get_material_item_entity.dart';
import '../Model/response_entity.dart';
import '../Repository/AddIssuedMaterialOrderServices.dart';
import 'ViewIssuedMaterialDetailsView.dart';



class AddMaterialOrderPurController extends GetxController {


  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  RxString orderno = ''.obs;
  Rx<GetDepartmentEntity> GetDepartmententity =
      GetDepartmentEntity().obs;
  Rx<GetMaterialItemEntity> getItemEntity =
      GetMaterialItemEntity().obs;
  final categoryController = TextEditingController();
  final quantityController = TextEditingController();
  final commentController= TextEditingController();
  final priceController = TextEditingController();
  Rx<GetCompanyEntity> companyListEntity = GetCompanyEntity().obs;
  Rx<ResponseEntity> responseEntity = ResponseEntity().obs;


  RxList<String>? departmentList = ['Select Department'].obs;
  RxString departmentisselected = ''.obs;
  RxString departmentid = ''.obs;

  RxList<String>? itemList = ['Select Item'].obs;
  RxString itemisselected = ''.obs;
  RxString itemid = ''.obs;

  RxList<String>? companyList = ['Select Company'].obs;
  RxString companyisselected = ''.obs;
  RxString cpmanyid = ''.obs;

  RxList<String>?typeList = ['Kg', 'G', 'L', 'Ml', 'Item', "No's"].obs;
  RxString typeisSelected = ''.obs;
  RxString typeid = ''.obs;


  checkNetworkStatus() async {
    try {
      networkStatus.value =
      (await NetworkConnectivity().checkConnectivityState())!;
      print(networkStatus.value);
    } catch (e) {
      print(e);
    }
  }



  getDep() async {
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true) {
      GetDepartmententity.value =
      (await AddIssuedMaterialOrderSkServices().GetDis())!;
      // loadingBool.value= false;
      if (GetDepartmententity.value != null) {
        if (GetDepartmententity.value.response == 'Success') {
          if (GetDepartmententity.value.departmentlist!.length != 0) {
            for (int i = 0;
            i < GetDepartmententity.value.departmentlist!.length;
            i++) {
              departmentList!.add(GetDepartmententity
                  .value.departmentlist![i].departmentname
                  .toString());
            }
          }
        } else {
          CustomSnackbar().InfoSnackBar(
              'Add Department', GetDepartmententity.value.response.toString());
        }
      }
    }
  }

  void departmentType(String value) {
    departmentisselected.value = value;
    if (value != 'Select Department') {
      for (int i = 0; i <
          GetDepartmententity.value.departmentlist!.length; i++) {
        if (GetDepartmententity.value.departmentlist![i].departmentname ==
            value.toString()) {
          departmentid.value =
              GetDepartmententity.value.departmentlist![i].id.toString();
        }
      }
    }
    else if(value=='Select Department'){
      departmentid.value='';
    }
    }



  getItem() async {
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true) {
      getItemEntity.value =
      (await AddIssuedMaterialOrderSkServices().GetCatgryItem())!;
      // loadingBool.value= false;
      if (getItemEntity.value != null) {
        if (getItemEntity.value.response == 'Success') {
          if (getItemEntity.value.materialitemslist!.length != 0) {
            for (int i = 0;
            i < getItemEntity.value.materialitemslist!.length;
            i++) {
              itemList!.add(getItemEntity
                  .value.materialitemslist![i].materialitem
                  .toString());
            }
          }
        } else {
          CustomSnackbar().InfoSnackBar(
              'Add Category', getItemEntity.value.response.toString());
        }
      }
    }
  }

  void itemType(String value) {
    itemisselected.value = value;
    if (value != 'Select item') {
      for (int i = 0; i < getItemEntity.value.materialitemslist!.length; i++) {
        if (getItemEntity.value.materialitemslist![i].materialitem ==
            value.toString()) {
          categoryController.text =
              getItemEntity.value.materialitemslist![i].categoryname.toString();
          itemid.value =
              getItemEntity.value.materialitemslist![i].id.toString();
        }
      }
    }
    else if (value == 'Select item') {
      itemid.value = '';
    }
  }

  getCompany() async {
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true) {
      companyListEntity.value =
      (await AddIssuedMaterialOrderSkServices().GetCompany())!;
      // loadingBool.value= false;
      if (companyListEntity.value != null) {
        if (companyListEntity.value.response == 'Success') {
          if (companyListEntity.value.companylist!.length != 0) {
            for (int i = 0;
            i < companyListEntity.value.companylist!.length;
            i++) {
              companyList!.add(companyListEntity
                  .value.companylist![i].companyname
                  .toString());
            }
          }
        } else {
          CustomSnackbar().InfoSnackBar(
              'Add Company', companyListEntity.value.response.toString());
        }
      }
    }
  }


  void companyType(String value) {
    companyisselected.value = value;
    if (value != 'Select Company') {
      for (int i = 0; i <
          companyListEntity.value.companylist!.length; i++) {
        if (companyListEntity.value.companylist![i].companyname ==
            value.toString()) {
          cpmanyid.value =
              companyListEntity.value.companylist![i].id.toString();
        }
      }
    }

    else if(value=='Select Company'){
      cpmanyid.value ='';
    }
  }

  void typeType(String value) {
    typeisSelected.value = value;

  }



  addButton(String departmntId, String itemId, String companyId,String qty,String type,String comments
      ) async {
    try {
      CustomSnackbar().LoadingBottomSheet();
      responseEntity.value = (await  AddIssuedMaterialOrderSkServices().AddButton(departmntId, itemId, companyId, qty, type, comments,))!;
      Get.back();
      if(responseEntity.value.response.toString()=='Added successfully'){
        Get.dialog(
            Dialog(
              insetAnimationCurve: Curves.decelerate,
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text('Success',
                        style: GoogleFonts.radioCanada(
                            fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 15,
                    ),
                    Center(child: Padding(
                      padding:EdgeInsets.only(left: 3.h),
                      child: SubHeadingText(text: 'Issued Material Order Added Successfully'),
                    )),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              // Get.delete<AddMaterialOrderPurController>();
                              Get.back();
                              IssuedMaterialSdkListController viewissuedMaterialSdkListController=Get.find<IssuedMaterialSdkListController>();
                              viewissuedMaterialSdkListController.getMaterialList();

                              Get.back();


                            },
                            style: ElevatedButton.styleFrom(
                                primary: const Color(0xFFEC4E52),
                                textStyle: const TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold)),
                            child: Text('Okay')),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
            barrierDismissible: false);
      }
      else{
        CustomSnackbar().InfoSnackBar('Add Material Order', responseEntity.value.response.toString());
      }
    } catch (e) { CustomSnackbar().InfoSnackBar('Add Material Order', e.toString());}
  }



  @override
  void onInit() {
    // TODO: implement onInit
    checkNetworkStatus();
    getDep();
    getItem();
    getCompany();

    super.onInit();
  }
}
