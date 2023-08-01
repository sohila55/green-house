
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_house/view/resources/route_manager.dart';

abstract class RegisterController extends GetxController{

  register();
  gotoUserAccount();
}
class RegisterControllerImp extends RegisterController{

  late  TextEditingController fullname;
  late  TextEditingController nickname;
  late  TextEditingController dateofbirth;
  late  TextEditingController email;
  late  TextEditingController phone;
  late  TextEditingController gender;

  @override
  register() {
  }

  @override
  void onInit(){
    fullname= TextEditingController();
    nickname= TextEditingController();
    dateofbirth= TextEditingController();
    email= TextEditingController();
    phone= TextEditingController();
    gender= TextEditingController();

    super.onInit();
  }
  @override
  void dispose(){
    fullname.dispose();
    nickname.dispose();
    dateofbirth.dispose();
    email.dispose();
    phone.dispose();
    gender.dispose();
    super.dispose();
  }


  @override
  gotoUserAccount() {
    //Get.toNamed(Routes.PinCode);
  }


}