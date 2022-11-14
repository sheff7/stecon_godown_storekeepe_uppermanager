import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import '../../../CustomFont/Header.dart';
import '../../../CustomWidget/CustomField.dart';
import '../Controller/EditMaterialCountController.dart';


class EditMaterialReceivedCount extends StatelessWidget {
  final String id;
  final String oc;
  final String rc;
  final String dc;
  final String note;
  final String date;
  EditMaterialReceivedCount({Key? key, required this.id, required this.oc, required this.rc, required this.dc, required this.note, required this.date}) : super(key: key);


  late final _controller = Get.put(EditMaterialRcCountController(id: id,
      oc: oc,
      dc: dc,
      rc: rc,
      note: note,
      date:date
  ));
  final TextEditingController rcController = TextEditingController();
  final TextEditingController dcController = TextEditingController();
  final TextEditingController ocController = TextEditingController();
  final TextEditingController noteController = TextEditingController();






  @override
  Widget build(BuildContext context) {
    rcController.text=rc;
    dcController.text=dc;
    ocController.text=oc;
    noteController.text=note;

    return WillPopScope(
      onWillPop: () async {
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
            text: 'Edit Material Received',
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
                    SizedBox(
                      height: 4.h,
                    ),
                    CustomField(
                      controller: ocController,
                      label: "OC",
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    CustomField(
                      controller:rcController,
                      label: "RC",
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    CustomField(
                      controller: dcController,
                      label: "DC",
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    CustomField(
                      controller: noteController,
                      label: "Note",
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 7.h,
                      child: Obx(()=>
                          ElevatedButton(
                            onPressed: () {
                              _controller.addCount(rcController.text.toString(),
                                  dcController.text.toString(),
                                  noteController.text.toString()
                              );
                            },
                            child: Text(
                              _controller.buttonTxt.value,
                              style:
                              TextStyle(color: Colors.white, fontSize: 14),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: const Color(0xFFEC4E52),
                                textStyle: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold)),
                          ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
