import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:green_house/view/onboarding/onboardingscreen.dart';
import 'package:green_house/view/userAccount/useraccount.dart';

import '../join us/join_us.dart';
import '../login/login_view.dart';
import '../resources/route_manager.dart';
import '../resources/theme_manager.dart';
import '../splash/splash_view.dart';


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(

      debugShowCheckedModeBanner: false,

      onGenerateRoute: RouteGenrator.getRoute,
      initialRoute: Routes.splashRoute,
      theme: getApplicationTheme(),
      home: SplashView (),

    );
  }
}
