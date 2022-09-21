import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/PendingOrderUPM.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/ViewStockUPM.dart';
import '../CustomFont/Header.dart';
import '../CustomFont/NormalText.dart';
import '../CustomFont/SubHeading.dart';
import '../CustomWidget/CustomField.dart';


class CreatePlanUPM extends StatefulWidget {
  CreatePlanUPM({Key? key}) : super(key: key);

  @override
  _CreatePlanUPMState createState() => _CreatePlanUPMState();
}

class _CreatePlanUPMState extends State<CreatePlanUPM> {
  String? ChooseArtNumber;
  List ArtBumberList = [
    '2115-BROWN-GENTS',
    '3115-BROWN-GENTS',
    '4115-BROWN-GENTS'
  ];

  String? ChooseCategory;
  List CategoryrList = ['GENTS', 'LADIES', 'KIDS'];

  String? ChooseColor;
  List ColorList = ['Brown', 'Grey', 'Black'];

  String? ChooseSize;
  List SizeList = ['1', '2', '3'];
  DateTime date = DateTime(2022, 12, 24);
  final NoteController = TextEditingController();

  final TotalController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xFFF7FBFC),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Header(
          text: 'Create Plan',
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
                  InkWell(
                    onTap: () {
                      Get.to(ViewStockUPM());
                    },
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SubHeadingText(text: 'View Stock'),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.grey[300],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    children: [
                      NormalText(text: 'Plan no : ' + '567687 857688'),
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
                      value: ChooseArtNumber,
                      borderRadius: BorderRadius.circular(10),
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 29,
                      underline: SizedBox(),
                      isExpanded: true,
                      hint: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text('Art Number'),
                      ),
                      onChanged: (value) {},
                      items: ArtBumberList.map((valueItem) {
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
                      value: ChooseColor,
                      borderRadius: BorderRadius.circular(10),
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 29,
                      underline: SizedBox(),
                      isExpanded: true,
                      hint: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text('Color'),
                      ),
                      onChanged: (value) {},
                      items: ColorList.map((valueItem) {
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
                      value: ChooseSize,
                      borderRadius: BorderRadius.circular(10),
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 29,
                      underline: SizedBox(),
                      isExpanded: true,
                      hint: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text('Size'),
                      ),
                      onChanged: (value) {},
                      items: SizeList?.map((valueItem) {
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
                  CustomField(controller: NoteController, label: 'Note'),
                  SizedBox(
                    height: 4.h,
                  ),
                  CustomField(controller: TotalController, label: 'Total'),
                  SizedBox(
                    height: 4.h,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 7.h,
                    child: ElevatedButton(
                      onPressed: () {
                        openDialog();
                      },
                      child: Text(
                        "Continue with Order",
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

  Future openDialog() => showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          'Pending Order  alredy exist in this Art number. Do you want to proceed?',
          style: TextStyle(fontSize: 15),
          textAlign: TextAlign.center,
        ),
        content: SizedBox(
          width: double.infinity,
          height: 5.h,
          child: ElevatedButton(
            onPressed: () {
              openDialog();
            },
            child: Text(
              "Continue with Order",
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            style: ElevatedButton.styleFrom(
                primary: const Color(0xFFEC4E52),
                textStyle:
                TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          ),
        ),
        contentPadding: EdgeInsets.only(top: 4.h, left: 3.h, right: 3.h),
        actionsAlignment: MainAxisAlignment.center,
        // actionsPadding: EdgeInsets.only(bottom: 1.h),
        actions: [
          TextButton(
            child: Text('View Pending Order', style: TextStyle(color: Colors.red),),
            onPressed: () {
              Get.to(PendingOrderUPM());
            },
          )
        ],
      ));
}
