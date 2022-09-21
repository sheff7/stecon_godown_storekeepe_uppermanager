import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import '../CustomFont/Header.dart';
import '../CustomFont/NormalText.dart';
import '../CustomWidget/StaticCustomBox.dart';

class ViewStockUPM extends StatelessWidget {
   ViewStockUPM({Key? key}) : super(key: key);

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
  @override
  Widget build(BuildContext context) {
    String? ArtNumberChoose;
    List ArtNumberList = ['101', '201', '502', '298', '987'];



    return Scaffold(
        backgroundColor: const Color(0xFFF7FBFC),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 0,
          title: Header(
            text: 'View Stock',
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
            Padding(
              padding: EdgeInsets.only(top: 2.h, bottom: 2.h),
              child: Container(
                color: Colors.white,
                child: Container(
                  margin: EdgeInsets.fromLTRB(2.h, 3.h, 2.h, 2.h),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                        color: Colors.black, // Set border color
                        width: 1.0),
                  ),
                  width: double.infinity,
                  child: DropdownButton(
                    borderRadius: BorderRadius.circular(10),
                    icon: Icon(Icons.arrow_drop_down),
                    iconSize: 29,
                    underline: SizedBox(),
                    isExpanded: true,
                    hint: Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: Text('Art Number'),
                    ),
                    value: ArtNumberChoose,
                    onChanged: (value) {
                      // setState(() {
                      //   maritalChoose = value as String;
                      // });
                    },
                    items: ArtNumberList.map((valueItem) {
                      return DropdownMenuItem(
                          value: valueItem,
                          child: Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Text(valueItem),
                          ));
                    }).toList(),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  color: Colors.white,
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 3,
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
                                title: Text(
                                  "2115-BROWN-GENTS",
                                  style: GoogleFonts.radioCanada(
                                    fontSize: 17,
                                    // fontWeight: FontWeight.bold,
                                    color:  Color(0xFF088EDA),),
                                ),
                                subtitle: NormalText(
                                  text: "1 * 5",
                                ),
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          StaticCustomBox(
                                              controller: size1controller,
                                              label: "Size-1"),
                                          StaticCustomBox(
                                              controller: size2controller,
                                              label: "Size-2"),
                                          StaticCustomBox(
                                              controller: size3controller,
                                              label: "Size-3")
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          StaticCustomBox(
                                              controller: size4controller,
                                              label: "Size-4"),
                                          StaticCustomBox(
                                              controller: size5controller,
                                              label: "Size-5"),
                                          StaticCustomBox(
                                              controller: size6controller,
                                              label: "Size-6")
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          StaticCustomBox(
                                              controller: size7controller,
                                              label: "Size-7"),
                                          StaticCustomBox(
                                              controller: size8controller,
                                              label: "Size-8"),
                                          StaticCustomBox(
                                              controller: size9controller,
                                              label: "Size-9")
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          StaticCustomBox(
                                              controller: size10controller,
                                              label: "Size-10"),
                                          StaticCustomBox(
                                              controller: size11controller,
                                              label: "Size-11"),
                                          StaticCustomBox(
                                              controller: size12controller,
                                              label: "Size-12")
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          StaticCustomBox(
                                              controller: size13controller,
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
                                        height: 3.h,
                                      ),
                                      Padding(
                                        padding:EdgeInsets.fromLTRB(2.h, 1.h, 2.h, 2.h),
                                        child: Row(
                                          children: [
                                            NormalText(text: "Box Count: "),
                                            NormalText(text: '10')
                                          ],
                                        ),
                                      )
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
                )
              ],
            )
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          child: Container(
            margin: EdgeInsets.fromLTRB(3.h, 1.h, 3.h, 1.h),
            // height: 6.h,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: ElevatedButton(
                onPressed: () async {},
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 1.5.h, 0, 1.5.h),
                  child: Text(
                    "Submit",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    primary: const Color(0xFFEC4E52),
                    textStyle:
                    TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              ),
            ),
          ),
        )
    );
  }
}
