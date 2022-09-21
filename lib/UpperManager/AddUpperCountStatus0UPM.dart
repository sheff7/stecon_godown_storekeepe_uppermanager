import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../CustomFont/Header.dart';
import '../CustomFont/NormalText.dart';
import 'AddUpperCountStatus1UPM.dart';

class AddUpperCountStatus0UPM extends StatelessWidget {
  const AddUpperCountStatus0UPM({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? ChooseOrdernumber;
    List OrderList = ['1367855', '8574758', '7758584'];
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Header(
          text: 'Upper Count Status',
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
                margin: EdgeInsets.symmetric(horizontal: 2.h, vertical: 2.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    NormalText(text: 'Return no : ' + '756484 5567'),
                    SizedBox(
                      height: 1.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        NormalText(text: 'plan no : ' + '756484 5567'),
                        NormalText(text: '17-11-2022')
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
                        value: ChooseOrdernumber,
                        borderRadius: BorderRadius.circular(10),
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 29,
                        underline: SizedBox(),
                        isExpanded: true,
                        hint: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text('Order no'),
                        ),
                        onChanged: (value) {},
                        items: OrderList.map((valueItem) {
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
                      height: 3.h,
                    ),
                    Container(
                      child: SizedBox(
                        width: double.infinity,
                        height: 6.h,
                        child: ElevatedButton(
                          onPressed: () {
                            Get.to(AddUpperCountStatus1UPM());
                          },
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
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
