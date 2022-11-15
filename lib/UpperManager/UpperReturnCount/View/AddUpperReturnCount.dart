import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../CustomFont/Header.dart';
import '../../../CustomFont/SubHeading.dart';
import '../../../CustomWidget/CustomFieldNonEditable.dart';
import '../Controller/AddUpperReturnCountController.dart';

class AddUpperReturnCount extends StatelessWidget {
  AddUpperReturnCount({Key? key}) : super(key: key);
  late final _controller = Get.put(AddUpperReturnCountController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF7FBFC),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 0,
          title: Header(
            text: 'Upper Return Count',
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              size: 17,
            ),
            onPressed: () {},
          ),
        ),
        body: Obx(() => ListView(
              children: [
                SizedBox(
                  height: 2.h,
                ),
                Container(
                  // color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 2.h,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2.h, right: 2.h),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey[200]!,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: DropdownButton(
                          value: _controller!.comapanySelected.value == ''
                              ? null
                              : _controller!.comapanySelected.value,
                          borderRadius: BorderRadius.circular(10),
                          icon: Icon(Icons.arrow_drop_down),
                          iconSize: 29,
                          underline: SizedBox(),
                          isExpanded: true,
                          hint: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text('Upper Production Manager'),
                          ),
                          onChanged: (value) {
                            _controller.compnayType(value.toString());
                          },
                          items: _controller.companyList.map((valueItem) {
                            return DropdownMenuItem(
                                value: valueItem,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(valueItem),
                                ));
                          }).toList(),
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2.h, right: 2.h),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey[200]!,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: DropdownButton(
                          value: _controller!.orderSelected.value == ''
                              ? null
                              : _controller!.orderSelected.value,
                          borderRadius: BorderRadius.circular(10),
                          icon: Icon(Icons.arrow_drop_down),
                          iconSize: 29,
                          underline: SizedBox(),
                          isExpanded: true,
                          hint: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text('Upper Order'),
                          ),
                          onChanged: (value) {
                            _controller.orderType(value.toString());
                          },
                          items: _controller.orderList.map((valueItem) {
                            return DropdownMenuItem(
                                value: valueItem,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(valueItem),
                                ));
                          }).toList(),
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2.h, right: 2.h),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey[200]!,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: DropdownButton(
                          value: _controller!.planSelected.value == ''
                              ? null
                              : _controller!.planSelected.value,
                          borderRadius: BorderRadius.circular(10),
                          icon: Icon(Icons.arrow_drop_down),
                          iconSize: 29,
                          underline: SizedBox(),
                          isExpanded: true,
                          hint: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text('Upper Plan'),
                          ),
                          onChanged: (value) {
                            _controller.planType(value.toString());
                          },
                          items: _controller.planList.map((valueItem) {
                            return DropdownMenuItem(
                                value: valueItem,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(valueItem),
                                ));
                          }).toList(),
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2.h, right: 2.h),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey[200]!,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: DropdownButton(
                          value: _controller!.mrSelected.value == ''
                              ? null
                              : _controller!.mrSelected.value,
                          borderRadius: BorderRadius.circular(10),
                          icon: Icon(Icons.arrow_drop_down),
                          iconSize: 29,
                          underline: SizedBox(),
                          isExpanded: true,
                          hint: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text('Mr No'),
                          ),
                          onChanged: (value) {
                            _controller.mrType(value.toString());
                          },
                          items: _controller.mrList.map((valueItem) {
                            return DropdownMenuItem(
                                value: valueItem,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(valueItem),
                                ));
                          }).toList(),
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2.h, right: 2.h),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey[200]!,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: DropdownButton(
                          value: _controller!.typeSelected.value == ''
                              ? null
                              : _controller!.typeSelected.value,
                          borderRadius: BorderRadius.circular(10),
                          icon: Icon(Icons.arrow_drop_down),
                          iconSize: 29,
                          underline: SizedBox(),
                          isExpanded: true,
                          hint: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text('Type'),
                          ),
                          onChanged: (value) {
                            _controller.typeTye(value.toString());
                          },
                          items: _controller.typeList.map((valueItem) {
                            return DropdownMenuItem(
                                value: valueItem,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(valueItem),
                                ));
                          }).toList(),
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 2.h, right: 2.h),
                          child: CustomFieldNonEditable(
                            controller: _controller.planNoController,
                            label: " Company Plan No",
                          )),
                      SizedBox(
                        height: 2.h,
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 2.h,right: 2.h),
                          child: CustomFieldNonEditable(
                        controller: _controller.artnoController,
                        label: "Art Number",
                      )),
                      SizedBox(
                        height: 4.h,
                      ),

                      Container(
                        margin: EdgeInsets.only(left: 2.h, right: 2.h),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: SubHeadingText(text: 'Select Staff')),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2.h, right: 2.h),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Wrap(
                            spacing: 6.0,
                            runSpacing: 6.0,
                            children: List<Widget>.generate(
                                _controller.dynamicChips!.length, (int index) {
                              return FilterChip(
                                selected: _controller.filters!
                                    .contains(_controller.dynamicChips![index]),
                                label: Text(_controller.dynamicChips![index]),
                                onSelected: (bool value) {
                                  if (value == true) {
                                    if (_controller.filters!.contains(
                                        _controller.dynamicChips![index])) {
                                    } else {
                                      // _controller.filters!.add(_controller.dynamicChips![index]);

                                      _controller.filters!.add(
                                          _controller.dynamicChips![index]);
                                    }
                                  } else if (value == false) {
                                    _controller.filters!.remove(
                                        _controller.dynamicChips![index]);
                                    print(
                                        _controller.filters!.value.toString());
                                  }
                                },
                                // onDeleted: () {
                                //   setState(() {
                                //     _dynamicChips.removeAt(index);
                                //   });
                                // },
                              );
                            }),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Container(
                        color: Colors.grey[200],
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 3.h),
                          padding: EdgeInsets.symmetric(vertical: 2.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Column(
                                  children: [
                                    Text(
                                      'Size',
                                      style: GoogleFonts.radioCanada(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Column(
                                  children: [
                                    Text(
                                      'DC',
                                      style: GoogleFonts.radioCanada(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Column(
                                  children: [
                                    Text(
                                      'RC',
                                      style: GoogleFonts.radioCanada(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Column(
                                  children: [
                                    Text(
                                      _controller.typeSelected.value,
                                      style: GoogleFonts.radioCanada(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                              // BoldText(text: 'Size'),
                              // BoldText(text: 'OC'),
                              // BoldText(text: 'RC'),
                              // BoldText(text: 'DC'),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2.h, right: 2.h),
                        child: ListView(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          children: _controller.sizeListListView,
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2.h, right: 2.h),
                        child: SizedBox(
                          width: double.infinity,
                          height: 5.h,
                          child: ElevatedButton(
                            onPressed: () {
                              _controller.addCount();

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
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      )


                      // Container(
                      //   width: double.infinity,
                      //   decoration: BoxDecoration(
                      //     border: Border.all(
                      //       color: Colors.grey[400]!,
                      //       width: 1,
                      //     ),
                      //     borderRadius: BorderRadius.circular(5),
                      //   ),
                      //   child:
                      //   DropdownButton(
                      //     borderRadius: BorderRadius.circular(10),
                      //     icon: Icon(Icons.arrow_drop_down),
                      //     iconSize: 29,
                      //     underline: SizedBox(),
                      //     isExpanded: true,
                      //     hint: Padding(
                      //       padding: const EdgeInsets.only(left: 10),
                      //       child: Text('Select Order'),
                      //     ),
                      //     value: _controller.orderisselected.value == ''
                      //         ? null
                      //         : _controller.orderisselected.value,
                      //     onChanged: (value) {
                      //       _controller.orderType(value.toString());
                      //     },
                      //     items: _controller.orderList!.map((e) {
                      //       return DropdownMenuItem(
                      //           value: e,
                      //           child: Padding(
                      //             padding: const EdgeInsets.only(left: 10),
                      //             child: Text(e.toString()),
                      //           ));
                      //     }).toList(),
                      //   ),
                      // ),
                      // SizedBox(height: 4.h,),
                      // Container(
                      //   width: double.infinity,
                      //   decoration: BoxDecoration(
                      //     border: Border.all(
                      //       color: Colors.grey[400]!,
                      //       width: 1,
                      //     ),
                      //     borderRadius: BorderRadius.circular(5),
                      //   ),
                      //   child:
                      //   DropdownButton(
                      //     borderRadius: BorderRadius.circular(10),
                      //     icon: Icon(Icons.arrow_drop_down),
                      //     iconSize: 29,
                      //     underline: SizedBox(),
                      //     isExpanded: true,
                      //     hint: Padding(
                      //       padding: const EdgeInsets.only(left: 10),
                      //       child: Text('Select Order'),
                      //     ),
                      //     value: _controller.orderisselected.value == ''
                      //         ? null
                      //         : _controller.orderisselected.value,
                      //     onChanged: (value) {
                      //       _controller.orderType(value.toString());
                      //     },
                      //     items: _controller.orderList!.map((e) {
                      //       return DropdownMenuItem(
                      //           value: e,
                      //           child: Padding(
                      //             padding: const EdgeInsets.only(left: 10),
                      //             child: Text(e.toString()),
                      //           ));
                      //     }).toList(),
                      //   ),
                      // ),
                      // SizedBox(height: 4.h,),
                      // CustomFieldNonEditable(controller: companyPlanNo,label: "Company Plan No",),
                      // Container(
                      //   width: double.infinity,
                      //   decoration: BoxDecoration(
                      //     border: Border.all(
                      //       color: Colors.grey[400]!,
                      //       width: 1,
                      //     ),
                      //     borderRadius: BorderRadius.circular(5),
                      //   ),
                      //   child:
                      //   DropdownButton(
                      //     borderRadius: BorderRadius.circular(10),
                      //     icon: Icon(Icons.arrow_drop_down),
                      //     iconSize: 29,
                      //     underline: SizedBox(),
                      //     isExpanded: true,
                      //     hint: Padding(
                      //       padding: const EdgeInsets.only(left: 10),
                      //       child: Text('Select Order'),
                      //     ),
                      //     value: _controller.orderisselected.value == ''
                      //         ? null
                      //         : _controller.orderisselected.value,
                      //     onChanged: (value) {
                      //       _controller.orderType(value.toString());
                      //     },
                      //     items: _controller.orderList!.map((e) {
                      //       return DropdownMenuItem(
                      //           value: e,
                      //           child: Padding(
                      //             padding: const EdgeInsets.only(left: 10),
                      //             child: Text(e.toString()),
                      //           ));
                      //     }).toList(),
                      //   ),
                      // ),
                    ],
                  ),
                )
              ],
            )));
  }
}
