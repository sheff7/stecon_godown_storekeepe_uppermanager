import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';
import 'package:stecon_godown_storekeepe_uppermanager/CustomFont/SubHeading.dart';

import '../../../CustomFont/BoldText.dart';
import '../../../CustomFont/Header.dart';
import '../../../CustomFont/Heading.dart';
import '../../../CustomFont/NormalText.dart';
import '../../../CustomWidget/CustomBox1.dart';
import '../../../CustomWidget/CustomField.dart';
import '../Controller/AddUpperCountStatus2UPMController.dart';

class AddUpperCountStatus2UPM extends StatelessWidget {
  final String id;
  final String upmId;
  final String orderno;
  final String companyid;
  final String planNo;
  final String upperOrderId;
  AddUpperCountStatus2UPM({Key? key, required this.id, required this.upmId, required this.orderno, required this.companyid, required this.planNo, required this.upperOrderId}) : super(key: key);
  late final _controller=Get.put(AddUpperCountStatus2UPMController(umpId: upmId,id: id,orderno: orderno,plan: planNo,company: companyid,upperOrder: upperOrderId));
  DateTime date = DateTime(2022, 12, 24);
  String? ChooseStaffName;
  List StaffList = ['1367855', '8574758', '7758584'];




  @override
  Widget build(BuildContext context) {




    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Header(
          text: 'Add Upper Count Status',
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: 17,
          ),
          onPressed: () {
            // Navigator.of(context).pop();
          },
        ),
      ),
      body:
      Obx(()=>
          ListView(
            children: [
              SizedBox(
                height: 2.h,
              ),
              Container(
                color: Colors.white,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 3.h, vertical: 3.h),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          HeadingText(text:_controller.artnoName.toString()),
                        ],
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          NormalText(text: "Category : " + _controller.categoryName.toString()),
                        ],
                      ),
                      SizedBox(height: 2.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          NormalText(text: "Color :  " + _controller.colorName.toString()),
                        ],
                      ),
                      // SizedBox(height: 2.h),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     NormalText(text: "Size :  " + "1x5"),
                      //   ],
                      // ),
                      SizedBox(height: 2.h),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: SubHeadingText(text: 'Cutoff Date')),
                      Container(
                        padding:
                        EdgeInsets.symmetric(horizontal: 2.h, vertical: 0.5.h),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey[400]!)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(_controller.dateofcounting.value.toString()),
                            IconButton(
                              icon: Icon(Icons.calendar_month),
                              onPressed: () async {
                                DateTime selectedDate = (await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2021),
                                  lastDate: DateTime(2025),
                                ))!;

                                String? date = selectedDate.toString();
                                print(date.toString());

                                final DateFormat formatter = DateFormat('dd-MM-yyyy');
                                final DateFormat formatter1 = DateFormat('yyyy-MM-dd');
                                // String  date1=formatter.format(date);
                               String formatted = formatter.format(selectedDate);
                               _controller.dateofcounting.value=formatted;
                                // setState(() => date = newDate);
                              },
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 2.h),
                      // Container(
                      //   width: double.infinity,
                      //   decoration: BoxDecoration(
                      //     border: Border.all(
                      //       color: Colors.grey[400]!,
                      //       width: 1,
                      //     ),
                      //     borderRadius: BorderRadius.circular(5),
                      //   ),
                      //   child: DropdownButton(
                      //     value: ChooseStaffName,
                      //     borderRadius: BorderRadius.circular(10),
                      //     icon: Icon(Icons.arrow_drop_down),
                      //     iconSize: 29,
                      //     underline: SizedBox(),
                      //     isExpanded: true,
                      //     hint: Padding(
                      //       padding: const EdgeInsets.only(left: 10),
                      //       child: Text('Staff Name'),
                      //     ),
                      //     onChanged: (value) {},
                      //     items: StaffList.map((valueItem) {
                      //       return DropdownMenuItem(
                      //           value: valueItem,
                      //           child: Padding(
                      //             padding: const EdgeInsets.only(left: 10),
                      //             child: Text(valueItem),
                      //           ));
                      //     }).toList(),
                      //   ),
                      // ),
                      Align(
                        alignment: Alignment.centerLeft,
                          child: SubHeadingText(text: 'Select Staff')),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Wrap(
                          spacing: 6.0,
                          runSpacing: 6.0,
                          children: List<Widget>.generate(_controller.dynamicChips!.length, (int index) {
                            return FilterChip(
                              selected: _controller.filters!.contains(_controller.dynamicChips![index]),
                              label: Text(_controller.dynamicChips![index]), onSelected: (bool value) {
                                if(value==true){
                                  if(_controller.filters!.contains(_controller.dynamicChips![index])){

                                  }
                                  else{
                                    // _controller.filters!.add(_controller.dynamicChips![index]);

                                    _controller.filters!.add(_controller.dynamicChips![index]);
                                  }
                                }
                                else if(value==false){
                                  _controller.filters!.remove(_controller.dynamicChips![index]);
                                  print(_controller.filters!.value.toString());

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
                      SizedBox(
                        height: 2.h,
                      ),
                      CustomField(
                          controller: _controller.CommentsController, label: 'Add Comments')
                    ],
                  ),
                ),
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
                              'OC',
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
                              'DC',
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
                color: Colors.white,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 3.h),
                  padding: EdgeInsets.symmetric(vertical: 2.h),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                                height: 6.h,
                                width: double.infinity,
                                child: Center(
                                  child: BoldText(
                                    text: '1',
                                  ),
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                                height: 6.h,
                                width: double.infinity,
                                child: Center(
                                  child: BoldText(
                                    text:_controller.oc1.value.toString(),
                                  ),
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: CustomBox1(
                                controller: _controller.RC1Controller,
                                label: 'Enter',
                                Enabled: true,
                              )),
                          Expanded(
                              flex: 1,
                              child: CustomBox1(
                                controller: _controller.DC1Controller,
                                label: 'Enter ',
                                Enabled: true,
                              ))
                        ],
                      ),
                      Divider(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                                height: 6.h,
                                width: double.infinity,
                                child: Center(
                                  child: BoldText(
                                    text: '2',
                                  ),
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                                height: 6.h,
                                width: double.infinity,
                                child: Center(
                                  child: BoldText(
                                    text: _controller.oc2.value.toString(),
                                  ),
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: CustomBox1(
                                controller: _controller.RC2Controller,
                                label: 'Enter',
                                Enabled: true,
                              )),
                          Expanded(
                              flex: 1,
                              child: CustomBox1(
                                controller: _controller.DC2Controller,
                                label: 'Enter',
                                Enabled: true,
                              ))
                        ],
                      ),
                      Divider(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                                height: 6.h,
                                width: double.infinity,
                                child: Center(
                                  child: BoldText(
                                    text: '3',
                                  ),
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                                height: 6.h,
                                width: double.infinity,
                                child: Center(
                                  child: BoldText(
                                    text: _controller.oc3.value.toString(),
                                  ),
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: CustomBox1(
                                controller: _controller.RC3Controller,
                                label: 'Enter',
                                Enabled: true,
                              )),
                          Expanded(
                              flex: 1,
                              child: CustomBox1(
                                controller: _controller.DC3Controller,
                                label: 'Enter',
                                Enabled: true,
                              ))
                        ],
                      ),
                      Divider(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                                height: 6.h,
                                width: double.infinity,
                                child: Center(
                                  child: BoldText(
                                    text: '4',
                                  ),
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                                height: 6.h,
                                width: double.infinity,
                                child: Center(
                                  child: BoldText(
                                    text:_controller.oc4.value.toString(),
                                  ),
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: CustomBox1(
                                controller: _controller.RC4Controller,
                                label: 'Enter',
                                Enabled: true,
                              )),
                          Expanded(
                              flex: 1,
                              child: CustomBox1(
                                controller: _controller.DC4Controller,
                                label: 'Enter',
                                Enabled: true,
                              ))
                        ],
                      ),
                      Divider(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                                height: 6.h,
                                width: double.infinity,
                                child: Center(
                                  child: BoldText(
                                    text: '5',
                                  ),
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                                height: 6.h,
                                width: double.infinity,
                                child: Center(
                                  child: BoldText(
                                    text: _controller.oc5.value.toString(),
                                  ),
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: CustomBox1(
                                controller: _controller.RC5Controller,
                                label: 'Enter',
                                Enabled: true,
                              )),
                          Expanded(
                              flex: 1,
                              child: CustomBox1(
                                controller: _controller.DC5Controller,
                                label: 'Enter',
                                Enabled: true,
                              ))
                        ],
                      ),
                      Divider(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                                height: 6.h,
                                width: double.infinity,
                                child: Center(
                                  child: BoldText(
                                    text: '6',
                                  ),
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                                height: 6.h,
                                width: double.infinity,
                                child: Center(
                                  child: BoldText(
                                    text: _controller.oc6.value.toString(),
                                  ),
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: CustomBox1(
                                controller: _controller.RC6Controller,
                                label: 'Enter',
                                Enabled: true,
                              )),
                          Expanded(
                              flex: 1,
                              child: CustomBox1(
                                controller: _controller.DC6Controller,
                                label: 'Enter',
                                Enabled: true,
                              ))
                        ],
                      ),
                      Divider(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                                height: 6.h,
                                width: double.infinity,
                                child: Center(
                                  child: BoldText(
                                    text: '7',
                                  ),
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                                height: 6.h,
                                width: double.infinity,
                                child: Center(
                                  child: BoldText(
                                    text: _controller.oc7.value.toString(),
                                  ),
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: CustomBox1(
                                controller: _controller.RC7Controller,
                                label: 'Enter',
                                Enabled: true,
                              )),
                          Expanded(
                              flex: 1,
                              child: CustomBox1(
                                controller: _controller.DC7Controller,
                                label: 'Enter',
                                Enabled: true,
                              ))
                        ],
                      ),
                      Divider(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                                height: 6.h,
                                width: double.infinity,
                                child: Center(
                                  child: BoldText(
                                    text: '8',
                                  ),
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                                height: 6.h,
                                width: double.infinity,
                                child: Center(
                                  child: BoldText(
                                    text: _controller.oc8.value.toString(),
                                  ),
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: CustomBox1(
                                controller: _controller.RC8Controller,
                                label: 'Enter',
                                Enabled: true,
                              )),
                          Expanded(
                              flex: 1,
                              child: CustomBox1(
                                controller: _controller.DC8Controller,
                                label: 'Enter',
                                Enabled: true,
                              ))
                        ],
                      ),
                      Divider(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                                height: 6.h,
                                width: double.infinity,
                                child: Center(
                                  child: BoldText(
                                    text: '9',
                                  ),
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                                height: 6.h,
                                width: double.infinity,
                                child: Center(
                                  child: BoldText(
                                    text: _controller.oc9.value.toString(),
                                  ),
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: CustomBox1(
                                controller:_controller. RC9Controller,
                                label: 'Enter',
                                Enabled: true,
                              )),
                          Expanded(
                              flex: 1,
                              child: CustomBox1(
                                controller: _controller.DC9Controller,
                                label: 'Enter',
                                Enabled: true,
                              ))
                        ],
                      ),
                      Divider(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                                height: 6.h,
                                width: double.infinity,
                                child: Center(
                                  child: BoldText(
                                    text: '10',
                                  ),
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                                height: 6.h,
                                width: double.infinity,
                                child: Center(
                                  child: BoldText(
                                    text: _controller.oc10.value.toString(),
                                  ),
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: CustomBox1(
                                controller:_controller. RC10Controller,
                                label: 'Enter',
                                Enabled: true,
                              )),
                          Expanded(
                              flex: 1,
                              child: CustomBox1(
                                controller: _controller.DC10Controller,
                                label: 'Enter',
                                Enabled: true,
                              ))
                        ],
                      ),
                      Divider(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                                height: 6.h,
                                width: double.infinity,
                                child: Center(
                                  child: BoldText(
                                    text: '11',
                                  ),
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                                height: 6.h,
                                width: double.infinity,
                                child: Center(
                                  child: BoldText(
                                    text: _controller.oc11.value.toString(),
                                  ),
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: CustomBox1(
                                controller:_controller. RC11Controller,
                                label: 'Enter',
                                Enabled: true,
                              )),
                          Expanded(
                              flex: 1,
                              child: CustomBox1(
                                controller:_controller. DC11Controller,
                                label: 'Enter',
                                Enabled: true,
                              ))
                        ],
                      ),
                      Divider(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                                height: 6.h,
                                width: double.infinity,
                                child: Center(
                                  child: BoldText(
                                    text: '12',
                                  ),
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                                height: 6.h,
                                width: double.infinity,
                                child: Center(
                                  child: BoldText(
                                    text: _controller.oc12.value.toString(),
                                  ),
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: CustomBox1(
                                controller:_controller. RC12Controller,
                                label: 'Enter',
                                Enabled: true,
                              )),
                          Expanded(
                              flex: 1,
                              child: CustomBox1(
                                controller: _controller.DC12Controller,
                                label: 'Enter',
                                Enabled: true,
                              ))
                        ],
                      ),
                      Divider(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                                height: 6.h,
                                width: double.infinity,
                                child: Center(
                                  child: BoldText(
                                    text: '12',
                                  ),
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.fromLTRB(1.h, 2.h, 1.h, 2.h),
                                height: 6.h,
                                width: double.infinity,
                                child: Center(
                                  child: BoldText(
                                    text: _controller.oc13.value.toString(),
                                  ),
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: CustomBox1(
                                controller: _controller.RC13Controller,
                                label: 'Enter',
                                Enabled: true,
                              )),
                          Expanded(
                              flex: 1,
                              child: CustomBox1(
                                controller: _controller.DC13Controller,
                                label: 'Enter',
                                Enabled: true,
                              ))
                        ],
                      )

                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 2.h,
                ),
                child: SizedBox(
                  width: double.infinity,
                  height: 6.h,
                  child: ElevatedButton(
                    onPressed: () {
                      List<Map<String,dynamic>>rcList=[];
                      Map<String,dynamic>rcJson={
                        "artnumber":_controller.orderNoEntity.value.purchaseproductlist![0].artno.toString(),
                        "s1":_controller.RC1Controller.text.toString(),
                        "s2":_controller.RC2Controller.text.toString(),
                        "s3":_controller.RC3Controller.text.toString(),
                        "s4":_controller.RC4Controller.text.toString(),
                        "s5":_controller.RC5Controller.text.toString(),
                        "s6":_controller.RC6Controller.text.toString(),
                        "s7":_controller.RC7Controller.text.toString(),
                        "s8":_controller.RC8Controller.text.toString(),
                        "s9":_controller.RC9Controller.text.toString(),
                        "s10":_controller.RC10Controller.text.toString(),
                        "s11":_controller.RC11Controller.text.toString(),
                        "s12":_controller.RC12Controller.text.toString(),
                        "s13":_controller.RC13Controller.text.toString(),
                      };
                      rcList.add(rcJson);
                      List<Map<String,dynamic>>dcList=[];
                      Map<String,dynamic>dcJson={
                        "artnumber":_controller.orderNoEntity.value.purchaseproductlist![0].artno.toString(),
                        "s1":_controller.DC1Controller.text.toString(),
                        "s2":_controller.DC2Controller.text.toString(),
                        "s3":_controller.DC3Controller.text.toString(),
                        "s4":_controller.DC4Controller.text.toString(),
                        "s5":_controller.DC5Controller.text.toString(),
                        "s6":_controller.DC6Controller.text.toString(),
                        "s7":_controller.DC7Controller.text.toString(),
                        "s8":_controller.DC8Controller.text.toString(),
                        "s9":_controller.DC9Controller.text.toString(),
                        "s10":_controller.DC10Controller.text.toString(),
                        "s11":_controller.DC11Controller.text.toString(),
                        "s12":_controller.DC12Controller.text.toString(),
                        "s13":_controller.DC13Controller.text.toString(),
                      };
                      dcList.add(dcJson);
                      if(_controller.rcId.value=='' &&_controller.dcId.value==''){
                        _controller.addUpperCount(rcList, dcList, _controller.CommentsController.text.toString());
                      }
                      else if(_controller.rcId.value!='' && _controller.dcId.value!=''){
                        _controller.editUpperCount(rcList, dcList, _controller.CommentsController.text.toString());
                      }

                    },
                    child: Text(
                      "Submit",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFEC4E52),
                        textStyle: TextStyle(
                            color: Colors.red,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                        side: BorderSide(color: Colors.red)),
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              )
            ],
          ),
      )
    );
  }
}
