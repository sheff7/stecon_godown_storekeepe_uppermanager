import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'StoreKeeper/HomePageSk.dart';

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
        MaterialApp(
          theme: ThemeData(),
          home: HomePageSk(),
        );
      // );
    });
  }
}
