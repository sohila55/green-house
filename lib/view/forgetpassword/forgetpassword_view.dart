import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_house/view/login/login_view.dart';
import 'package:green_house/view/pincode/pincode.dart';

import '../../controllers/forgetpassword_controller.dart';
import '../onboarding/onboardingscreen.dart';
import '../register/register_view.dart';
import '../resources/TextFormField.dart';
import '../resources/asset_manager.dart';
import '../resources/button.dart';
import '../resources/color_manager.dart';
import '../resources/font_manager.dart';
import '../resources/string_manager.dart';
import '../resources/valid.dart';
import '../resources/value_manager.dart';

class PasswordView extends StatelessWidget {
   PasswordView({Key? key}) : super(key: key);
   GlobalKey<FormState> formstate = GlobalKey();
  @override
  Widget build(BuildContext context) {
    ForgotPasswordControllerImp controller = Get.put(ForgotPasswordControllerImp());
    return Form(
      key: formstate,

      child: Scaffold(

        appBar: AppBar(
          leading: IconButton(onPressed: (){Get.to(LoginView());},
              icon: Icon(Icons.arrow_back,color: ColorManager.white,)),
        ),
        backgroundColor: ColorManager.primary,
        body:  SafeArea(
          child: Center(

            child: ListView(
                children: [
                  Image.asset(ImageAssets.splashimage,height: AppSize.s250,width: AppSize.s250,),

                  SizedBox(height: 10,),
                  TitleText(),

                  CustomFormField(
                    hint: " Email ",
                    mycontroller: controller.email,
                    obsecure: false,
                    preIcon: Icon(Icons.email_outlined,color:ColorManager.white,),
                    valid: (val){
                      return ValidInputemail(val!,4 , 20, '@');},
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: AppPadding.p30,vertical: AppPadding.p20),
                    child: Button(text: StringConstants.check,onpressed: (){
                      if(formstate.currentState!.validate()){
                        Get.to(PinCode());

                      }else{
                        print('not valid');
                      }
                    },),
                  ),






                ]),
          ),
        ),




      ),
    );
  }
}

TitleText(){
  return Text(StringConstants.checkemail,
      textAlign:TextAlign.center,
      style: TextStyle(
      color: ColorManager.white,
          fontFamily: FontConstant.fontfamily,
          fontSize: FontSizeManager.s35));

}