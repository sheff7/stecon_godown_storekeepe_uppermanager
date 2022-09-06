import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:stecon_godown_storekeepe_uppermanager/CustomFont/BoldText.dart';
import 'package:stecon_godown_storekeepe_uppermanager/Godown/DeliverySchedulefn/Controller/DeliveryScxheduleSingleViewController.dart';

import '../../../CustomFont/Header.dart';
import '../../../CustomFont/Heading.dart';
import '../../../CustomFont/NormalText.dart';
import '../../../CustomFont/SubHeading.dart';
import '../../../CustomWidget/CustomBox.dart';

class DeliverySchedule1GD extends StatelessWidget {
  final String id;
   DeliverySchedule1GD({Key? key, required this.id}) : super(key: key);

  late final _deliveryScheduleSingleViewController =
  Get.put(DeliveryScheduleSingleViewController(id: id));
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

    return Scaffold(
      backgroundColor: const Color(0xFFF7FBFC),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Header(
          text: 'View Orders',
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
      body: Obx(()=> _body()),
      bottomNavigationBar:Container(
        margin: EdgeInsets.fromLTRB(
            2.h, 0, 0, 1.h),
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {},
          child: Text('Edit'),
          style: ElevatedButton.styleFrom(
            primary:
            const Color(0xFFEC4E52),
          ),
        ),
      ),
    );
  }
  _body(){
    if(_deliveryScheduleSingleViewController.networkStatus.value==true){
      if(_deliveryScheduleSingleViewController.loadingBool.value==false){
        if(_deliveryScheduleSingleViewController.deliveryScheduleSingleViewGdEntity.value.response=="success"){
          if(_deliveryScheduleSingleViewController.deliveryScheduleSingleViewGdEntity.value.deliveryschedule!.length==0){
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: HeadingText(
                      text: 'No Data',
                    ),
                  ),
                ],
              ),
            );
          }
          else if(_deliveryScheduleSingleViewController.deliveryScheduleSingleViewGdEntity.value.deliveryschedule!.length!=0){
            return ListView(
              children: [
                SizedBox(
                  height: 2.h,
                ),
                Column(
                  children: [
                    Material(
                      borderRadius: BorderRadius.circular(0),
                      elevation: 0,
                      // shadowColor: Colors.grey,
                      child: Container(
                        color: Colors.white,
                        margin: EdgeInsets.fromLTRB(2.h, 0.h, 2.h, 2.h),
                        child: ListTile(
                          title: Padding(
                            padding: EdgeInsets.only(top: 2.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    NormalText(text: "Distributor :"),
                                    BoldText(text: _deliveryScheduleSingleViewController.deliveryScheduleSingleViewGdEntity.value.deliveryschedule![0].areacode.toString())
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0.h, 1.h, 0.h, 1.5.h),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        _deliveryScheduleSingleViewController.deliveryScheduleSingleViewGdEntity.value.deliveryschedule![0].customername.toString(),
                                        style: GoogleFonts.radioCanada(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500,
                                          color: const Color(0xFFEC4E52),
                                        ),
                                      ),
                                      NormalText(text: 'Area Code')
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height: 2.h,
                    // )
                  ],
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
                            itemCount: _deliveryScheduleSingleViewController.deliveryScheduleSingleViewGdEntity.value.deliveryschedule!.length,
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
                                                  _deliveryScheduleSingleViewController.deliveryScheduleSingleViewGdEntity.value.deliveryschedule![index].productname.toString(),
                                                  style: GoogleFonts.radioCanada(
                                                      fontSize: 17,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.blue[200]),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 1.h,
                                              ),
                                              NormalText(text:  _deliveryScheduleSingleViewController.deliveryScheduleSingleViewGdEntity.value.deliveryschedule![index].colorname.toString() +", "+  _deliveryScheduleSingleViewController.deliveryScheduleSingleViewGdEntity.value.deliveryschedule![index].categoryname.toString()),
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
                                                                _deliveryScheduleSingleViewController
                                                                    .size1controller,
                                                                label: "Size-1"),
                                                            CustomBox(
                                                                controller:
                                                                _deliveryScheduleSingleViewController
                                                                    .size2controller,
                                                                label: "Size-2"),
                                                            CustomBox(
                                                                controller:
                                                                _deliveryScheduleSingleViewController
                                                                    .size3controller,
                                                                label: "Size-3")
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        CustomBox(
                                                            controller: _deliveryScheduleSingleViewController
                                                                .size4controller,
                                                            label: "Size-4"),
                                                        CustomBox(
                                                            controller:_deliveryScheduleSingleViewController
                                                                .size5controller,
                                                            label: "Size-5"),
                                                        CustomBox(
                                                            controller: _deliveryScheduleSingleViewController
                                                                .size6controller,
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
                                                            controller: _deliveryScheduleSingleViewController
                                                                .size10controller,
                                                            label: "Size-10"),
                                                        CustomBox(
                                                            controller: _deliveryScheduleSingleViewController
                                                                .size11controller,
                                                            label: "Size-11"),
                                                        CustomBox(
                                                            controller: _deliveryScheduleSingleViewController
                                                                .size12controller,
                                                            label: "Size-12")
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        CustomBox(
                                                            controller: _deliveryScheduleSingleViewController
                                                                .size13controller,
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
                                                    Row(
                                                      children: [
                                                        Expanded(
                                                          flex: 2,
                                                          child: Container(
                                                            padding: EdgeInsets.symmetric(
                                                                horizontal: 3.h,
                                                                vertical: 3.h),
                                                            color: Colors.white,
                                                            child: Column(
                                                              crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                              children: [
                                                                NormalText(
                                                                    text: 'Box : '),
                                                                SizedBox(
                                                                  height: 2.h,
                                                                ),
                                                                NormalText(
                                                                    text: 'Box Count : '),
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
                                                            padding: EdgeInsets.symmetric(
                                                                horizontal: 0.h,
                                                                vertical: 3.h),
                                                            color: Colors.white,
                                                            child: Column(
                                                              crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                              children: [
                                                                BoldText(text: _deliveryScheduleSingleViewController.deliveryScheduleSingleViewGdEntity.value.deliveryschedule![index].box.toString()),
                                                                SizedBox(
                                                                  height: 2.h,
                                                                ),
                                                                BoldText(text: _deliveryScheduleSingleViewController.deliveryScheduleSingleViewGdEntity.value.deliveryschedule![index].pair.toString()),
                                                                SizedBox(
                                                                  height: 2.h,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.fromLTRB(
                                                          2.h, 0, 0, 1.h),
                                                      width: double.infinity,
                                                      child: ElevatedButton(
                                                        onPressed: () {},
                                                        child: Text('Edit'),
                                                        style: ElevatedButton.styleFrom(
                                                          primary:
                                                          const Color(0xFFEC4E52),
                                                        ),
                                                      ),
                                                    ),
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
                              return SizedBox();
                            },
                          ),
                        ),

                        // SizedBox(height:2.h ,),
                      ],
                    )),
              ],
            );
          }
        }
        else {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: HeadingText(
                    text: _deliveryScheduleSingleViewController
                        .deliveryScheduleSingleViewGdEntity.value.response
                        .toString(),
                  ),
                ),
                ElevatedButton(
                    onPressed: () async {
                      _deliveryScheduleSingleViewController.getDeliverySchedule();
                    },
                    child: Text('Retry'))
              ],
            ),
          );
        }
      }
      else if (_deliveryScheduleSingleViewController.loadingBool.value == true) {
        return Center(
          child: Column(
            children: [HeadingText(text: 'Loading..')],
          ),
        );
      }
    }
    else if (_deliveryScheduleSingleViewController!.networkStatus.value ==
        false) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: HeadingText(
                text: 'No Internet Connection',
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  _deliveryScheduleSingleViewController!.getDeliverySchedule();
                },
                child: Text('Retry'))
          ],
        ),
      );
    }
  }
}