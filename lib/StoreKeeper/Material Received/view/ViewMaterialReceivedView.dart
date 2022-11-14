import 'package:flutter/MATERIAL.dart';
import 'package:get/get.dart';

import '../../../CustomFont/Header.dart';
import 'AddMaterialReceivedView.dart';

class ViewMaterialReceived extends StatelessWidget {
  const ViewMaterialReceived({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7FBFC),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Header(
          text: 'Material Received details',
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
        actions: [
          IconButton(
              onPressed: () {
                // Get.to(AddMaterialRecevied());
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) =>  AddMaterialRepalcedDetails()),
                // );
              },
              icon: Icon(Icons.add))
        ],
      ),
    );
  }
}
