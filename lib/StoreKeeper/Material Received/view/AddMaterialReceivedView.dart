import 'package:flutter/MATERIAL.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../CustomFont/Header.dart';
import '../../../CustomWidget/CustomField.dart';
import '../../../CustomWidget/CustomFieldNonEditable.dart';

class AddMaterialRecevied extends StatelessWidget {
   AddMaterialRecevied({Key? key}) : super(key: key);
  final itemController = TextEditingController();
   final categoryController = TextEditingController();
   final companyController = TextEditingController();
   final typeController = TextEditingController();
   final ocController = TextEditingController();
   final rcController = TextEditingController();
   final dcController = TextEditingController();
   final noteController = TextEditingController();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7FBFC),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Header(
          text: 'Add Material Received',
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: 17,
          ),
          onPressed: () {
            Get.back();
          },
        ),

      ),
      body:  ListView(
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
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey[400]!,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child:SizedBox()
                        // DropdownButton(
                        //   borderRadius: BorderRadius.circular(10),
                        //   icon: Icon(Icons.arrow_drop_down),
                        //   iconSize: 29,
                        //   underline: SizedBox(),
                        //   isExpanded: true,
                        //   hint: Padding(
                        //     padding: const EdgeInsets.only(left: 10),
                        //     child: Text('Select Order'),
                        //   ),
                        //   value: _controller.orderisselected.value == ''
                        //       ? null
                        //       : _controller.orderisselected.value,
                        //   onChanged: (value) {
                        //     _controller.orderType(value.toString());
                        //   },
                        //   items: _controller.orderList!.map((e) {
                        //     return DropdownMenuItem(
                        //         value: e,
                        //         child: Padding(
                        //           padding: const EdgeInsets.only(left: 10),
                        //           child: Text(e.toString()),
                        //         ));
                        //   }).toList(),
                        // ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      CustomFieldNonEditable(controller: itemController,label: "Item",),
                      SizedBox(
                        height: 4.h,
                      ),
                      CustomFieldNonEditable(controller: categoryController,label: "Category",),
                      SizedBox(
                        height: 4.h,
                      ),
                      CustomFieldNonEditable(controller: companyController,label: "Company",),
                      SizedBox(
                        height: 4.h,
                      ),
                      CustomFieldNonEditable(controller: typeController,label: "Type",),
                      SizedBox(
                        height: 4.h,
                      ),
                      CustomFieldNonEditable(controller: ocController,label: "OC",),
                      SizedBox(
                        height: 4.h,
                      ),
                      CustomField(controller: rcController,label: "RC",),
                      SizedBox(
                        height: 4.h,
                      ),
                      CustomField(controller: dcController,label: "DC",),
                      SizedBox(
                        height: 4.h,
                      ),
                      CustomField(controller: noteController,label: "Note",),
                      SizedBox(
                        height: 4.h,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 7.h,
                        child: ElevatedButton(
                          onPressed: () {
                            // _controller.addCount();

                          },
                          child: Text(
                            "Submit",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: const Color(0xFFEC4E52),
                              textStyle: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold)),
                        ),
                      )
                    ],
                  ),
                ),
              )
        ],
      ),
    );
  }
}
