import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:stecon_godown_storekeepe_uppermanager/CustomFont/BoldText.dart';
import 'package:stecon_godown_storekeepe_uppermanager/CustomWidget/CustomSnackBar.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperPurchasePlan/View/CreatePlanUPM.dart';

import '../../../CustomFont/Header.dart';
import '../../../CustomFont/NormalText.dart';
import '../../../CustomFont/Status.dart';
import '../../../CustomFont/SubHeading.dart';
import '../../../CustomWidget/CustomBox.dart';
import '../../../CustomWidget/CustomBox1.dart';
import '../Controller/AddProductionPlanUPMController.dart';

class AddProductionPlanUPM extends StatelessWidget {
  final String upmId;
   AddProductionPlanUPM({Key? key, required this.upmId}) : super(key: key);
  late final _controller=Get.put(AddProductionPlanUPMController(upmId: upmId));


  @override
  Widget build(BuildContext context) {
    final NoteEditingController = TextEditingController();


    return WillPopScope(
      onWillPop: ()async{
        Get.back();
        return true;
      },
      child: Scaffold(
        backgroundColor: const Color(0xFFF7FBFC),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 0,
          title: Header(
            text: 'Upper Purchase Order',
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
        body:Obx(()=>
            ListView(
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
                              children:  [
                                NormalText(text: "Order no :  "+_controller.orderNo.value.toString()),
                              ],
                            ),
                            SizedBox(height: 1.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                NormalText(text: "Plan no :  " + _controller.upperPlanNo.value.toString()),
                              ],
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Column(
                              children: [
                                Container(
                                  width:double.infinity,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey[200]!,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: DropdownButton(
                                    value: _controller!
                                        .comapanySelected.value ==
                                        ''
                                        ? null
                                        : _controller!
                                        .comapanySelected.value,
                                    borderRadius: BorderRadius.circular(10),
                                    icon: Icon(Icons.arrow_drop_down),
                                    iconSize: 29,
                                    underline: SizedBox(),
                                    isExpanded: true,
                                    hint: Padding(
                                      padding: const EdgeInsets.all( 10),
                                      child: Text('Upper Production Manager'),
                                    ),
                                    onChanged: (value) {
                                      _controller.compnayType(value.toString());
                                    },
                                    items: _controller.companyList.map((valueItem) {
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
                                SizedBox(
                                  height: 2.h,
                                ),
                                Container(
                                  // margin: EdgeInsets.fromLTRB(5.h, 3.h, 5.h, 1.h),
                                    height: 6.h,
                                    width: double.infinity,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        if (_controller.companyIdSelected
                                            .value == '') {
                                          CustomSnackbar().InfoSnackBar(
                                              "Add Company",
                                              "choose a company");
                                        }
                                        else {
                                          Get.to(CreatePlanUPM(upmId: upmId,
                                            companyId: _controller
                                                .companyIdSelected.value
                                                .toString(),));
                                        }
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
                        _productList()
                        // SizedBox(height:2.h ,),
                      ],
                    )
                  ],
                ),
              ],
            )
        ),
        bottomNavigationBar: Container(
          height: 6.h,
          child: ElevatedButton(
            onPressed: () {
              _controller.networkStatus();
              if(_controller.companyIdSelected==''){
                CustomSnackbar().InfoSnackBar('AddOrder', 'Select Company');
              }
              else if(_controller.producctListShow!.length==0){
                CustomSnackbar().InfoSnackBar('AddOrder', 'No Prducts Foubd , Add products');

              }
              else{
                List<Map<String,dynamic>>? producctList=[];
                for(int i=0;i<_controller.producctList!.length;i++){
                  int p=_controller.count.value;
                  p=p+i;
                  Map<String, dynamic> json={
                    "planno":"Plan-"+p.toString(),
                    "cutofdate":_controller.producctList!.value[i]['cutofdate'].toString(),
                    "artno":_controller.producctList!.value[i]['artno'].toString(),
                    "s1":_controller.producctList!.value[i]['s1'].toString(),
                    "s2":_controller.producctList!.value[i]['s2'].toString(),
                    "s3":_controller.producctList!.value[i]['s3'].toString(),
                    "s4":_controller.producctList!.value[i]['s4'].toString(),
                    "s5":_controller.producctList!.value[i]['s5'].toString(),
                    "s6":_controller.producctList!.value[i]['s6'].toString(),
                    "s7":_controller.producctList!.value[i]['s7'].toString(),
                    "s8":_controller.producctList!.value[i]['s8'].toString(),
                    "s9":_controller.producctList!.value[i]['s9'].toString(),
                    "s10":_controller.producctList!.value[i]['s10'].toString(),
                    "s11":_controller.producctList!.value[i]['s11'].toString(),
                    "s12":_controller.producctList!.value[i]['s12'].toString(),
                    "s13":_controller.producctList!.value[i]['s13'].toString(),
                    "totalpairs":_controller.producctList!.value[i]['totalpairs'].toString(),
                    "status":_controller.producctList!.value[i]['status'].toString(),
                    "note":_controller.producctList!.value[i]['note'].toString(),
                  };
                  producctList.add(json);
                }
                _controller.addPurchsePlan(producctList);
              }
              // openDialog();
            },
            child: Text(
              "Place Order",
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            style: ElevatedButton.styleFrom(
                primary: const Color(0xFFEC4E52),
                textStyle: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.bold)),
          ),
        ),
      ),
    );
  }
  _productList(){
    if(_controller.producctListShow!.length==0){
      return Center(
        child: BoldText(text: 'No Prducts, Add product',),
      );
    }
    else if(_controller.producctListShow!.length!=0){
      String plan='Plan-';
      return  Container(
        color: Colors.white,
        child: ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: _controller.producctListShow!.length,
          itemBuilder: (BuildContext context, int index) {
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
            bool enable1 = false;
            bool enable2 = false;
            bool enable3 = false;
            bool enable4 = false;
            bool enable5 = false;
            bool enable6 = false;
            bool enable7 = false;
            bool enable8 = false;
            bool enable9 = false;
            bool enable10 = false;
            bool enable11 = false;
            bool enable12 = false;
            bool enable13 = false;
            size1controller.text=_controller.producctListShow!.value[index]['s1'].toString();
            size2controller.text=_controller.producctListShow!.value[index]['s2'].toString();
            size3controller.text=_controller.producctListShow!.value[index]['s3'].toString();
            size4controller.text=_controller.producctListShow!.value[index]['s4'].toString();
            size5controller.text=_controller.producctListShow!.value[index]['s5'].toString();
            size6controller.text=_controller.producctListShow!.value[index]['s6'].toString();
            size7controller.text=_controller.producctListShow!.value[index]['s7'].toString();
            size8controller.text=_controller.producctListShow!.value[index]['s8'].toString();
            size9controller.text=_controller.producctListShow!.value[index]['s9'].toString();
            size10controller.text=_controller.producctListShow!.value[index]['s10'].toString();
            size11controller.text=_controller.producctListShow!.value[index]['s11'].toString();
            size12controller.text=_controller.producctListShow!.value[index]['s12'].toString();
            size13controller.text=_controller.producctListShow!.value[index]['s13'].toString();
            int ic=index+1;
            int planNo=_controller.count.value+index;
            size1() {
              return CustomBox1(
                controller: size1controller,
                label: "Size-1",
                Enabled: enable1,
              );
            }
            size2() {
              return CustomBox1(
                controller: size2controller,
                label: "Size-2",
                Enabled: enable2,
              );
            }
            size3() {
              return CustomBox1(
                controller: size3controller,
                label: "Size-3",
                Enabled: enable3,
              );
            }
            size4() {
              return CustomBox1(
                controller: size4controller,
                label: "Size-4",
                Enabled: enable4,
              );
            }
            size5() {
              return CustomBox1(
                controller: size5controller,
                label: "Size-5",
                Enabled: enable5,
              );
            }
            size6() {
              return CustomBox1(
                controller: size6controller,
                label: "Size-6",
                Enabled: enable6,
              );
            }
            size7() {
              return CustomBox1(
                controller: size7controller,
                label: "Size-7",
                Enabled: enable7,
              );
            }
            size8() {
              return CustomBox1(
                controller: size8controller,
                label: "Size-8",
                Enabled: enable8,
              );
            }
            size9() {
              return CustomBox1(
                controller: size9controller,
                label: "Size-9",
                Enabled: enable9,
              );
            }
            size10() {
              return CustomBox1(
                controller: size10controller,
                label: "Size-10",
                Enabled: enable10,
              );
            }
            size11() {
              return CustomBox1(
                controller: size11controller,
                label: "Size-11",
                Enabled: enable11,
              );
            }
            size12() {
              return CustomBox1(
                controller: size12controller,
                label: "Size-12",
                Enabled: enable12,
              );
            }
            size13() {
              return CustomBox1(
                controller: size13controller,
                label: "Size-13",
                Enabled: enable13,
              );
            }
            List<Widget> sizeListGrid = (List<Widget>.of([])).obs;
            if (_controller.producctListShow!.value[index]['s1'].toString()!='0') {
              sizeListGrid.add(size1());
            }
            if (_controller.producctListShow!.value[index]['s2'].toString()!='0') {
              sizeListGrid.add(size2());
            }
            if (_controller.producctListShow!.value[index]['s3'].toString()!='0') {
              sizeListGrid.add(size3());
            }
            if (_controller.producctListShow!.value[index]['s4'].toString()!='0') {
              sizeListGrid.add(size4());
            }
            if (_controller.producctListShow!.value[index]['s5'].toString()!='0') {
              sizeListGrid.add(size5());
            }
            if (_controller.producctListShow!.value[index]['s6'].toString()!='0') {
              sizeListGrid.add(size6());
            }
            if (_controller.producctListShow!.value[index]['s7'].toString()!='0') {
              sizeListGrid.add(size7());
            }
            if (_controller.producctListShow!.value[index]['s8'].toString()!='0') {
              sizeListGrid.add(size8());
            }
            if (_controller.producctListShow!.value[index]['s9'].toString()!='0') {
              sizeListGrid.add(size9());
            }
            if (_controller.producctListShow!.value[index]['s10'].toString()!='0') {
              sizeListGrid.add(size10());
            }
            if (_controller.producctListShow!.value[index]['s11'].toString()!='0') {
              sizeListGrid.add(size11());
            }
            if (_controller.producctListShow!.value[index]['s12'].toString()!='0') {
              sizeListGrid.add(size12());
            }
            if (_controller.producctListShow!.value[index]['s13'].toString()!='0') {
              sizeListGrid.add(size13());
            }




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
                                plan+planNo.toString(),
                                style: GoogleFonts.radioCanada(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                            NormalText(text: _controller.producctListShow!.value[index]['artnoname'].toString()),
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
                                            _controller.producctListShow!.value[index]['artnoname'].toString(),
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
                                                      // NormalText(
                                                      //     text:
                                                      //     "Size: "),
                                                      // SizedBox(
                                                      //   height: 2.h,
                                                      // ),
                                                      NormalText(
                                                          text:
                                                          'Cut Out Date: '),
                                                      SizedBox(
                                                        height: 2.h,
                                                      ),
                                                      NormalText(
                                                          text:
                                                          "Total: "),
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
                                                            _controller.producctListShow!.value[index]['categoryname'].toString()),
                                                        SizedBox(
                                                          height:
                                                          2.h,
                                                        ),
                                                        NormalText(
                                                            text:
                                                            _controller.producctListShow!.value[index]['colorname'].toString()),
                                                        // SizedBox(
                                                        //   height:
                                                        //   2.h,
                                                        // ),
                                                        // NormalText(
                                                        //     text:
                                                        //     "1*5"),
                                                        SizedBox(
                                                          height:
                                                          2.h,
                                                        ),
                                                        NormalText(
                                                            text:
                                                            _controller.producctListShow!.value[index]['cutofdate'].toString()),
                                                        SizedBox(
                                                          height:
                                                          2.h,
                                                        ),
                                                        NormalText(
                                                            text:
                                                            _controller.producctListShow!.value[index]['totalpairs'].toString()),
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
                                                          _controller.producctListShow!.value[index]['status'].toString()),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 2.h,
                                                  ),
                                                  NormalText(
                                                      text:
                                                      _controller.producctListShow!.value[index]['note'].toString()),
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
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding:
                                EdgeInsets.fromLTRB(
                                    2.h, 0.h, 0.h, 0.h),
                                child: SubHeadingText(
                                    text: "Size Details"),
                              ),
                            ),
                            Container(
                              color: Colors.white,
                              margin: EdgeInsets.fromLTRB(
                                  0.h, 1.h, 0.h, 0.h),
                              child: Container(
                                color: Colors.white,
                                margin: EdgeInsets.fromLTRB(
                                    0.h, 2.h, 2.h, 0.h),
                                child: Column(children: [
                                  // Row(
                                  //   children: [
                                  //     CustomBox(
                                  //         controller:
                                  //         size4controller,
                                  //         label: "Size-4"),
                                  //     CustomBox(
                                  //         controller:
                                  //         size5controller,
                                  //         label: "Size-5"),
                                  //     CustomBox(
                                  //         controller:
                                  //         size6controller,
                                  //         label: "Size-6")
                                  //   ],
                                  // ),
                                  // Row(
                                  //   children: [
                                  //     CustomBox(
                                  //         controller:
                                  //         size7controller,
                                  //         label: "Size-7"),
                                  //     CustomBox(
                                  //         controller:
                                  //         size8controller,
                                  //         label: "Size-8"),
                                  //     CustomBox(
                                  //         controller:
                                  //         size9controller,
                                  //         label: "Size-9")
                                  //   ],
                                  // ),
                                  // Row(
                                  //   children: [
                                  //     CustomBox(
                                  //         controller:
                                  //         size10controller,
                                  //         label: "Size-10"),
                                  //     CustomBox(
                                  //         controller:
                                  //         size11controller,
                                  //         label: "Size-11"),
                                  //     CustomBox(
                                  //         controller:
                                  //         size12controller,
                                  //         label: "Size-12")
                                  //   ],
                                  // ),
                                  // Row(
                                  //   children: [
                                  //     CustomBox(
                                  //         controller:
                                  //         size13controller,
                                  //         label: "Size-13"),
                                  //     Expanded(
                                  //       flex: 1,
                                  //       child: Container(),
                                  //     ),
                                  //     Expanded(
                                  //       flex: 1,
                                  //       child: Container(),
                                  //     ),
                                  //   ],
                                  // ),
                                  GridView.count(
                                    shrinkWrap: true,
                                    physics: NeverScrollableScrollPhysics(),
                                    crossAxisCount: 3,
                                    mainAxisSpacing: 1,
                                    crossAxisSpacing: 1,
                                    // childAspectRatio: 2,
                                    children: sizeListGrid,

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
                                    flex: 1,
                                    child: Container(
                                      //  padding: EdgeInsets.fromLTRB(0.h, 0.h, 3.h, 0.h),
                                        height: 6.h,
                                        width: double.infinity,
                                        child: ElevatedButton(
                                          onPressed: () async {
                                            _controller.networkStatus();
                                            _controller.producctList!.value.removeAt(index);
                                            _controller.producctListShow!.value.removeAt(index);
                                            _controller.producctList!.refresh();
                                            _controller.producctListShow!.refresh();

                                          },
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
                                  // SizedBox(
                                  //   width: 3.h,
                                  // ),
                                  // Expanded(
                                  //   flex: 2,
                                  //   child: Container(
                                  //     margin: EdgeInsets.fromLTRB(4.h, 0, 0, 0),
                                  //     child: Text(
                                  //       "Edit",
                                  //       style: TextStyle(
                                  //           color: const Color(
                                  //               0xFFEC4E52),
                                  //           fontSize: 14,
                                  //           fontWeight:
                                  //           FontWeight.bold),
                                  //     ),
                                  //   ),
                                  // ),
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
      );
    }
  }

}
