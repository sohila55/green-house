

 import 'package:flutter/material.dart';

import 'font_manager.dart';


TextStyle gettextstyle(double fontsize , FontWeight fontwieght , Color color ){

 return TextStyle(
     fontSize: fontsize,
     fontWeight: fontwieght,
     fontFamily : FontConstant.fontfamily,
     color: color,
     );

}

// regular style

 TextStyle getregularstyle({double fontsize=FontSizeManager.s12, color, required String fontFamily}){
 return gettextstyle(fontsize,FontWeightMnager.regular,color);
 }
