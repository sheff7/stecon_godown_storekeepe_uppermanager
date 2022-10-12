import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../CustomFont/SubHeading.dart';
import '../../../CustomWidget/CustomSnackBar.dart';

import '../../../Utils/InternetConnectivity.dart';
import '../../IssuedMaterialSkFn/Model/get_company_entity.dart';
import '../../IssuedMaterialSkFn/Model/get_department_entity.dart';
import '../../IssuedMaterialSkFn/Model/get_issued_material_list_entity.dart';
import '../../IssuedMaterialSkFn/Model/get_material_item_entity.dart';
import '../../IssuedMaterialSkFn/Model/response_entity.dart';
import '../../MaterialReplacedDetailsSK/Model/get_material_replaced_sk_entity.dart';
import '../Model/get_damaged_material_list_sk_entity.dart';
import '../Repository/AddDamagedMaterialSkServices.dart';
import '../Repository/EditDamageMaterialListSkSevices.dart';
import 'DamagedMaterialListSkController.dart';

class EditDamagedMaterialControllerSk extends GetxController {
  RxBool networkStatus = true.obs;
  RxBool loadingBool = false.obs;
  RxString orderno = ''.obs;
  final String id;
  Rx<GetDepartmentEntity> GetDepartmententity = GetDepartmentEntity().obs;
  Rx<GetMaterialItemEntity> getItemEntity = GetMaterialItemEntity().obs;
  final categoryController = TextEditingController();
  final quantityController = TextEditingController();
  final commentController = TextEditingController();
  final priceController = TextEditingController();
  Rx<GetCompanyEntity> companyListEntity = GetCompanyEntity().obs;
  Rx<ResponseEntity> responseEntity = ResponseEntity().obs;
  Rx<GetIssuedMaterialListEntity> IssuedMaterialListEntity =
      GetIssuedMaterialListEntity().obs;
  Rx<GetMaterialReplacedSkEntity> MaterialReplacedSkEntity =
      GetMaterialReplacedSkEntity().obs;
  Rx<GetDamagedMaterialListSkEntity> damagedMaterialListByidSkEntity =
      GetDamagedMaterialListSkEntity().obs;

  RxList<String>? replaceidList = ["Select Replaced no."].obs;
  RxString replaceIdIsselected = ''.obs;
  RxString replaceid = ''.obs;

  RxList<String>? issuedList = ['Select Issued no.'].obs;
  RxString issuedisselected = ''.obs;
  RxString issuedid = ''.obs;

  RxList<String>? departmentList = ['Select Department'].obs;
  RxString departmentisselected = ''.obs;
  RxString departmentid = ''.obs;

  RxList<String>? itemList = ['Select Item'].obs;
  RxString itemisselected = ''.obs;
  RxString itemid = ''.obs;

  RxList<String>? companyList = ['Select Company'].obs;
  RxString companyisselected = ''.obs;
  RxString cpmanyid = ''.obs;

  RxList<String>? typeList = ['Kg', 'G', 'L', 'Ml', 'Item', "No's"].obs;
  RxString typeisSelected = ''.obs;
  RxString typeid = ''.obs;

  EditDamagedMaterialControllerSk(this.id);

  checkNetworkStatus() async {
    try {
      networkStatus.value =
          (await NetworkConnectivity().checkConnectivityState())!;
      print(networkStatus.value);
    } catch (e) {
      print(e);
    }
  }

  getDamagedListById() async {
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true) {
      loadingBool.value = true;
      damagedMaterialListByidSkEntity.value =
          (await EditDamagedMaterialSkServices().getMaterialListbyOrderid(id))!;
      loadingBool.value = false;
      await getMaterialList();
      await getItem();
      await getDep();
      await getCompany();
      if (damagedMaterialListByidSkEntity.value.response == 'Success') {
        if (damagedMaterialListByidSkEntity.value.materialdamagedlist!.length !=
            0) {
          departmentType(damagedMaterialListByidSkEntity
              .value.materialdamagedlist![0].departmentname
              .toString());
          itemType(damagedMaterialListByidSkEntity
              .value.materialdamagedlist![0].itemnanme
              .toString());
          companyType(damagedMaterialListByidSkEntity
              .value.materialdamagedlist![0].companyname
              .toString());
          typeType(damagedMaterialListByidSkEntity
              .value.materialdamagedlist![0].type
              .toString());
          issueType(damagedMaterialListByidSkEntity
              .value.materialdamagedlist![0].issueno
              .toString());
          quantityController.text = damagedMaterialListByidSkEntity
              .value.materialdamagedlist![0].quantity
              .toString();

          commentController.text = damagedMaterialListByidSkEntity
              .value.materialdamagedlist![0].comments
              .toString();
        }
      }
      print("Heaven" + loadingBool.value.toString());
    }
  }

  getReplaceList() async {
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true) {
      MaterialReplacedSkEntity.value =
          (await EditDamagedMaterialSkServices().getReplacedList())!;

      if (MaterialReplacedSkEntity.value != null) {
        if (MaterialReplacedSkEntity.value.response == 'Success') {
          if (MaterialReplacedSkEntity.value.materialreplacedlist!.length !=
              0) {
            for (int i = 0;
                i < MaterialReplacedSkEntity.value.materialreplacedlist!.length;
                i++) {
              replaceidList!.add(MaterialReplacedSkEntity
                  .value.materialreplacedlist![i].replacedno
                  .toString());
            }
          }
        } else {
          CustomSnackbar().InfoSnackBar('Add Replace no.',
              MaterialReplacedSkEntity.value.response.toString());
        }
      }
    }
  }

  void replaceType(String value) {
    replaceIdIsselected.value = value;
    if (value != 'Select Replace no.') {
      for (int i = 0;
          i < MaterialReplacedSkEntity.value.materialreplacedlist!.length;
          i++) {
        if (MaterialReplacedSkEntity
                .value.materialreplacedlist![i].replacedno ==
            value.toString()) {
          replaceid.value = MaterialReplacedSkEntity
              .value.materialreplacedlist![i].replacedno
              .toString();
        }
      }
    }
    else if(value=='Select Replace no.'){
      replaceid.value ='';
    }
  }

  getMaterialList() async {
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true) {
      IssuedMaterialListEntity.value =
          (await EditDamagedMaterialSkServices().getIssuedNo())!;

      if (IssuedMaterialListEntity.value != null) {
        if (IssuedMaterialListEntity.value.response == 'Success') {
          if (IssuedMaterialListEntity.value.materialitemslist!.length != 0) {
            for (int i = 0;
                i < IssuedMaterialListEntity.value.materialitemslist!.length;
                i++) {
              issuedList!.add(IssuedMaterialListEntity
                  .value.materialitemslist![i].issuedno
                  .toString());
              print(issuedList.toString());
            }
          }
        } else {
          CustomSnackbar().InfoSnackBar('Add issued no.',
              IssuedMaterialListEntity.value.response.toString());
        }
      }
    }
  }

  void issueType(String value) {
    issuedisselected.value = value;
    if (value != 'Select Issued no.') {
      for (int i = 0;
          i < IssuedMaterialListEntity.value.materialitemslist!.length;
          i++) {
        if (IssuedMaterialListEntity.value.materialitemslist![i].issuedno ==
            value.toString()) {
          issuedid.value = IssuedMaterialListEntity
              .value.materialitemslist![i].issuedno
              .toString();
        }
      }
    }
    else if (value == 'Select item') {
      itemid.value = '';
    }

  }

  getDep() async {
    bool nBool = (await NetworkConnectivity().checkConnectivityState())!;
    if (nBool == true) {
      GetDepartmententity.value =
          (await EditDamagedMaterialSkServices().GetDis())!;
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
      for (int i = 0;
          i < GetDepartmententity.value.departmentlist!.length;
          i++) {
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
          (await EditDamagedMaterialSkServices().GetCatgryItem())!;
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
          (await EditDamagedMaterialSkServices().GetCompany())!;
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
      for (int i = 0; i < companyListEntity.value.companylist!.length; i++) {
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

  editButton(String id, String departmntId, String itemId, String companyId,
      String qty, String type, String comments) async {
    try {
      CustomSnackbar().LoadingBottomSheet();
      responseEntity.value = (await EditDamagedMaterialSkServices().EditButton(
        id,
        departmntId,
        itemId,
        companyId,
        qty,
        type,
        comments,
      ))!;
      Get.back();
      if (responseEntity.value.response.toString() == 'Updated successfully') {
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
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 15,
                    ),
                    Center(child: Padding(
                      padding:EdgeInsets.only(left: 3.h),
                      child: SubHeadingText(text: 'Damaged Material Order Updated Successfully'),
                    )),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              // Get.delete<AddMaterialOrderPurController>();
                              Get.back();

                              GetDamagedMaterialListSkController DamagedMaterialListSkController=Get.find<GetDamagedMaterialListSkController>();
                              DamagedMaterialListSkController.getDamageList();

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
      } else {
        CustomSnackbar().InfoSnackBar('Add Damaged Material Order',
            responseEntity.value.response.toString());
      }
    } catch (e) {
      CustomSnackbar().InfoSnackBar('Add Damaged Material Order', e.toString());
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    checkNetworkStatus();
    // getDep();
    // getItem();
    // getCompany();
    // getMaterialList();
    // getReplaceList();
    getDamagedListById();

    super.onInit();
  }
}
