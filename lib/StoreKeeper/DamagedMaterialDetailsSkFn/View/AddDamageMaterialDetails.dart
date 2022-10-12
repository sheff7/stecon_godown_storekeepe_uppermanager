import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:stecon_godown_storekeepe_uppermanager/CustomWidget/CustomFieldNonEditable.dart';

import '../../../CustomFont/Header.dart';

import '../../../CustomWidget/CustomField.dart';
import '../../../CustomWidget/CustomSnackBar.dart';
import '../Controller/AddDamagedMaterialsSkController.dart';


class AddDamagedMaterialDetails extends StatelessWidget {
  AddDamagedMaterialDetails({Key? key}) : super(key: key);

  late final materialReplacedOrder =
  Get.put(AddDamagedMaterialControllerSk());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF7FBFC),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 0,
          title: Header(
            text: ' Add Damaged material deatils',
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              size: 17,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 2.h,
            ),
            Container(
              color: Colors.white,
              child: Container(
                margin: EdgeInsets.fromLTRB(3.h, 3.h, 3.h, 3.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 3.h,
                    ),
                    Obx(() => _issueList()),
                    SizedBox(
                      height: 4.h,
                    ),
                    // Obx(() => _replaceNoList()),
                    // SizedBox(
                    //   height: 4.h,
                    // ),
                    Obx(() => _departmentList()),
                    SizedBox(
                      height: 4.h,
                    ),
                    Obx(() => _itemList()),
                    SizedBox(
                      height: 4.h,
                    ),
                    CustomFieldNonEditable(
                        controller: materialReplacedOrder.categoryController,
                        label: 'Category'),
                    SizedBox(
                      height: 4.h,
                    ),
                    Obx(() => _companyList()),

                    SizedBox(
                      height: 4.h,
                    ),
                    CustomField(
                      controller: materialReplacedOrder.quantityController,
                      label: "Quantity",
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Obx(() => _typeList()),
                    SizedBox(
                      height: 4.h,
                    ),

                    CustomField(
                        controller: materialReplacedOrder.commentController, label: 'Comment'),
                    SizedBox(
                      height: 4.h,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: Container(
          color: Colors.white,
          margin: EdgeInsets.symmetric(horizontal: 3.h, vertical: 2.h),
          width: double.infinity,
          height: 6.h,
          child: ElevatedButton(
            onPressed: () {
              if (materialReplacedOrder.issuedid.value == '') {
                CustomSnackbar()
                    .InfoSnackBar("Add Material Order", "select Issue No.");
              }
              else if (materialReplacedOrder.departmentid.value == '') {
                CustomSnackbar()
                    .InfoSnackBar("Add Material Order", "select Department");
              } else if (materialReplacedOrder.itemid.value == '') {
                CustomSnackbar()
                    .InfoSnackBar("Add Material Order", "select Item");
              } else if (materialReplacedOrder.cpmanyid.value == '') {
                CustomSnackbar()
                    .InfoSnackBar("Add Material Order", "select Company");
              } else if (materialReplacedOrder.typeisSelected.value == '') {
                CustomSnackbar()
                    .InfoSnackBar("Add Material Order", "select Type");
              } else if (materialReplacedOrder
                  .quantityController.text.isEmpty) {
                CustomSnackbar()
                    .InfoSnackBar("Add material Order", "Enter Quantity");
              }
              else
                materialReplacedOrder.addButton(
                    materialReplacedOrder.issuedisselected.toString(),
                    materialReplacedOrder.departmentid.toString(),
                    materialReplacedOrder.itemid.toString(),
                    materialReplacedOrder.cpmanyid.toString(),
                    materialReplacedOrder.quantityController.text,
                    materialReplacedOrder.typeisSelected.toString(),
                    materialReplacedOrder.commentController.text);
            },
            child: Text(
              "Submit",
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            style: ElevatedButton.styleFrom(
                primary: const Color(0xFFEC4E52),
                textStyle:
                TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          ),
        ));
  }

  _departmentList() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey[400]!,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: DropdownButton(
        borderRadius: BorderRadius.circular(10),
        icon: Icon(Icons.arrow_drop_down),
        iconSize: 29,
        underline: SizedBox(),
        isExpanded: true,
        hint: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Select Department'),
        ),
        value: materialReplacedOrder.departmentisselected.value == ''
            ? null
            : materialReplacedOrder.departmentisselected.value,
        onChanged: (value) {
          materialReplacedOrder.departmentType(value.toString());
        },
        items: materialReplacedOrder.departmentList!.map((e) {
          return DropdownMenuItem(
              value: e,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(e.toString()),
              ));
        }).toList(),
      ),
    );
  }

  _itemList() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey[400]!,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: DropdownButton(
        borderRadius: BorderRadius.circular(10),
        icon: Icon(Icons.arrow_drop_down),
        iconSize: 29,
        underline: SizedBox(),
        isExpanded: true,
        hint: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Select Item'),
        ),
        value: materialReplacedOrder.itemisselected.value == ''
            ? null
            : materialReplacedOrder.itemisselected.value,
        onChanged: (value) {
          materialReplacedOrder.itemType(value.toString());
        },
        items: materialReplacedOrder.itemList!.map((e) {
          return DropdownMenuItem(
              value: e,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(e.toString()),
              ));
        }).toList(),
      ),
    );
  }

  _companyList() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey[400]!,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: DropdownButton(
        borderRadius: BorderRadius.circular(10),
        icon: Icon(Icons.arrow_drop_down),
        iconSize: 29,
        underline: SizedBox(),
        isExpanded: true,
        hint: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Select Company'),
        ),
        value: materialReplacedOrder.companyisselected.value == ''
            ? null
            : materialReplacedOrder.companyisselected.value,
        onChanged: (value) {
          materialReplacedOrder.companyType(value.toString());
        },
        items: materialReplacedOrder.companyList!.map((e) {
          return DropdownMenuItem(
              value: e,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(e.toString()),
              ));
        }).toList(),
      ),
    );
  }

  _typeList() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey[400]!,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: DropdownButton(
        borderRadius: BorderRadius.circular(10),
        icon: Icon(Icons.arrow_drop_down),
        iconSize: 29,
        underline: SizedBox(),
        isExpanded: true,
        hint: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Select Type'),
        ),
        value: materialReplacedOrder.typeisSelected.value == ''
            ? null
            : materialReplacedOrder.typeisSelected.value,
        onChanged: (value) {
          materialReplacedOrder.typeType(value.toString());
        },
        items: materialReplacedOrder.typeList!.map((e) {
          return DropdownMenuItem(
              value: e,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(e.toString()),
              ));
        }).toList(),
      ),
    );
  }

  _issueList() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey[400]!,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: DropdownButton(
        borderRadius: BorderRadius.circular(10),
        icon: Icon(Icons.arrow_drop_down),
        iconSize: 29,
        underline: SizedBox(),
        isExpanded: true,
        hint: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Select Issue no.'),
        ),
        value: materialReplacedOrder.issuedisselected.value == ''
            ? null
            : materialReplacedOrder.issuedisselected.value,
        onChanged: (value) {
          materialReplacedOrder.issueType(value.toString());
        },
        items: materialReplacedOrder.issuedList!.map((e) {
          return DropdownMenuItem(
              value: e,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(e.toString()),
              ));
        }).toList(),
      ),
    );
  }
  _replaceNoList() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey[400]!,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: DropdownButton(
        borderRadius: BorderRadius.circular(10),
        icon: Icon(Icons.arrow_drop_down),
        iconSize: 29,
        underline: SizedBox(),
        isExpanded: true,
        hint: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Select Replace no.'),
        ),
        value: materialReplacedOrder.replaceIdIsselected.value == ''
            ? null
            : materialReplacedOrder.replaceIdIsselected.value,
        onChanged: (value) {
          materialReplacedOrder.replaceType(value.toString());
        },
        items: materialReplacedOrder.replaceidList!.map((e) {
          return DropdownMenuItem(
              value: e,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(e.toString()),
              ));
        }).toList(),
      ),
    );
  }

}
