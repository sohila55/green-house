
import 'package:flutter/material.dart';
import 'package:green_house/view/resources/color_manager.dart';
import 'package:green_house/view/resources/font_manager.dart';
import 'package:green_house/view/resources/string_manager.dart';
import 'package:green_house/view/resources/value_manager.dart';

class DropDownButton extends StatefulWidget {
   DropDownButton({Key? key,required this.hint,required this.list,required this.dropdownvalue,required this.controller,
   }) : super(key: key);
   final controller;
   final hint;
   final list;
   final dropdownvalue;
  @override
  State<DropDownButton> createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
  late var dropdownvalue=StringConstants.gender;

late var list=[
  StringConstants.gender,
  StringConstants.male,
  StringConstants.female];
  @override
  Widget build(BuildContext context) {

    return
     Container(
        margin: const EdgeInsets.only(right: AppMargin.m30,left: AppMargin.m30,top: AppMargin.m10),

        height: AppSize.s50,
      decoration: BoxDecoration(
      color: ColorManager.lightgreen,

      borderRadius: BorderRadiusDirectional.all(Radius.circular(AppSize.s10))),

      child: DropdownButton(

        alignment: Alignment.centerRight,
        focusColor:ColorManager.lightgreen ,
          dropdownColor: ColorManager.lightgreen,
          isExpanded: true,
            borderRadius: BorderRadius.circular(AppSize.s30),
            value:dropdownvalue,
            icon: Icon(Icons.expand_more_sharp,color: ColorManager.white,),
            style: TextStyle(color: ColorManager.white,fontSize: AppPadding.p18,fontFamily: FontConstant.fontfamily),

          items: list.map((e) => DropdownMenuItem
            (child: Text('$e',style: TextStyle(fontSize: FontSizeManager.s18)),
            value: e,))
              .toList(),

          onChanged:(String? val) {
              setState((){
                dropdownvalue= val as String ;

              }
              );
            },


        ),

    );

  }
}
