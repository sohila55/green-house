import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:green_house/view/login/login_view.dart';
import 'package:green_house/view/pincode/pincode.dart';
import 'package:green_house/view/resources/asset_manager.dart';
import 'package:green_house/view/resources/dropdownbutton.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../../controllers/register_controller.dart';
import '../resources/TextFormField.dart';
import '../resources/color_manager.dart';
import '../resources/date picker.dart';
import '../resources/string_manager.dart';
import '../resources/valid.dart';
import '../resources/value_manager.dart';

class RegisterView extends StatefulWidget {
   RegisterView({Key? key}) : super(key: key);

  @override


  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  String dropdownvalue = ' ';
  GlobalKey<FormState> formstate = GlobalKey();

  @override
  Widget build(BuildContext context) {
    RegisterControllerImp controller = Get.put(RegisterControllerImp());
    return  Form(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){Get.to(LoginView());},
              icon: Icon(Icons.arrow_back,color: ColorManager.white,)),
        ),
        backgroundColor: ColorManager.primary,
        body:ListView(
              children: [
                Image.asset(ImageAssets.accountpicture,alignment: Alignment.topCenter,width: 200,height: 200,),

                CustomFormField(hint: 'Full Name', mycontroller:controller.fullname,
                    valid: (val){return ValidInput(val!, 4, 20);}, obsecure: false),



                CustomFormField(hint: 'Nick Name', mycontroller: controller.nickname,
                    valid: (val){return ValidInput(val!, 4, 20);}, obsecure: false),


              //  CustomFormField(hint: 'Date Of Birth', mycontroller: controller.dateofbirth, valid:(val){return ValidInput(val!, 6, 10);} , obsecure: false),

                Data_Picker(),

                CustomFormField(hint: 'Email', mycontroller: controller.email,
                    valid: (val){return ValidInputemail(val!, 6, 40, '@');},
                    obsecure: false,
                  suIcon: Icon(Icons.email_outlined,color:ColorManager.white,),
                ),

                Container(
                   height: AppSize.s50,
                   decoration: BoxDecoration(
                       color: ColorManager.lightgreen,
                       borderRadius: BorderRadiusDirectional.all(Radius.circular(AppSize.s10))),
                   margin: EdgeInsets.only(right: AppMargin.m30,left: AppMargin.m30,bottom: AppMargin.m10,top: AppMargin.m10),
                   child: IntlPhoneField(
                     decoration: InputDecoration(

                         filled:true ,
                         fillColor: ColorManager.lightgreen),
                      controller: controller.phone,
                      showDropdownIcon: true,
                      showCountryFlag: true,
                      initialCountryCode: StringConstants.eygptsign,
                      cursorColor: ColorManager.white,
                      keyboardType:TextInputType.number ,
                      languageCode: "en",
                      onChanged: (phone) {
                        print(phone.completeNumber);
                      },
                      onCountryChanged: (country) {
                        print('Country changed to: ' + country.name);
                      },

                    ),
                 ),

                  DropDownButton(
                        controller: controller.gender,
                        dropdownvalue: StringConstants.gender,
                        list:[
                          StringConstants.gender,
                          StringConstants.male,
                          StringConstants.female],
                      hint: StringConstants.gender,
                      ),



                SizedBox(height: AppMargin.m14,),
                Center(
                  child: ElevatedButton(
                      child:Text(StringConstants.button3,),
                    onPressed: () {
                      Get.to(PinCode());

                      /* if(formstate.currentState!.validate()){
                        Get.to(UserAccount());

                      }else{
                        print('not valid');

                    }*/
                      }
                  ),
                )
              ],
            ),

    ),

    );
  }
}
