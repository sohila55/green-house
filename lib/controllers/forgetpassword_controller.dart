


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_house/view/resources/route_manager.dart';

abstract class ForgotPasswordController extends GetxController{

  checkemail();
  gotoPincode();
}
class ForgotPasswordControllerImp extends ForgotPasswordController{
  late  TextEditingController email;

  @override
  checkemail() {
  }

  @override
  void onInit(){
    email= TextEditingController();
    super.onInit();
  }
  @override
  void dispose(){
    email.dispose();
    super.dispose();
  }


  @override
  gotoPincode() {
    //Get.toNamed(Routes.PinCode);
  }


}