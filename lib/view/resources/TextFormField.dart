import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../resources/value_manager.dart';

import 'color_manager.dart';
import 'font_manager.dart';

class CustomFormField extends StatelessWidget {
   CustomFormField({Key? key,required this.hint,
    required this.mycontroller,required this.valid, this.preIcon, this.suIcon, required this.obsecure, }) : super(key: key);
  final String hint;
  final String Function (String?)? valid;
  final TextEditingController mycontroller;
  final bool obsecure;
  final preIcon;
  final suIcon;

  @override
  Widget build(BuildContext context) {

    return  SafeArea(

          child:Padding(
            padding:  EdgeInsets.symmetric(vertical:AppSize.s10,horizontal:AppSize.s30),
            child: Container(
              height: AppSize.s50,
              decoration: BoxDecoration(
                  color: ColorManager.lightgreen,

                  borderRadius: BorderRadiusDirectional.all(Radius.circular(AppSize.s10))),

              child: TextFormField(

                validator:valid,
                controller: mycontroller,
                obscureText: obsecure,
                cursorColor: ColorManager.white,
                decoration:InputDecoration(
                  prefixIcon: preIcon,
                  suffixIcon: suIcon,

                  hintText: hint,
                ) ,





        ),
            ),
          ));




  }
}
