import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:green_house/view/forgetpassword/forgetpassword_view.dart';
import 'package:green_house/view/join%20us/join_us.dart';
import 'package:green_house/view/userAccount/useraccount.dart';
import '../../controllers/login_controller.dart';
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


class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {


  late  var ichecked=false;


  GlobalKey<FormState> formstate = GlobalKey();
  bool isloading =false;
  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());

    return SafeArea(
      child: Form(
        key: formstate,
        child: Scaffold (
          appBar: AppBar(
            backgroundColor: ColorManager.primary,
            elevation: 0,
            leading: IconButton(onPressed: (){Get.to(OnboardingView());},
              icon: Icon(Icons.arrow_back,color: ColorManager.white,)),
          ),
          backgroundColor: ColorManager.primary,
          body:  SafeArea(
            child: Center(

                child: ListView(
                      children: [
                        Image.asset(ImageAssets.splashimage,height: AppSize.s250,width: AppSize.s250,),

                        SizedBox(height: 10,),
                        Text(StringConstants.LoginString,textAlign:TextAlign.center,softWrap: true,style: TextStyle(color: ColorManager.white,
                            fontFamily: FontConstant.fontfamily,fontSize: FontSizeManager.s35),),

                        CustomFormField(
                            hint: " Email ",
                            mycontroller: controller.email,
                            obsecure: false,
                            preIcon: Icon(Icons.email_outlined,color:ColorManager.white,),
                            valid: (val){
                              return ValidInputemail(val!,4 , 20, '@');},
                          ),

                        CustomFormField(
                            hint: " Password",
                            obsecure: true,
                            suIcon: IconButton(onPressed: (){
                              setState(() {
                                icon: Icon(Icons.remove_red_eye_outlined,color: ColorManager.white,);

                              });
                            }, icon: Icon(Icons.remove_red_eye_rounded,color: ColorManager.white,)),
                            preIcon: Icon(Icons.lock_outline_rounded,color:ColorManager.white,),

                            mycontroller: controller.password, valid: (val){
                          return ValidInput(val!, 4, 10,);

                        }),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: AppPadding.p20),
                              child: Checkbox(
                                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                side: BorderSide(color: ColorManager.lightgreen,width: 2.0),
                                activeColor: ColorManager.lightgreen,
                                value: ichecked ,
                                onChanged: (bool?value) {
                                  setState(() {
                                    ichecked = value!;
                                  });

                                },),
                            ),
                            Text(StringConstants.checkbox,style: TextStyle(color: ColorManager.white,
                                fontFamily: FontConstant.fontfamily,fontSize: FontSizeManager.s14)
                            )],
                        ),


                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p30,vertical: AppPadding.p8),
                          child: Button(text: StringConstants.buttonSignIn,onpressed: (){
                            Get.to(RegisterView());
                          },),
                        ),

                        Center(
                          child:  TextButton(onPressed: (){Get.to(PasswordView());}, child: Text(StringConstants.textbutton,style:
                            TextStyle(color: ColorManager.lightgreen,fontFamily: FontConstant.fontfamily,fontSize: FontSizeManager.s14),)),
                          ),


                        Row(children:[ Expanded(child: Divider(color: ColorManager.lightGray)),

                          Text(StringConstants.Logindivider,
                            style: TextStyle(color: ColorManager.lightGray,
                                fontFamily: FontConstant.fontfamily,fontSize: FontSizeManager.s12),),
                          Expanded(child: Divider(color: ColorManager.lightGray)),
                        ]),


                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            CircleAvatar(
                              backgroundColor:ColorManager.primary ,
                              child: IconButton(onPressed: (){},
                                  icon: Icon(Icons.facebook,color: ColorManager.white,size: AppSize.s30,)),
                            ),

                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: AppPadding.p10),
                              child: CircleAvatar(
                                backgroundColor:ColorManager.primary ,
                                child: IconButton(onPressed: (){},
                                    icon: Icon(Icons.facebook,color: ColorManager.white,size: AppSize.s30,)),
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor:ColorManager.primary ,
                              child: IconButton(onPressed: (){},
                                  icon: Icon(Icons.apple,color: ColorManager.white,size: AppSize.s30,)),
                            )
                          ],
                        ),

                        SizedBox(height: AppPadding.p8,),
                        Center(
                          child: RichText(text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(text: StringConstants.login3,
                                    style: TextStyle(color: ColorManager.lightGray,fontSize:FontSizeManager.s12 ,
                                        fontFamily: FontConstant.fontfamily)),

                                TextSpan(children: [],
                                    text: StringConstants.buttonSignUp,style: TextStyle(
                                    color: ColorManager.lightgreen,fontSize:FontSizeManager.s14,
                                    fontFamily: FontConstant.fontfamily
                                ),
                                    recognizer: TapGestureRecognizer(
                                    )..onTap = () => Get.to(UserAccount()),
                                )
                              ]


                          ),

                          ),
                        ),




      ]),
              ),
            ),
          ),
          ),


    );

  }
}
