
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_house/view/resources/route_manager.dart';

abstract class PinCodeController extends GetxController{

  pincode();
  gotoResetPassword();
}
class PinCodeControllerImp extends PinCodeController{

  late TextEditingController pinOneController;
  late TextEditingController pinTwoController;
  late TextEditingController pinThreeController;
  late TextEditingController pinFourController;
  late TextEditingController textEditingController;
  late OutlineInputBorder outlineInputBorder;
  @override
  pincode() {
  }

  @override
  void onInit(){
     pinOneController = TextEditingController();
     pinTwoController = TextEditingController();
     pinThreeController = TextEditingController();
     pinFourController = TextEditingController();

    super.onInit();
  }
  @override
  void dispose(){
    pinOneController.dispose();
    pinTwoController.dispose();
    pinThreeController.dispose();
    pinFourController.dispose();
    super.dispose();
  }

  @override
  gotoResetPassword() {
   // Get.toNamed(Routes.forgotpasswordRoute);
  }



}