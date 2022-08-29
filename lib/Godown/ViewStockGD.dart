import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../CustomFont/Header.dart';
import '../CustomFont/NormalText.dart';
import '../CustomFont/SubHeading.dart';
import '../CustomWidget/CustomBox.dart';

class ViewStockGD extends StatelessWidget {
  const ViewStockGD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          SizedBox(
            height: 2.h,
          ),
          Container(
              child: Column(
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
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 1.5.h),
                                      child: Text(
                                        "2115-BROWN-GENTS",
                                        style: GoogleFonts.radioCanada(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue[200]),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 1.h,
                                    ),
                                    NormalText(text: 'Brown, Gents'),
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
                                      color: Colors.white,
                                      margin: EdgeInsets.fromLTRB(
                                          0.h, 0.h, 0.h, 0.h),
                                      child: Container(
                                        color: Colors.white,
                                        margin: EdgeInsets.fromLTRB(
                                            0.h, 0.h, 2.h, 0.h),
                                        child: Column(children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
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
                                                  controller: size4controller,
                                                  label: "Size-4"),
                                              CustomBox(
                                                  controller: size5controller,
                                                  label: "Size-5"),
                                              CustomBox(
                                                  controller: size6controller,
                                                  label: "Size-6")
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              CustomBox(
                                                  controller: size7controller,
                                                  label: "Size-7"),
                                              CustomBox(
                                                  controller: size8controller,
                                                  label: "Size-8"),
                                              CustomBox(
                                                  controller: size9controller,
                                                  label: "Size-9")
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              CustomBox(
                                                  controller: size10controller,
                                                  label: "Size-10"),
                                              CustomBox(
                                                  controller: size11controller,
                                                  label: "Size-11"),
                                              CustomBox(
                                                  controller: size12controller,
                                                  label: "Size-12")
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              CustomBox(
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
                                          )
                                        ]),
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
          )),

          // child: ExpansionTile(
          //   title: Padding(
          //     padding: EdgeInsets.fromLTRB(2.h, 2.h, 0.h, 2.h),
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.start,
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         Text(
          //           "2115-BROWN-GENTS",
          //           style: GoogleFonts.radioCanada(
          //               fontSize: 17,
          //               fontWeight: FontWeight.bold,
          //               color: Colors.blue[200]),
          //         ),
          //         NormalText(text: "Orderd no: 558755 8555 455"),
          //         NormalText(text: "Date: 17-11-22"),
          //       ],
          //     ),
          //   ),
          //   children: [
          //     Column(
          //       children: [
          //         Container(
          //             margin: EdgeInsets.fromLTRB(0.h, 0.h, 0.h, 0.h),
          //             color: Colors.white,
          //             child: Padding(
          //               padding: const EdgeInsets.all(20.0),
          //               child: Column(
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 children: [
          //                   // HeadingText(text: "2115-BROWN-GENTS"),
          //                   Row(
          //                     children: [
          //                       Expanded(
          //                         flex: 1,
          //                         child: Container(
          //                           child: Column(
          //                             crossAxisAlignment:
          //                                 CrossAxisAlignment.start,
          //                             children: [
          //                               NormalText(text: "Category: "),
          //                               SizedBox(
          //                                 height: 2.h,
          //                               ),
          //                               NormalText(text: "Color: "),
          //                               SizedBox(
          //                                 height: 2.h,
          //                               ),
          //                               NormalText(text: "Size: "),
          //                               SizedBox(
          //                                 height: 2.h,
          //                               ),
          //                               NormalText(text: "Pair: "),
          //                               SizedBox(
          //                                 height: 2.h,
          //                               ),
          //                               NormalText(text: "Box: "),
          //                             ],
          //                           ),
          //                         ),
          //                       ),
          //                       Expanded(
          //                         flex: 2,
          //                         child: Container(
          //                           child: Padding(
          //                             padding: EdgeInsets.fromLTRB(
          //                                 2.h, 3.h, 0.h, 0.h),
          //                             child: Column(
          //                               crossAxisAlignment:
          //                                   CrossAxisAlignment.start,
          //                               children: [
          //                                 NormalText(text: "Gents"),
          //                                 SizedBox(
          //                                   height: 2.h,
          //                                 ),
          //                                 NormalText(text: "Black"),
          //                                 SizedBox(
          //                                   height: 2.h,
          //                                 ),
          //                                 NormalText(text: "1*5"),
          //                                 SizedBox(
          //                                   height: 2.h,
          //                                 ),
          //                                 NormalText(text: "50"),
          //                                 SizedBox(
          //                                   height: 2.h,
          //                                 ),
          //                                 NormalText(text: "2"),
          //                               ],
          //                             ),
          //                           ),
          //                         ),
          //                       )
          //                     ],
          //                   ),
          //                 ],
          //               ),
          //             )),
          //         Container(
          //           color: Colors.white,
          //           margin: EdgeInsets.fromLTRB(0.h, 1.h, 0.h, 0.h),
          //           child: Container(
          //             color: Colors.white,
          //             margin: EdgeInsets.fromLTRB(0.h, 2.h, 2.h, 0.h),
          //             child: Column(children: [
          //               Column(
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 children: [
          //                   Padding(
          //                     padding:
          //                         EdgeInsets.fromLTRB(2.h, 0.h, 0.h, 0.h),
          //                     child: SubHeadingText(text: "Size Details"),
          //                   ),
          //                   Row(
          //                     children: [
          //                       CustomBox(
          //                           controller: size1controller,
          //                           label: "Size-1"),
          //                       CustomBox(
          //                           controller: size2controller,
          //                           label: "Size-2"),
          //                       CustomBox(
          //                           controller: size3controller,
          //                           label: "Size-3")
          //                     ],
          //                   ),
          //                 ],
          //               ),
          //               Row(
          //                 children: [
          //                   CustomBox(
          //                       controller: size4controller,
          //                       label: "Size-4"),
          //                   CustomBox(
          //                       controller: size5controller,
          //                       label: "Size-5"),
          //                   CustomBox(
          //                       controller: size6controller,
          //                       label: "Size-6")
          //                 ],
          //               ),
          //               Row(
          //                 children: [
          //                   CustomBox(
          //                       controller: size7controller,
          //                       label: "Size-7"),
          //                   CustomBox(
          //                       controller: size8controller,
          //                       label: "Size-8"),
          //                   CustomBox(
          //                       controller: size9controller,
          //                       label: "Size-9")
          //                 ],
          //               ),
          //               Row(
          //                 children: [
          //                   CustomBox(
          //                       controller: size10controller,
          //                       label: "Size-10"),
          //                   CustomBox(
          //                       controller: size11controller,
          //                       label: "Size-11"),
          //                   CustomBox(
          //                       controller: size12controller,
          //                       label: "Size-12")
          //                 ],
          //               ),
          //               Row(
          //                 children: [
          //                   CustomBox(
          //                       controller: size13controller,
          //                       label: "Size-13"),
          //                   Expanded(
          //                     flex: 1,
          //                     child: Container(),
          //                   ),
          //                   Expanded(
          //                     flex: 1,
          //                     child: Container(),
          //                   ),
          //                 ],
          //               ),
          //               SizedBox(
          //                 height: 4.h,
          //               ),
          //             ]),
          //           ),
          //         )
          //       ],
          //     )
          //   ],
          // ),
        ],
      ),
    );
  }
}
