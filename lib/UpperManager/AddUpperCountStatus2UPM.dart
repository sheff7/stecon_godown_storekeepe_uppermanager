import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../CustomFont/BoldText.dart';
import '../CustomFont/Header.dart';
import '../CustomFont/Heading.dart';
import '../CustomFont/NormalText.dart';
import '../CustomWidget/CustomBox1.dart';
import '../CustomWidget/CustomField.dart';

class AddUpperCountStatus2UPM extends StatefulWidget {
  AddUpperCountStatus2UPM({Key? key}) : super(key: key);

  @override
  State<AddUpperCountStatus2UPM> createState() => _AddUpperCountStatus2UPMState();
}

class _AddUpperCountStatus2UPMState extends State<AddUpperCountStatus2UPM> {
  DateTime date = DateTime(2022, 12, 24);

  @override
  Widget build(BuildContext context) {
    String? ChooseStaffName;
    List StaffList = ['1367855', '8574758', '7758584'];

    final CommentsController = TextEditingController();
    final RC1Controller = TextEditingController();
    final RC2Controller = TextEditingController();
    final RC3Controller = TextEditingController();
    final RC4Controller = TextEditingController();
    final RC5Controller = TextEditingController();
    final RC6Controller = TextEditingController();
    final RC7Controller = TextEditingController();
    final RC8Controller = TextEditingController();
    final RC9Controller = TextEditingController();
    final RC10Controller = TextEditingController();
    final RC11Controller = TextEditingController();
    final RC12Controller = TextEditingController();

    final DC1Controller = TextEditingController();
    final DC2Controller = TextEditingController();
    final DC3Controller = TextEditingController();
    final DC4Controller = TextEditingController();
    final DC5Controller = TextEditingController();
    final DC6Controller = TextEditingController();
    final DC7Controller = TextEditingController();
    final DC8Controller = TextEditingController();
    final DC9Controller = TextEditingController();
    final DC10Controller = TextEditingController();
    final DC11Controller = TextEditingController();
    final DC12Controller = TextEditingController();

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
      body: ListView(
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
                      HeadingText(text: '2115-BROWN-GENTS'),
                    ],
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      NormalText(text: "Category : " + 'Gents'),
                    ],
                  ),
                  SizedBox(height: 2.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      NormalText(text: "Color :  " + "Black"),
                    ],
                  ),
                  SizedBox(height: 2.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      NormalText(text: "Size :  " + "1x5"),
                    ],
                  ),
                  SizedBox(height: 2.h),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 2.h, vertical: 0.5.h),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[400]!)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('${date.year}/${date.month}/${date.day}'),
                        IconButton(
                          icon: Icon(Icons.calendar_month),
                          onPressed: () async {
                            DateTime? newDate = await showDatePicker(
                                context: context,
                                initialDate: date,
                                firstDate: DateTime(1900),
                                lastDate: DateTime(2100));
                            if (newDate == null) return;
                            setState(() => date = newDate);
                          },
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey[400]!,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: DropdownButton(
                      value: ChooseStaffName,
                      borderRadius: BorderRadius.circular(10),
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 29,
                      underline: SizedBox(),
                      isExpanded: true,
                      hint: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text('Staff Name'),
                      ),
                      onChanged: (value) {},
                      items: StaffList.map((valueItem) {
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
                  CustomField(
                      controller: CommentsController, label: 'Add Comments')
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
                                text: '50',
                              ),
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: CustomBox1(
                            controller: RC1Controller,
                            label: 'Enter',
                            Enabled: true,
                          )),
                      Expanded(
                          flex: 1,
                          child: CustomBox1(
                            controller: DC1Controller,
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
                                text: '50',
                              ),
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: CustomBox1(
                            controller: RC2Controller,
                            label: 'Enter',
                            Enabled: true,
                          )),
                      Expanded(
                          flex: 1,
                          child: CustomBox1(
                            controller: DC2Controller,
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
                                text: '50',
                              ),
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: CustomBox1(
                            controller: RC3Controller,
                            label: 'Enter',
                            Enabled: true,
                          )),
                      Expanded(
                          flex: 1,
                          child: CustomBox1(
                            controller: DC3Controller,
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
                                text: '50',
                              ),
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: CustomBox1(
                            controller: RC4Controller,
                            label: 'Enter',
                            Enabled: true,
                          )),
                      Expanded(
                          flex: 1,
                          child: CustomBox1(
                            controller: DC4Controller,
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
                                text: '50',
                              ),
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: CustomBox1(
                            controller: RC5Controller,
                            label: 'Enter',
                            Enabled: true,
                          )),
                      Expanded(
                          flex: 1,
                          child: CustomBox1(
                            controller: DC5Controller,
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
                                text: '50',
                              ),
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: CustomBox1(
                            controller: RC6Controller,
                            label: 'Enter',
                            Enabled: true,
                          )),
                      Expanded(
                          flex: 1,
                          child: CustomBox1(
                            controller: DC6Controller,
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
                                text: '50',
                              ),
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: CustomBox1(
                            controller: RC7Controller,
                            label: 'Enter',
                            Enabled: true,
                          )),
                      Expanded(
                          flex: 1,
                          child: CustomBox1(
                            controller: DC7Controller,
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
                                text: '50',
                              ),
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: CustomBox1(
                            controller: RC8Controller,
                            label: 'Enter',
                            Enabled: true,
                          )),
                      Expanded(
                          flex: 1,
                          child: CustomBox1(
                            controller: DC8Controller,
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
                                text: '50',
                              ),
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: CustomBox1(
                            controller: RC9Controller,
                            label: 'Enter',
                            Enabled: true,
                          )),
                      Expanded(
                          flex: 1,
                          child: CustomBox1(
                            controller: DC9Controller,
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
                                text: '50',
                              ),
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: CustomBox1(
                            controller: RC10Controller,
                            label: 'Enter',
                            Enabled: true,
                          )),
                      Expanded(
                          flex: 1,
                          child: CustomBox1(
                            controller: DC10Controller,
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
                                text: '50',
                              ),
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: CustomBox1(
                            controller: RC11Controller,
                            label: 'Enter',
                            Enabled: true,
                          )),
                      Expanded(
                          flex: 1,
                          child: CustomBox1(
                            controller: DC11Controller,
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
                                text: '50',
                              ),
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: CustomBox1(
                            controller: RC12Controller,
                            label: 'Enter',
                            Enabled: true,
                          )),
                      Expanded(
                          flex: 1,
                          child: CustomBox1(
                            controller: DC12Controller,
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
                onPressed: () {},
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
    );
  }
}
