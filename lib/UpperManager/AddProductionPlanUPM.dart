import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/CreatePlanUPM.dart';

import '../CustomFont/Header.dart';
import '../CustomFont/NormalText.dart';
import '../CustomFont/Status.dart';
import '../CustomFont/SubHeading.dart';
import '../CustomWidget/CustomBox.dart';

class AddProductionPlanUPM extends StatelessWidget {
  const AddProductionPlanUPM({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final NoteEditingController = TextEditingController();
    String? ChooseCompanyName;
    List CompanyList = ['Codsair', 'infosys', 'Wipro'];
    final size1controller = TextEditingController();
    final size2controller = TextEditingController();
    final size3controller = TextEditingController();
    final size4controller = TextEditingController();
    final size5controller = TextEditingController();
    final size6controller = TextEditingController();
    final size7controller = TextEditingController();
    final size8controller = TextEditingController();
    final size9controller = TextEditingController();
    final size10controller = TextEditingController();
    final size11controller = TextEditingController();
    final size12controller = TextEditingController();
    final size13controller = TextEditingController();
    return Scaffold(
      backgroundColor: const Color(0xFFF7FBFC),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Header(
          text: 'Add Production Plan',
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
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 2.h,
              ),
              Container(
                color: Colors.white,
                child: Container(
                  margin: EdgeInsets.fromLTRB(3.h, 3.h, 3.h, 3.h),
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          NormalText(text: "Order no :  " + "546757 7565"),
                        ],
                      ),
                      SizedBox(height: 1.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          NormalText(text: "Plan no :  " + "546757 7565"),
                        ],
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              width: 20.h,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey[200]!,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: DropdownButton(
                                value: ChooseCompanyName,
                                borderRadius: BorderRadius.circular(10),
                                icon: Icon(Icons.arrow_drop_down),
                                iconSize: 29,
                                underline: SizedBox(),
                                isExpanded: true,
                                hint: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text('Company name'),
                                ),
                                onChanged: (value) {},
                                items: CompanyList.map((valueItem) {
                                  return DropdownMenuItem(
                                      value: valueItem,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Text(valueItem),
                                      ));
                                }).toList(),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 2.h,
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                                // margin: EdgeInsets.fromLTRB(5.h, 3.h, 5.h, 1.h),
                                height: 6.h,
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: ()  {
                                    Get.to(CreatePlanUPM());
                                  },
                                  child: Text(
                                    "Create Plan",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      primary: const Color(0xFFEC4E52),
                                      textStyle: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold)),
                                )),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0.3.h, 3.h, 0.3.h, 0.h),
                        child: TextFormField(
                          // readOnly: true,
                          controller: NoteEditingController,
                          style: GoogleFonts.roboto(),
                          decoration: InputDecoration(
                              labelText: 'Add Note',
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 2.h, horizontal: 1.8.h),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                      width: 1,
                                      style: BorderStyle.none,
                                      color: Color(0xFFEEEEEE))),
                              filled: true,
                              fillColor: Colors.white),
                        ),
                      ),
                      SizedBox(height: 1.h),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.white,
                    child: ListView.separated(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 8,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Material(
                              borderRadius: BorderRadius.circular(0),
                              elevation: 0,
                              // shadowColor: Colors.grey,
                              child: Container(
                                margin: EdgeInsets.fromLTRB(1.h, 0.h, 1.h, 0.h),
                                color: Colors.white,
                                child: ExpansionTile(
                                  title: Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(0.h, 2.h, 0.h, 2.h),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: 1.5.h, bottom: 1.h),
                                          child: Text(
                                            "Plan No - 1",
                                            style: GoogleFonts.radioCanada(
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black),
                                          ),
                                        ),
                                        NormalText(text: '2115-Gents-Black'),
                                        SizedBox(
                                          height: 1.h,
                                        ),
                                      ],
                                    ),
                                  ),
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                            margin: EdgeInsets.fromLTRB(
                                                0.h, 0.h, 0.h, 0.h),
                                            color: Colors.white,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(20.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  // HeadingText(text: "2115-BROWN-GENTS"),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "2115-BROWN-GENTS",
                                                        style: GoogleFonts
                                                            .radioCanada(
                                                                fontSize: 17,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Colors
                                                                    .blue[200]),
                                                      ),
                                                      SizedBox(height: 2.h),
                                                      Row(
                                                        children: [
                                                          Expanded(
                                                            flex: 1,
                                                            child: Container(
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  NormalText(
                                                                      text:
                                                                          "Category: "),
                                                                  SizedBox(
                                                                    height: 2.h,
                                                                  ),
                                                                  NormalText(
                                                                      text:
                                                                          "Color: "),
                                                                  SizedBox(
                                                                    height: 2.h,
                                                                  ),
                                                                  NormalText(
                                                                      text:
                                                                          "Size: "),
                                                                  SizedBox(
                                                                    height: 2.h,
                                                                  ),
                                                                  NormalText(
                                                                      text:
                                                                          'Cut Out Date'),
                                                                  SizedBox(
                                                                    height: 2.h,
                                                                  ),
                                                                  NormalText(
                                                                      text:
                                                                          "Total"),
                                                                  SizedBox(
                                                                    height: 2.h,
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            flex: 2,
                                                            child: Container(
                                                              child: Padding(
                                                                padding: EdgeInsets
                                                                    .fromLTRB(
                                                                        2.h,
                                                                        0.h,
                                                                        0.h,
                                                                        0.h),
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    NormalText(
                                                                        text:
                                                                            "Gents"),
                                                                    SizedBox(
                                                                      height:
                                                                          2.h,
                                                                    ),
                                                                    NormalText(
                                                                        text:
                                                                            "Black"),
                                                                    SizedBox(
                                                                      height:
                                                                          2.h,
                                                                    ),
                                                                    NormalText(
                                                                        text:
                                                                            "1*5"),
                                                                    SizedBox(
                                                                      height:
                                                                          2.h,
                                                                    ),
                                                                    NormalText(
                                                                        text:
                                                                            "17-11-2022"),
                                                                    SizedBox(
                                                                      height:
                                                                          2.h,
                                                                    ),
                                                                    NormalText(
                                                                        text:
                                                                            "500"),
                                                                    SizedBox(
                                                                      height:
                                                                          2.h,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  Divider(
                                                    height: 1.5.h,
                                                    color: Colors.grey[400],
                                                  ),
                                                  SizedBox(
                                                    height: 2.h,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        flex: 1,
                                                        child: Container(
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  NormalText(
                                                                      text:
                                                                          "Note: "),
                                                                  Status(
                                                                      text:
                                                                          "Completed: "),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 2.h,
                                                              ),
                                                              NormalText(
                                                                  text:
                                                                      "Quisque hendrerit mi sed arcu varius, in lacinia ex scelerisque. Cras quis blandit dui"),
                                                              SizedBox(
                                                                height: 2.h,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            )),
                                        Container(
                                          color: Colors.white,
                                          margin: EdgeInsets.fromLTRB(
                                              0.h, 1.h, 0.h, 0.h),
                                          child: Container(
                                            color: Colors.white,
                                            margin: EdgeInsets.fromLTRB(
                                                0.h, 2.h, 2.h, 0.h),
                                            child: Column(children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            2.h, 0.h, 0.h, 0.h),
                                                    child: SubHeadingText(
                                                        text: "Size Details"),
                                                  ),
                                                  Row(
                                                    children: [
                                                      CustomBox(
                                                          controller:
                                                              size1controller,
                                                          label: "Size-1"),
                                                      CustomBox(
                                                          controller:
                                                              size2controller,
                                                          label: "Size-2"),
                                                      CustomBox(
                                                          controller:
                                                              size3controller,
                                                          label: "Size-3")
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  CustomBox(
                                                      controller:
                                                          size4controller,
                                                      label: "Size-4"),
                                                  CustomBox(
                                                      controller:
                                                          size5controller,
                                                      label: "Size-5"),
                                                  CustomBox(
                                                      controller:
                                                          size6controller,
                                                      label: "Size-6")
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  CustomBox(
                                                      controller:
                                                          size7controller,
                                                      label: "Size-7"),
                                                  CustomBox(
                                                      controller:
                                                          size8controller,
                                                      label: "Size-8"),
                                                  CustomBox(
                                                      controller:
                                                          size9controller,
                                                      label: "Size-9")
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  CustomBox(
                                                      controller:
                                                          size10controller,
                                                      label: "Size-10"),
                                                  CustomBox(
                                                      controller:
                                                          size11controller,
                                                      label: "Size-11"),
                                                  CustomBox(
                                                      controller:
                                                          size12controller,
                                                      label: "Size-12")
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  CustomBox(
                                                      controller:
                                                          size13controller,
                                                      label: "Size-13"),
                                                  Expanded(
                                                    flex: 1,
                                                    child: Container(),
                                                  ),
                                                  Expanded(
                                                    flex: 1,
                                                    child: Container(),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 1.h,
                                              ),
                                            ]),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              3.h, 3.h, 3.h, 1.h),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                flex: 3,
                                                child: Container(
                                                    //  padding: EdgeInsets.fromLTRB(0.h, 0.h, 3.h, 0.h),
                                                    height: 6.h,
                                                    width: double.infinity,
                                                    child: ElevatedButton(
                                                      onPressed: () async {},
                                                      child: Text(
                                                        "Delete",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 14),
                                                      ),
                                                      style: ElevatedButton.styleFrom(
                                                          primary: const Color(
                                                              0xFFEC4E52),
                                                          textStyle: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                    )),
                                              ),
                                              SizedBox(
                                                width: 3.h,
                                              ),
                                              Expanded(
                                                flex: 2,
                                                child: Container(
                                                  margin: EdgeInsets.fromLTRB(4.h, 0, 0, 0),
                                                  child: Text(
                                                    "Edit",
                                                    style: TextStyle(
                                                        color: const Color(
                                                            0xFFEC4E52),
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            // SizedBox(
                            //   height: 2.h,
                            // )
                          ],
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Divider(height: .5, color: Colors.grey);
                      },
                    ),
                  ),
                  // SizedBox(height:2.h ,),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
