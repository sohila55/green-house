import 'package:flutter/material.dart';
import 'package:green_house/view/face%20id/faceid.dart';
import 'package:green_house/view/resetpassword/resetpassword.dart';
import 'package:green_house/view/userAccount/useraccount.dart';
import '../join us/join_us.dart';
import '../onboarding/onboardingscreen.dart';
import '../forgetpassword/forgetpassword_view.dart';
import '../login/login_view.dart';
import '../pincode/pincode.dart';
import '../register/register_view.dart';
import '../resetpassword/resetpassword.dart';
import '../splash/splash_view.dart';

class Routes {
  static const String splashRoute="/";
  static const String onboardingscreenRoute="/onboardingscreen";
  static const String loginRoute="/login";
  static const String registerRoute="/register";
  static const String forgotpasswordRoute="/forgotpassword";
  static const String mainRoute="/main";
  static const String storedetailsRoute="/storedetails";
  static const String PinCode="/pincode";
  static const String UserAccount="/useraccount";
  static const String resetpassword="/resetpassword";
  static const String joinus="/joinus";
  static const String faceid="/faceid";




}
  class RouteGenrator {
    static Route<dynamic> getRoute(RouteSettings settings) {
      switch (settings.name) {
        case Routes.splashRoute:
          return MaterialPageRoute(builder: (context) => SplashView(),);
        case Routes.onboardingscreenRoute:
          return MaterialPageRoute(builder: (context) => OnboardingView(),);
        case Routes.loginRoute:
          return MaterialPageRoute(builder: (context) => const LoginView(),);
        case Routes.forgotpasswordRoute:
          return MaterialPageRoute(builder: (context) =>  PasswordView(),);
        case Routes.PinCode:
          return MaterialPageRoute(builder: (context) => const PinCode(),);
        case Routes.registerRoute:
          return MaterialPageRoute(builder: (context) =>  RegisterView(),);
        case Routes.UserAccount:
          return MaterialPageRoute(builder: (context) => const UserAccount(),);
        case Routes.resetpassword:
          return MaterialPageRoute(builder: (context) =>  ResetPassword(),);
        case Routes.joinus:
          return MaterialPageRoute(builder: (context) =>  JoinUs(),);
        case Routes.faceid:
          return MaterialPageRoute(builder: (context) =>  FaceId(),);

        default:
          return UnDefinedRoute();
      }
    }

    static Route<dynamic> UnDefinedRoute() {
      return MaterialPageRoute(builder: (context) =>
          Scaffold(

          ));
    }
  }
