import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';
import 'package:stecon_godown_storekeepe_uppermanager/CustomFont/BoldText.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/UpperPurchasePlan/View/PendingOrderUPM.dart';
import 'package:stecon_godown_storekeepe_uppermanager/UpperManager/ViewStockUPM.dart';
import '../../../AppConstants/ApiConstants.dart';
import '../../../CustomFont/Header.dart';
import '../../../CustomFont/NormalText.dart';
import '../../../CustomFont/SubHeading.dart';
import '../../../CustomWidget/CustomBox.dart';
import '../../../CustomWidget/CustomBoxEditable.dart';
import '../../../CustomWidget/CustomField.dart';
import '../../../CustomWidget/CustomSnackBar.dart';
import '../Controller/AddProductionPlanUPMController.dart';
import '../Controller/CreatePlanUPMController.dart';

class CreatePlanUPM extends StatelessWidget {
  final String upmId;
  final String companyId;

  CreatePlanUPM({Key? key, required this.upmId, required this.companyId})
      : super(key: key);
  late final _controller =
      Get.put(CreatePlanUPMController(upmId: upmId, companyId: companyId));




  DateTime date = DateTime(2022, 12, 24);
  final NoteController = TextEditingController();


  @override
  Widget build(BuildContext context) {
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
            text: 'Create Plan',
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
        body: Obx(() => ListView(
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
                            NormalText(
                                text: 'Plan no : ' +
                                    _controller.upperPlanNo.value.toString()),
                          ],
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        _image(),
                        SizedBox(
                          height: 2.h,
                        ),
                        Container(
                          // margin: EdgeInsets.fromLTRB(3.h, 2.h, 3.h, 3.h),
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
                              padding: const EdgeInsets.only(left: 10),
                              child: Text('Art Number'),
                            ),
                            value: _controller!.artNoisSelected.value == ''
                                ? null
                                : _controller!.artNoisSelected.value,
                            onChanged: (value) async {
                              _controller.getArtnoType(value.toString());

                              // });
                            },
                            items: _controller!.productList!.map((e) {
                              return DropdownMenuItem(
                                  value: e,
                                  child: Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(e.toString(),
                                          style:
                                              TextStyle(color: Colors.black))));
                            }).toList(),
                          ),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
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
                        //     value: ChooseCategory,
                        //     borderRadius: BorderRadius.circular(10),
                        //     icon: Icon(Icons.arrow_drop_down),
                        //     iconSize: 29,
                        //     underline: SizedBox(),
                        //     isExpanded: true,
                        //     hint: Padding(
                        //       padding: const EdgeInsets.only(left: 10),
                        //       child: Text('Category'),
                        //     ),
                        //     onChanged: (value) {},
                        //     items: CategoryrList.map((valueItem) {
                        //       return DropdownMenuItem(
                        //           value: valueItem,
                        //           child: Padding(
                        //             padding: const EdgeInsets.only(left: 10),
                        //             child: Text(valueItem),
                        //           ));
                        //     }).toList(),
                        //   ),
                        // ),
                        // SizedBox(
                        //   height: 4.h,
                        // ),
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
                        //     value: ChooseColor,
                        //     borderRadius: BorderRadius.circular(10),
                        //     icon: Icon(Icons.arrow_drop_down),
                        //     iconSize: 29,
                        //     underline: SizedBox(),
                        //     isExpanded: true,
                        //     hint: Padding(
                        //       padding: const EdgeInsets.only(left: 10),
                        //       child: Text('Color'),
                        //     ),
                        //     onChanged: (value) {},
                        //     items: ColorList.map((valueItem) {
                        //       return DropdownMenuItem(
                        //           value: valueItem,
                        //           child: Padding(
                        //             padding: const EdgeInsets.only(left: 10),
                        //             child: Text(valueItem),
                        //           ));
                        //     }).toList(),
                        //   ),
                        // ),
                        // SizedBox(
                        //   height: 4.h,
                        // ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: NormalText(text: 'Cutoff Date ')),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 2.h, vertical: 0.5.h),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey[400]!)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(_controller.cutOffDate.value.toString()),
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

                                  final DateFormat formatter =
                                      DateFormat('dd-MM-yyyy');
                                  final DateFormat formatter1 =
                                      DateFormat('yyyy-MM-dd');
                                  // String  date1=formatter.format(date);

                                  String formatted =
                                      formatter.format(selectedDate);
                                  _controller.cutOffDate.value =
                                      formatted.toString();
                                },
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: NormalText(text: 'Size ')),
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
                        //     value: ChooseSize,
                        //     borderRadius: BorderRadius.circular(10),
                        //     icon: Icon(Icons.arrow_drop_down),
                        //     iconSize: 29,
                        //     underline: SizedBox(),
                        //     isExpanded: true,
                        //     hint: Padding(
                        //       padding: const EdgeInsets.only(left: 10),
                        //       child: Text('Size'),
                        //     ),
                        //     onChanged: (value) {},
                        //     items: SizeList?.map((valueItem) {
                        //       return DropdownMenuItem(
                        //           value: valueItem,
                        //           child: Padding(
                        //             padding: const EdgeInsets.only(left: 10),
                        //             child: Text(valueItem),
                        //           ));
                        //     }).toList(),
                        //   ),
                        // ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0.h, 0.h, 2.h, 2.h),
                          child: Column(
                            children: [
                              GridView.count(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                crossAxisCount: 3,
                                mainAxisSpacing: 1,
                                crossAxisSpacing: 1,
                                childAspectRatio: 2,
                                children: _controller.sizeListGrid,

                              ),
                              // Row(
                              //   children: [
                              //     CustomBoxEditable(
                              //         controller: _controller.size1controller,
                              //         label: "Size-1",
                              //       onValueChange: (String value) {
                              //           if(value.isNotEmpty ||value.toString().length!=0){
                              //             int t=int.parse(value.toString());
                              //             _controller.s1.value=t;
                              //             _controller.getTotal();
                              //
                              //           }
                              //           else if(value.isEmpty ||value.toString().length!=0){
                              //             _controller.s1.value=0;
                              //             _controller.size1controller.text=_controller.s1.value.toString();
                              //             _controller.getTotal();
                              //           }
                              //     },),
                              //     CustomBoxEditable(
                              //         controller: _controller.size2controller,
                              //         label: "Size-2",
                              //       onValueChange: (String value) {
                              //         if(value.isNotEmpty ||value.toString().length!=0){
                              //           int t=int.parse(value.toString());
                              //           _controller.s2.value=t;
                              //           _controller.getTotal();
                              //
                              //         }
                              //         else if(value.isEmpty ||value.toString().length!=0){
                              //           _controller.s2.value=0;
                              //           _controller.size2controller.text=_controller.s2.value.toString();
                              //           _controller.getTotal();
                              //         }
                              //       },),
                              //     CustomBoxEditable(
                              //         controller: _controller.size3controller,
                              //         label: "Size-3",
                              //       onValueChange: (String value) {
                              //         if(value.isNotEmpty ||value.toString().length!=0){
                              //           int t=int.parse(value.toString());
                              //           _controller.s3.value=t;
                              //           _controller.getTotal();
                              //
                              //         }
                              //         else if(value.isEmpty ||value.toString().length!=0){
                              //           _controller.s3.value=0;
                              //           _controller.size3controller.text=_controller.s3.value.toString();
                              //           _controller.getTotal();
                              //         }
                              //       },)
                              //   ],
                              // ),
                              // Row(
                              //   children: [
                              //     CustomBoxEditable(
                              //         controller: _controller.size4controller,
                              //         label: "Size-4",
                              //       onValueChange: (String value) {
                              //         if(value.isNotEmpty ||value.toString().length!=0){
                              //           int t=int.parse(value.toString());
                              //           _controller.s4.value=t;
                              //           _controller.getTotal();
                              //
                              //         }
                              //         else if(value.isEmpty ||value.toString().length!=0){
                              //           _controller.s4.value=0;
                              //           _controller.size4controller.text=_controller.s4.value.toString();
                              //           _controller.getTotal();
                              //         }
                              //       },),
                              //     CustomBoxEditable(
                              //         controller: _controller.size5controller,
                              //         label: "Size-5",
                              //       onValueChange: (String value) {
                              //         if(value.isNotEmpty ||value.toString().length!=0){
                              //           int t=int.parse(value.toString());
                              //           _controller.s5.value=t;
                              //           _controller.getTotal();
                              //
                              //         }
                              //         else if(value.isEmpty ||value.toString().length!=0){
                              //           _controller.s5.value=0;
                              //           _controller.size5controller.text=_controller.s5.value.toString();
                              //           _controller.getTotal();
                              //         }
                              //       },),
                              //     CustomBoxEditable(
                              //         controller: _controller.size6controller,
                              //         label: "Size-6",
                              //       onValueChange: (String value) {
                              //         if(value.isNotEmpty ||value.toString().length!=0){
                              //           int t=int.parse(value.toString());
                              //           _controller.s6.value=t;
                              //           _controller.getTotal();
                              //
                              //         }
                              //         else if(value.isEmpty ||value.toString().length!=0){
                              //           _controller.s6.value=0;
                              //           _controller.size6controller.text=_controller.s6.value.toString();
                              //           _controller.getTotal();
                              //         }
                              //       },)
                              //   ],
                              // ),
                              // Row(
                              //   children: [
                              //     CustomBoxEditable(
                              //         controller: _controller.size7controller,
                              //         label: "Size-7",
                              //       onValueChange: (String value) {
                              //         if(value.isNotEmpty ||value.toString().length!=0){
                              //           int t=int.parse(value.toString());
                              //           _controller.s7.value=t;
                              //           _controller.getTotal();
                              //
                              //         }
                              //         else if(value.isEmpty ||value.toString().length!=0){
                              //           _controller.s7.value=0;
                              //           _controller.size7controller.text=_controller.s7.value.toString();
                              //           _controller.getTotal();
                              //         }
                              //       },),
                              //     CustomBoxEditable(
                              //         controller: _controller.size8controller,
                              //         label: "Size-8",
                              //       onValueChange: (String value) {
                              //         if(value.isNotEmpty ||value.toString().length!=0){
                              //           int t=int.parse(value.toString());
                              //           _controller.s8.value=t;
                              //           _controller.getTotal();
                              //
                              //         }
                              //         else if(value.isEmpty ||value.toString().length!=0){
                              //           _controller.s8.value=0;
                              //           _controller.size8controller.text=_controller.s8.value.toString();
                              //           _controller.getTotal();
                              //         }
                              //       },),
                              //     CustomBoxEditable(
                              //         controller: _controller.size9controller,
                              //         label: "Size-9",
                              //       onValueChange: (String value) {
                              //         if(value.isNotEmpty ||value.toString().length!=0){
                              //           int t=int.parse(value.toString());
                              //           _controller.s9.value=t;
                              //           _controller.getTotal();
                              //
                              //         }
                              //         else if(value.isEmpty ||value.toString().length!=0){
                              //           _controller.s9.value=0;
                              //           _controller.size9controller.text=_controller.s9.value.toString();
                              //           _controller.getTotal();
                              //         }
                              //       },)
                              //   ],
                              // ),
                              // Row(
                              //   children: [
                              //     CustomBoxEditable(
                              //         controller: _controller.size10controller,
                              //         label: "Size-10",
                              //       onValueChange: (String value) {
                              //         if(value.isNotEmpty ||value.toString().length!=0){
                              //           int t=int.parse(value.toString());
                              //           _controller.s10.value=t;
                              //           _controller.getTotal();
                              //
                              //         }
                              //         else if(value.isEmpty ||value.toString().length!=0){
                              //           _controller.s10.value=0;
                              //           _controller.size10controller.text=_controller.s10.value.toString();
                              //           _controller.getTotal();
                              //         }
                              //       },),
                              //     CustomBoxEditable(
                              //         controller: _controller.size11controller,
                              //         label: "Size-11",onValueChange: (String value) {
                              //       if(value.isNotEmpty ||value.toString().length!=0){
                              //         int t=int.parse(value.toString());
                              //         _controller.s11.value=t;
                              //         _controller.getTotal();
                              //
                              //       }
                              //       else if(value.isEmpty ||value.toString().length!=0){
                              //         _controller.s11.value=0;
                              //         _controller.size11controller.text=_controller.s11.value.toString();
                              //         _controller.getTotal();
                              //       }
                              //     },),
                              //     CustomBoxEditable(
                              //         controller: _controller.size12controller,
                              //         label: "Size-12",onValueChange: (String value) {
                              //       if(value.isNotEmpty ||value.toString().length!=0){
                              //         int t=int.parse(value.toString());
                              //         _controller.s12.value=t;
                              //         _controller.getTotal();
                              //
                              //       }
                              //       else if(value.isEmpty ||value.toString().length!=0){
                              //         _controller.s12.value=0;
                              //         _controller.size12controller.text=_controller.s12.value.toString();
                              //         _controller.getTotal();
                              //       }
                              //     },)
                              //   ],
                              // ),
                              // Row(
                              //   children: [
                              //     CustomBoxEditable(
                              //         controller: _controller.size13controller,
                              //         label: "Size-13", onValueChange: (String value) {
                              //       if(value.isNotEmpty ||value.toString().length!=0){
                              //         int t=int.parse(value.toString());
                              //         _controller.s13.value=t;
                              //         _controller.getTotal();
                              //
                              //       }
                              //       else if(value.isEmpty ||value.toString().length!=0){
                              //         _controller.s13.value=0;
                              //         _controller.size13controller.text=_controller.s13.value.toString();
                              //         _controller.getTotal();
                              //       }
                              //     },),
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
                              SizedBox(
                                height: 3.h,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        CustomField(controller: NoteController, label: 'Note'),
                        SizedBox(
                          height: 4.h,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                            child: BoldText(text: 'Total : '+_controller.total.value.toString())),
                        // Container(
                        //   margin: EdgeInsets.fromLTRB(0.h, 0.h, 0.h, 0.h),
                        //   child: TextFormField(
                        //     // readOnly: true,
                        //     keyboardType: TextInputType.number,
                        //     controller: _controller.TotalController,
                        //     style: GoogleFonts.roboto(),
                        //     decoration: InputDecoration(
                        //         hintText: 'Enter here..!',
                        //         hintStyle: GoogleFonts.roboto(),
                        //         labelText: 'Total',
                        //         contentPadding: EdgeInsets.symmetric(
                        //             vertical: 2.4.h, horizontal: 1.8.h),
                        //         border: OutlineInputBorder(
                        //             borderRadius: BorderRadius.circular(5),
                        //             borderSide: const BorderSide(
                        //                 width: 1,
                        //                 style: BorderStyle.none,
                        //                 color: Colors.red)),
                        //         filled: true,
                        //         fillColor: Colors.white,
                        //         enabledBorder: OutlineInputBorder(
                        //             borderSide:
                        //                 BorderSide(color: Colors.grey[400]!))),
                        //   ),
                        // ),
                        SizedBox(
                          height: 4.h,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 7.h,
                          child: ElevatedButton(
                            onPressed: () async{
                            // addToList();
                            String res=await _controller.checkPendingOrder();
                            if(res=='Pending order found on this ARTNO'){
                              openDialog(context);
                            }
                            else if(res=='No pending orders found'){
                              addToList();
                            }
                              // openDialog();
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
            )),
      ),
    );
  }

  _image() {
    if (_controller!.imgurl == 'nourl') {
      return Container();
    } else if (_controller!.imgurl != 'nourl') {
      return Container(
          child: CachedNetworkImage(
        imageUrl: ApiConstants.BASE_URL + _controller!.imgurl.toString(),
        // placeholder: (context, url) => CircularProgressIndicator(),
        errorWidget: (context, url, error) => Icon(Icons.error),
      ));
    }
  }

  Future openDialog(BuildContext context) => showDialog(
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

              Get.back();
              addToList();

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
            child: Text(
              'View Pending Order',
              style: TextStyle(color: Colors.red),
            ),
            onPressed: () {
              Get.back();
              Get.to(PendingOrderUPM(upmId: upmId,companyId: companyId,artNo: _controller.artNoIdeSelected.value.toString(),));
            },
          )
        ],
      ));

   addToList() {
    if (_controller.artNoIdeSelected.value.toString() == '') {
      CustomSnackbar().InfoSnackBar(
          'Add Order', "Select Art Number");
    } else if (_controller.cutOffDate == '') {
      CustomSnackbar().InfoSnackBar(
          'Add Order', "Select Cutoff Date");
    }
    else if (_controller.TotalController.text.toString().isEmpty) {
      CustomSnackbar()
          .InfoSnackBar('Add Order', "Enter Total");
    }
    else {
      String plan=_controller.upperPlanNo.value.toString();
      String result = plan.substring(5);
      Map<String, dynamic> json = {
        "planno":
        _controller.upperPlanNo.value.toString(),
        "cutofdate":
        _controller.cutOffDate.value.toString(),
        "artno":
        _controller.artNoIdeSelected.value.toString(),
        "s1": _controller.size1controller.text.toString(),
        "s2": _controller.size2controller.text.toString(),
        "s3": _controller.size3controller.text.toString(),
        "s4": _controller.size4controller.text.toString(),
        "s5": _controller.size5controller.text.toString(),
        "s6": _controller.size6controller.text.toString(),
        "s7": _controller.size7controller.text.toString(),
        "s8": _controller.size8controller.text.toString(),
        "s9": _controller.size9controller.text.toString(),
        "s10":_controller. size10controller.text.toString(),
        "s11": _controller.size11controller.text.toString(),
        "s12": _controller.size12controller.text.toString(),
        "s13": _controller.size13controller.text.toString(),
        "totalpairs": _controller.total.value.toString(),
        "status": "Pending",
        "note": NoteController.text.toString()
      };
      Map<String, dynamic> json1 = {
        "planno":
        _controller.upperPlanNo.value.toString(),
        "cutofdate":
        _controller.cutOffDate.value.toString(),
        "artno":
        _controller.artNoIdeSelected.value.toString(),
        "artnoname":
        _controller.artNoisSelected.value.toString(),
        "categoryname":
        _controller.categoryName.value.toString(),
        "colorname":
        _controller.colorName.value.toString(),
        "s1": _controller.size1controller.text.toString(),
        "s2": _controller.size2controller.text.toString(),
        "s3": _controller.size3controller.text.toString(),
        "s4": _controller.size4controller.text.toString(),
        "s5": _controller.size5controller.text.toString(),
        "s6": _controller.size6controller.text.toString(),
        "s7": _controller.size7controller.text.toString(),
        "s8": _controller.size8controller.text.toString(),
        "s9": _controller.size9controller.text.toString(),
        "s10": _controller.size10controller.text.toString(),
        "s11": _controller.size11controller.text.toString(),
        "s12": _controller.size12controller.text.toString(),
        "s13": _controller.size13controller.text.toString(),
        "totalpairs": _controller.total.value.toString(),
        "status": "Pending",
        "note": NoteController.text.toString()
      };
      final addController =
      Get.find<AddProductionPlanUPMController>();
      addController.producctList!.value.add(json);
      addController.producctList!.refresh();
      addController.producctListShow!.value.add(json1);
      addController.producctListShow!.refresh();
      addController.count.value=int.parse(result.toString());
      Get.back();
    }
  }




}
