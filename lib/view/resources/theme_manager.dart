import 'package:flutter/material.dart';

import 'color_manager.dart';
import 'font_manager.dart';
import 'style_manager.dart';
import 'value_manager.dart';

ThemeData getApplicationTheme(){
  return ThemeData(
    // mainColor
    primaryColor: ColorManager.primary,
    disabledColor: ColorManager.grey1,
    //splashColor: ColorManager.lightPrimary,  // ripple effect color

    // cardview theme
    cardTheme: CardTheme(
        color: ColorManager.lightgreen,
        shadowColor: ColorManager.Gray,
        elevation: AppSize.s4
    ),

    // appbar theme
    appBarTheme: AppBarTheme(
        centerTitle: true,
        shadowColor: ColorManager.primary,
        color: ColorManager.primary,
        elevation: AppSize.s0,
        titleTextStyle: getregularstyle(color: ColorManager.white,fontsize: FontSizeManager.s16, fontFamily: FontConstant.fontfamily)
    ),

    // button theme
  buttonTheme: ButtonThemeData(
  shape: const StadiumBorder(),
  disabledColor: ColorManager.grey1,
  buttonColor:  ColorManager.lightgreen,
  //splashColor:  ColorManager.lightPrimary,
  ),

    // elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
        style:ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal:50,vertical: AppPadding.p10),
            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSize.s30)) ,
            primary: ColorManager.lightgreen,
            textStyle:TextStyle(color: ColorManager.lightgreen,fontSize:FontSizeManager.s22,fontFamily: FontConstant.fontfamily)
        )
    ),


    // text theme
    textTheme: TextTheme(
        headlineLarge:getregularstyle(color: ColorManager.lightgreen, fontFamily: FontConstant.fontfamily),
      bodyLarge:getregularstyle(color: ColorManager.white, fontFamily: FontConstant.fontfamily,) ,
        displayLarge:getregularstyle(color: ColorManager.white, fontFamily: FontConstant.fontfamily),
        bodySmall: getregularstyle(color: ColorManager.white, fontFamily: FontConstant.fontfamily,)
    ),


    // input decoration theme
     inputDecorationTheme: InputDecorationTheme(
          // content padding
     contentPadding: EdgeInsetsDirectional.all(AppPadding.p10),
      //hint style
     hintStyle: getregularstyle(color: ColorManager.white,fontsize: FontSizeManager.s16,
       fontFamily: FontConstant.fontfamily,
     ),
      //label style
      labelStyle: getregularstyle(color: ColorManager.lightgreen,fontsize: FontSizeManager.s14,
          fontFamily:  FontConstant.fontfamily),

       // error style
       errorStyle: getregularstyle(color: ColorManager.error, fontFamily: FontConstant.fontfamily ),


      //enabled border style
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.lightgreen,width: AppSize.s1_5),
          borderRadius: BorderRadius.circular(AppSize.s15)),

      //focused border
      focusedBorder: OutlineInputBorder(
          borderSide:BorderSide(color: ColorManager.lightgreen,width: AppSize.s1_5),
          borderRadius: BorderRadius.all(Radius.circular(FontSizeManager.s20))),

      //error border style


      errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.error,width: AppSize.s1_5),
          borderRadius: BorderRadius.circular(AppSize.s20)),


      // focusederror border style
      focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s20)),
          borderSide: BorderSide(width: AppSize.s1_5,color: ColorManager.lightgreen)
      )


  )
  );
}