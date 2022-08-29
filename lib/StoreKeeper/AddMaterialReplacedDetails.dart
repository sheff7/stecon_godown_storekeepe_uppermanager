import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../CustomFont/Header.dart';
import '../CustomFont/NormalText.dart';
import '../CustomWidget/CustomField.dart';

class AddMaterialRepalcedDetails extends StatefulWidget {
  const AddMaterialRepalcedDetails({Key? key}) : super(key: key);

  @override
  State<AddMaterialRepalcedDetails> createState() =>
      _AddMaterialRepalcedDetailsState();
}

class _AddMaterialRepalcedDetailsState
    extends State<AddMaterialRepalcedDetails> {
  final commentController = TextEditingController();



  String? ChooseIssueNo;
  List IssueList = ['52565', '5588855', '444558'];

  String? ChooseDamageNo;
  List DamageList = ['52565', '5588855', '444558'];

  String? Department;
  List DepartmentList = [
    '2115-BROWN-GENTS',
    '3115-BROWN-GENTS',
    '4115-BROWN-GENTS'
  ];

  String? ChooseCategory;
  List CategoryrList = ['GENTS', 'LADIES', 'KIDS'];

  String? ChooseItem;
  List ItemList = ['Brown', 'Grey', 'Black'];

  String? ChooseBrand;
  List BrandList = ['LP', 'ARROW', 'Lee'];

  String? ChooseQuantity;
  List QuantityList = ['1', '2', '3'];

  String? ChooseType;
  List TypeList = ['1', '2', '3'];

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
                    ),
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
                        value:ChooseIssueNo,
                        borderRadius: BorderRadius.circular(10),
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 29,
                        underline: SizedBox(),
                        isExpanded: true,
                        hint: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text('Issue No.'),
                        ),
                        onChanged: (value) {},
                        items: IssueList.map((valueItem) {
                          return DropdownMenuItem(
                              value: valueItem,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(valueItem),
                              ));
                        }).toList(),
                      ),
                    ),
                    SizedBox(height: 4.h,),

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
                        value: ChooseDamageNo,
                        borderRadius: BorderRadius.circular(10),
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 29,
                        underline: SizedBox(),
                        isExpanded: true,
                        hint: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text('Damage No.'),
                        ),
                        onChanged: (value) {},
                        items: DamageList.map((valueItem) {
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
                      height: 4.h,
                    ),

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
                        value: Department,
                        borderRadius: BorderRadius.circular(10),
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 29,
                        underline: SizedBox(),
                        isExpanded: true,
                        hint: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text('Department'),
                        ),
                        onChanged: (value) {},
                        items: DepartmentList.map((valueItem) {
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
                      height: 4.h,
                    ),
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
                        value: ChooseCategory,
                        borderRadius: BorderRadius.circular(10),
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 29,
                        underline: SizedBox(),
                        isExpanded: true,
                        hint: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text('Category'),
                        ),
                        onChanged: (value) {},
                        items: CategoryrList.map((valueItem) {
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
                      height: 4.h,
                    ),
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
                        value: ChooseItem,
                        borderRadius: BorderRadius.circular(10),
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 29,
                        underline: SizedBox(),
                        isExpanded: true,
                        hint: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text('Item'),
                        ),
                        onChanged: (value) {},
                        items: ItemList.map((valueItem) {
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
                      height: 4.h,
                    ),
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
                        value: ChooseBrand,
                        borderRadius: BorderRadius.circular(10),
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 29,
                        underline: SizedBox(),
                        isExpanded: true,
                        hint: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text('Brand'),
                        ),
                        onChanged: (value) {},
                        items: BrandList.map((valueItem) {
                          return DropdownMenuItem(
                              value: valueItem,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(valueItem),
                              ));
                        }).toList(),
                      ),
                    ),

                    // Container(
                    //   padding:
                    //   EdgeInsets.symmetric(horizontal: 2.h, vertical: 0.5.h),
                    //   decoration: BoxDecoration(
                    //       border: Border.all(color: Colors.grey[400]!)),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //     children: [
                    //       Text('${date.year}/${date.month}/${date.day}'),
                    //       IconButton(
                    //         icon: Icon(Icons.calendar_month),
                    //         onPressed: () async {
                    //           DateTime? newDate = await showDatePicker(
                    //               context: context,
                    //               initialDate: date,
                    //               firstDate: DateTime(1900),
                    //               lastDate: DateTime(2100));
                    //           if (newDate == null) return;
                    //           setState(() => date = newDate);
                    //         },
                    //       )
                    //     ],
                    //   ),
                    // ),
                    SizedBox(
                      height: 4.h,
                    ),
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
                        value: ChooseQuantity,
                        borderRadius: BorderRadius.circular(10),
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 29,
                        underline: SizedBox(),
                        isExpanded: true,
                        hint: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text('Quantity'),
                        ),
                        onChanged: (value) {},
                        items: QuantityList?.map((valueItem) {
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
                      height: 4.h,
                    ),
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
                        value: ChooseType,
                        borderRadius: BorderRadius.circular(10),
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 29,
                        underline: SizedBox(),
                        isExpanded: true,
                        hint: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text('Type'),
                        ),
                        onChanged: (value) {},
                        items: TypeList?.map((valueItem) {
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
                      height: 4.h,
                    ),

                    CustomField(
                        controller: commentController, label: 'Comment'),
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
            onPressed: () {},
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
}
