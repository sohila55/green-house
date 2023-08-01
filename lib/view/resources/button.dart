


import 'package:flutter/material.dart';

import 'package:green_house/view/resources/value_manager.dart';

import 'color_manager.dart';
import 'font_manager.dart';

class Button extends StatelessWidget {
   Button({Key? key, required this.text,required this.onpressed,}) : super(key: key);
   final text;
  final void Function()? onpressed;

  @override
  Widget build(BuildContext context) {

    return Container(
      margin:  EdgeInsets.symmetric(horizontal:AppSize.s10 ,vertical: AppSize.s0,),
      height: AppSize.s50,
      width: AppSize.s90,
      child: MaterialButton(
        onPressed:onpressed,
          textColor: Colors.white,
          color: ColorManager.lightgreen,
          child:  Text(text,textAlign: TextAlign.center,
            style: TextStyle(fontFamily: FontConstant.fontfamily,
              fontSize: FontSizeManager.s22),)),
    );









  }
}
