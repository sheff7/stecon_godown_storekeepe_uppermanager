import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

import '../../../CustomFont/Header.dart';
import '../../../CustomFont/NormalText.dart';
import '../../../CustomFont/SubHeading.dart';
import '../../../CustomWidget/CustomField.dart';
import '../../../CustomWidget/CustomSnackBar.dart';
import '../Controller/AddIssuedMaterialOrderSkController.dart';

class AddIssuedMaterialDeatils extends StatelessWidget {
   AddIssuedMaterialDeatils({Key? key}) : super(key: key);

   late final materialOrderPurController =
   Get.put(AddMaterialOrderPurController());

  final commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7FBFC),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Header(
          text: ' Add issued material deatils',
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

                  // SizedBox(
                  //   height: 2.h,
                  // ),
                  Row(
                    children: [
                      NormalText(text: 'Issue no : 57685 85996'),
                    ],
                  ),
                  SizedBox(
                    height: 3.h,
                  ),Obx(()=>
                  _departmentList()),

                  SizedBox(
                    height: 4.h,
                  ),Obx(()=>
                  _categoryList()),
                  SizedBox(
                    height: 4.h,
                  ),
            Obx(()=>
                  _companyList()),
                  SizedBox(
                    height: 4.h,
                  ),
                  CustomField(
                      controller: materialOrderPurController.quantityController,
                      label: "Quantity"),

                  SizedBox(
                    height: 4.h,
                  ),Obx(()=>
                  _typeList()),
                  SizedBox(height: 4.h,),



                  CustomField(controller: materialOrderPurController.commentController, label: 'Comment'),
                  SizedBox(height: 4.h,),

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
              if(materialOrderPurController.departmentisselected.value==''){
                CustomSnackbar().InfoSnackBar("Add Material Order", "select Department");
              }
              else if(materialOrderPurController.itemisselected.value==''){
                CustomSnackbar().InfoSnackBar("Add Material Order", "select Item");
              }
              else if(materialOrderPurController.companyisselected.value==''){
                CustomSnackbar().InfoSnackBar("Add Material Order", "select Company");
              }
              else if(materialOrderPurController.typeisSelected.value==''){
                CustomSnackbar().InfoSnackBar("Add Material Order", "select Type");
              }
              else if(materialOrderPurController.quantityController.text.isEmpty){
                CustomSnackbar().InfoSnackBar("Add material Order", "Enter Quantity");
              }
              else materialOrderPurController.addButton(materialOrderPurController.departmentid.toString(),materialOrderPurController.itemid.toString(), materialOrderPurController.cpmanyid.toString(),
                    materialOrderPurController.quantityController.text, materialOrderPurController.typeisSelected.toString(), materialOrderPurController.commentController.text);
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
        )
    );
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
         value: materialOrderPurController.departmentisselected.value == ''
             ? null
             : materialOrderPurController.departmentisselected.value,
         onChanged: (value) {
           materialOrderPurController.departmentType(value.toString());
         },
         items: materialOrderPurController.departmentList!.map((e) {
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

   _categoryList() {
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
         value: materialOrderPurController.itemisselected.value == ''
             ? null
             : materialOrderPurController.itemisselected.value,
         onChanged: (value) {
           materialOrderPurController.itemType(value.toString());
           // if (materialOrderPurController.getItemEntity != null) {
           //   // materialOrderPurController.categoryController.clear();
           //   materialOrderPurController.categoryController.text =
           //       materialOrderPurController
           //           .getItemEntity.value.materialitemslist![0].categoryname.toString();
           // }
         },
         items: materialOrderPurController.itemList!.map((e) {
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
         value: materialOrderPurController.companyisselected.value == ''
             ? null
             : materialOrderPurController.companyisselected.value,
         onChanged: (value) {
           materialOrderPurController.companyType(value.toString());
         },
         items: materialOrderPurController.companyList!.map((e) {
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
         value: materialOrderPurController.typeisSelected.value == ''
             ? null
             : materialOrderPurController.typeisSelected.value,
         onChanged: (value) {
           materialOrderPurController.typeType(value.toString());
         },
         items: materialOrderPurController.typeList!.map((e) {
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
