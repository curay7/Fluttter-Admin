import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_flutter/routes/router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/home",
      getPages: customAppRouter(),
      theme: ThemeData(
        //brightness: Brightness.dark,
        // textTheme: Theme.of(context).textTheme.apply(
        //       bodyColor: Colors.pink,
        //       displayColor:Color(0xff3A36DB),
        //     ),
        primaryColor: Color(0xff3A36DB),
        pageTransitionsTheme: PageTransitionsTheme(
          builders: {
            TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          },
        ),
      ),
    );
  }
}
