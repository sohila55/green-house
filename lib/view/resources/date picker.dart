import 'package:flutter/material.dart';
import 'package:green_house/view/resources/string_manager.dart';
import 'package:green_house/view/resources/value_manager.dart';

import 'color_manager.dart';
import 'font_manager.dart';

class Data_Picker extends StatefulWidget {
  const Data_Picker({super.key});

  @override
  State<Data_Picker> createState() => _Data_PickerState();
}

class _Data_PickerState extends State<Data_Picker> {

  DateTime date = DateTime.now();
  void _showDatePicker(){
    showDatePicker(
      context:context ,
      selectableDayPredicate: (day) {
        return false;
      },

      firstDate:DateTime(2000) ,
      initialDate:date,
      lastDate:DateTime(2025)
    ).then((value){
      setState(() {
        date=value!;
      });
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap:_showDatePicker,
      child: Container(
        height: AppSize.s50,
          margin :  EdgeInsets.symmetric(vertical:AppSize.s10,horizontal:AppSize.s30),
        decoration: BoxDecoration(
            color: ColorManager.lightgreen,
            borderRadius: BorderRadiusDirectional.all(Radius.circular(AppSize.s10))),
        child: Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Text('${date.day}-${date.month}-${date.year}',
            style:TextStyle(color: ColorManager.white,
              fontSize: FontSizeManager.s16,
            fontFamily: FontConstant.fontfamily,
          ),),
        )),


    );
  }
}
