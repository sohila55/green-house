import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:green_house/view/login/login_view.dart';
import 'package:green_house/view/resources/asset_manager.dart';
import 'package:green_house/view/resources/font_manager.dart';
import 'package:green_house/view/resources/string_manager.dart';
import 'package:green_house/view/resources/value_manager.dart';

import '../resources/button.dart';
import '../resources/color_manager.dart';

class FaceId extends StatefulWidget {
  const FaceId({Key? key}) : super(key: key);

  @override
  State<FaceId> createState() => _FaceIdState();
}

class _FaceIdState extends State<FaceId> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        leading:  IconButton(onPressed: (){Get.to(LoginView());},
            icon: Icon(Icons.arrow_back,color: ColorManager.white,)),
      ),
      backgroundColor: ColorManager.primary,
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            
              Text(StringConstants.faceidtitle1,
                 textAlign: TextAlign.center,
                 style: TextStyle(
                     color: ColorManager.white,
                     fontFamily: FontConstant.fontfamily,
                 fontSize: FontSizeManager.s18,),),

            
            
            Text(StringConstants.faceidtitle2,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ColorManager.white,
                  fontFamily: FontConstant.fontfamily,
                  fontSize: FontSizeManager.s22,),),


      Text(StringConstants.faceidsubtitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ColorManager.lightGray,
                  fontFamily: FontConstant.fontfamily,
                  fontSize: FontSizeManager.s12,),),


            SvgPicture.asset(ImageAssets.faceicon),
            
            Text(StringConstants.faceidsubtitle2,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ColorManager.lightGray,
                fontFamily: FontConstant.fontfamily,
                fontSize: FontSizeManager.s12,),),


             Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    MaterialButton(
                      onPressed: () {  },
                        color: ColorManager.white,

                        padding: EdgeInsets.symmetric(horizontal:50,vertical: AppPadding.p10),

                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(AppSize.s20),
                            borderSide: BorderSide(color:  ColorManager.white)),
                      child: Text(StringConstants.button4,style: TextStyle(
                          color: ColorManager.lightgreen,
                          fontFamily: FontConstant.fontfamily,
                          fontSize: FontSizeManager.s22
                      ),textAlign: TextAlign.center,
                      )
                        ),


                    MaterialButton(
                        onPressed: () {  },
                        color: ColorManager.lightgreen,
                        padding: EdgeInsets.symmetric(horizontal:50,vertical: AppPadding.p10),

                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(AppSize.s20),
                            borderSide: BorderSide(color: ColorManager.lightgreen )),
                        child: Text(StringConstants.button4,style: TextStyle(
                            color: ColorManager.white,
                            fontFamily: FontConstant.fontfamily,
                            fontSize: FontSizeManager.s22
                        ),textAlign: TextAlign.center,
                        )
                    )


                  ],
                ),
            
            

          ],
        ),
      
      
    );
  }
}
