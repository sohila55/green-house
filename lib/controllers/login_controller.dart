
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_house/view/resources/route_manager.dart';

abstract class LoginController extends GetxController{

  login();
  gotoSignUp();
  gotoForgetPassword();
}
class LoginControllerImp extends LoginController{
  late  TextEditingController email;
  late TextEditingController password ;

  @override
  login() {
  }

  @override
  void onInit(){
    email= TextEditingController();
    password = TextEditingController();
    super.onInit();
  }
  @override
  void dispose(){
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  gotoForgetPassword() {
   // Get.toNamed(Routes.forgotpasswordRoute);
  }

  @override
  gotoSignUp() {
   // Get.toNamed(Routes.registerRoute);
  }


}