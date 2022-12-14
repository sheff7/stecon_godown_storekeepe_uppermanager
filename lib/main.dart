import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'SplashScreen.dart';
import 'UpperManager/AddUpperCountStatus0UPM.dart';
import 'UpperManager/AddUpperCountStatus1UPM.dart';
import 'UpperManager/UpperPurchaseCount/View/AddUpperCountStatus2UPM.dart';
import 'UpperManager/UpperCountHistory1UPM.dart';
import 'UpperManager/UpperCountHistory2UPM.dart';
import 'UpperManager/UpperPurchaseCount/View/UpperCountStatus0UPM.dart';
import 'UpperManager/UpperPurchasePlan/View/AddProductionPlanUPM.dart';
import 'UpperManager/UpperPurchasePlan/View/CreatePlanUPM.dart';
import 'UpperManager/UpperMangerHomeFn/View/HomeUpperManager.dart';
import 'UpperManager/UpperPurchasePlan/View/PendingOrderUPM.dart';
import 'UpperManager/ProfileUPM.dart';
import 'UpperManager/UpperPurchaseHistory/View/UpperHistoryUPM.dart';
import 'UpperManager/UpperPurchaseOrder/View/UpperPurchaseOrderUPM.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return
        // MultiBlocProvider(
        // providers: [
        //   BlocProvider<LoginBloc>(create: (context) => LoginBloc(),),
        //   // BlocProvider<CategoryBloc>(create: (context) => CategoryBloc(),)
        // ],
        // child:
        GetMaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            // primarySwatch: Colors.blue,
          ),
          home:SplashScreen(),
        );
      // );
    });
  }
}
