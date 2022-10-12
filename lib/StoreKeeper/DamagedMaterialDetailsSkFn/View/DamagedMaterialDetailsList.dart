import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../CustomFont/BoldText.dart';
import '../../../CustomFont/Header.dart';
import '../../../CustomFont/Heading.dart';
import '../../../CustomFont/NormalText.dart';
import '../../../CustomFont/NormalTextGreen.dart';
import '../../../CustomWidget/Nodata.dart';
import '../Controller/DamagedMaterialListSkController.dart';
import 'AddDamageMaterialDetails.dart';
import 'EditDamageMaterialDetails.dart';

class DamageMaterialList extends StatelessWidget {
   DamageMaterialList({Key? key}) : super(key: key);

  late final damagedMaterialListSkController =
  Get.put(GetDamagedMaterialListSkController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7FBFC),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Header(
          text: 'Damaged Material',
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
          IconButton(onPressed: (){
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => const AddDamageMaterialDetails()),
            // );
            Get.to(AddDamagedMaterialDetails());
          }, icon: Icon(Icons.add))
        ],
      ),
      body:Obx(() => RefreshIndicator(
        onRefresh: () async {
          damagedMaterialListSkController.getDamageList();
        },
          child:_body()),)

    );
  }
   _body() {
     if (damagedMaterialListSkController.networkStatus.value == true) {
       if (damagedMaterialListSkController.loadingBool.value == false) {
         if (damagedMaterialListSkController.DamagedMaterialListSkEntity.value ==
             null) {
           return Container(
             child: Text('Null value'),
           );
         } else if (damagedMaterialListSkController
             .DamagedMaterialListSkEntity.value !=
             null) {
           if (damagedMaterialListSkController
               .DamagedMaterialListSkEntity.value.response ==
               "Success") {
             if (damagedMaterialListSkController
                 .DamagedMaterialListSkEntity.value.materialdamagedlist!.length ==
                 0) {
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
             } else if (damagedMaterialListSkController
                 .DamagedMaterialListSkEntity.value.materialdamagedlist!.length !=
                 0) {
               return ListView(
                 children: [
                   SizedBox(
                     height: 2.h,
                   ),
                   ListView.separated(
                       shrinkWrap: true,
                       physics: NeverScrollableScrollPhysics(),
                     itemCount: damagedMaterialListSkController.DamagedMaterialListSkEntity.value.materialdamagedlist!.length,
                       itemBuilder: (BuildContext context, int index) {
                         return Container(
                           color: Colors.white,
                           padding: EdgeInsets.symmetric(
                               horizontal: 2.h, vertical: 2.h),
                           child: ExpansionTile(
                             title: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 NormalText(text: 'Damage no :'),
                                 SizedBox(
                                   height: 1.h,
                                 ),
                                 Text(
                                   damagedMaterialListSkController.DamagedMaterialListSkEntity.value.materialdamagedlist![index].damagedno.toString(),
                                   style: GoogleFonts.radioCanada(
                                     fontSize: 17,
                                     color: const Color(0xFFEC4E52),
                                   ),
                                 ),
                                 SizedBox(height: 1.h,),
                                 NormalText(text: 'Department : '+ damagedMaterialListSkController.DamagedMaterialListSkEntity.value.materialdamagedlist![index].departmentname.toString()),

                               ],
                             ),
                             expandedAlignment: Alignment.centerLeft,
                             children: [
                               Container(
                                   margin: EdgeInsets.symmetric(
                                       horizontal: 2.h, vertical: 2.h),
                                   child: Column(
                                     children: [
                                       Row(
                                         mainAxisAlignment: MainAxisAlignment.end,
                                         children: [
                                           NormalTextGreen(text: damagedMaterialListSkController.DamagedMaterialListSkEntity.value.materialdamagedlist![index].status.toString())
                                         ],
                                       ),
                                       Row(
                                         mainAxisAlignment: MainAxisAlignment.end,
                                         children: [
                                           IconButton(onPressed: (){
                                             Get.to(EditDamagedMaterialDetails(
                                               id: damagedMaterialListSkController.DamagedMaterialListSkEntity.value.materialdamagedlist![index].id.toString(),
                                             ));

                                           }, icon:Icon(
                                             Icons.edit,),)
                                         ],
                                       ),
                                       Row(

                                         children: [
                                           NormalText(text: "Replaced no.  :  "),

                                           BoldText(text:  damagedMaterialListSkController.DamagedMaterialListSkEntity.value.materialdamagedlist![index].id.toString()),

                                         ],
                                       ),
                                       SizedBox(height: 2.h,),

                                       // Row(
                                       //
                                       //   children: [
                                       //     NormalText(text: "Usage Count  :  "),
                                       //
                                       //     BoldText(text: 'Gents'),
                                       //
                                       //   ],
                                       // ),
                                       // SizedBox(
                                       //   height: 2.h,
                                       // ),
                                       Row(

                                         children: [
                                           NormalText(text: "Issue no.  :  "),

                                           BoldText(text: damagedMaterialListSkController.DamagedMaterialListSkEntity.value.materialdamagedlist![index].issueno.toString()),

                                         ],
                                       ),
                                       SizedBox(height: 2.h,),

                                       Row(
                                         children: [
                                           NormalText(text: "Department :  "),
                                           BoldText(text: damagedMaterialListSkController.DamagedMaterialListSkEntity.value.materialdamagedlist![index].departmentname.toString()),
                                         ],
                                       ),
                                       SizedBox(
                                         height: 2.h,
                                       ),
                                       Row(
                                         children: [
                                           NormalText(text: "Item name :  "),
                                           BoldText(text:  damagedMaterialListSkController.DamagedMaterialListSkEntity.value.materialdamagedlist![index].itemnanme.toString()
                                           ),],
                                       ),
                                       SizedBox(
                                         height: 2.h,
                                       ),
                                       Row(
                                         children: [
                                           NormalText(text: "Brand name :  "),
                                           BoldText(text:  damagedMaterialListSkController.DamagedMaterialListSkEntity.value.materialdamagedlist![index].companyname.toString()),
                                         ],
                                       ),
                                       SizedBox(
                                         height: 2.h,
                                       ),
                                       Row(
                                         children: [
                                           NormalText(text: "Quantity :  "),
                                           BoldText(text:  damagedMaterialListSkController.DamagedMaterialListSkEntity.value.materialdamagedlist![index].quantity.toString()),
                                         ],
                                       ),
                                       SizedBox(height: 2.h,),
                                       Row(
                                         children: [
                                           NormalText(text: "Type :  "),
                                           BoldText(text:  damagedMaterialListSkController.DamagedMaterialListSkEntity.value.materialdamagedlist![index].type.toString()),
                                         ],
                                       ),
                                       SizedBox(height: 2.h,),
                                       Row(
                                         children: [
                                           NormalText(text: "Issue Date :  "),
                                           BoldText(text:  damagedMaterialListSkController.DamagedMaterialListSkEntity.value.materialdamagedlist![index].date.toString()),
                                         ],
                                       ),
                                       SizedBox(height: 2.h,),
                                       Column(
                                         children: [
                                           Row(
                                             children: [
                                               NormalText(text: "Comments :  "),
                                               Expanded(
                                                 flex: 1,
                                                   child: BoldText(text:  damagedMaterialListSkController.DamagedMaterialListSkEntity.value.materialdamagedlist![index].comments.toString())),
                                             ],
                                           ),

                                         ],
                                       ),
                                       SizedBox(height: 2.h,),
                                     ],
                                   )),
                             ]
                             ,
                           )
                           ,
                         );
                       },
                       separatorBuilder: (context, index) {
                         return SizedBox(
                           height: 2.h,
                         );
                       },
                       )

                 ],
               );
             }
           } else {
             return Column(
               children: [
                 Nodata(
                   response: damagedMaterialListSkController
                       .DamagedMaterialListSkEntity.value.response
                       .toString(),
                 ),
                 ElevatedButton(
                     onPressed: () async {
                       damagedMaterialListSkController.getDamageList();
                     },
                     child: Text('Retry'))
               ],
             );
           }
         }
       } else if (damagedMaterialListSkController.loadingBool.value == true) {
         return Center(
           child: Column(
             children: [HeadingText(text: 'Loading..')],
           ),
         );
       }
     } else if ( damagedMaterialListSkController.networkStatus.value == false) {
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
                   damagedMaterialListSkController.getDamageList();
                 },
                 child: Text('Retry'))
           ],
         ),
       );
     }
   }

}
