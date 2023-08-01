
import 'dart:ffi';

import 'package:get/get.dart';
import 'package:green_house/view/resources/string_manager.dart';

ValidInput(String val, int min ,int max){

  if(val.length>max){
    return StringConstants.max ;
  }if(val.isEmpty){
    return  StringConstants.empty;
  }
  if(val.length< min){
    return StringConstants.min;
  }

}


ValidInputemail( String val, int min ,int max,String symbol){

  if(val.length>max){
    return StringConstants.max ;
  }if(val.isEmpty){
    return  StringConstants.empty;
  }
  if(val.length< min){
    return StringConstants.min;
  }
  if (val.isEmail!= symbol ){
    return StringConstants.char;
  }
}