import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_house/view/register/register_view.dart';
import 'package:green_house/view/resources/asset_manager.dart';
import 'package:green_house/view/resources/value_manager.dart';

import '../resources/color_manager.dart';
import '../resources/font_manager.dart';
import '../resources/string_manager.dart';

class JoinUs extends StatefulWidget {
  const JoinUs({Key? key}) : super(key: key);

  @override
  State<JoinUs> createState() => _JoinUsState();
}

class _JoinUsState extends State<JoinUs> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(leading: IconButton(onPressed: (){},
          icon: Icon(Icons.arrow_back,color: ColorManager.white,) )),
        backgroundColor: ColorManager.primary,
        body:SafeArea(
          child: ListView(
          children: [

            Center(
              child: Image.asset(ImageAssets.splashimage,
                height:AppSize.s200, width: AppSize.s200),
            ),
            SizedBox(height: AppSize.s15,),
            TextTitle(),
            SizedBox(height: AppSize.s15,),

            textfield(ontap: (){},
                text: StringConstants.facebook,
                icon:Icon(Icons.facebook,color: ColorManager.white,size: AppSize.s35,)  ),

            SizedBox(height: AppSize.s15,),

            textfield(ontap: (){},
                text: StringConstants.google,

                icon:Icon(Icons.g_mobiledata,color: ColorManager.white,size: AppSize.s35,)  ),

            SizedBox(height: AppSize.s15,),

            textfield(ontap: (){},
                text: StringConstants.apple,
                icon:Icon(Icons.apple,color: ColorManager.white,size: AppSize.s35,)  ),

            SizedBox(height: AppSize.s10,),

            Row(children:[ Expanded(child: Divider(color: ColorManager.lightGray,endIndent: AppPadding.p30,indent:AppPadding.p30)),

              Text(StringConstants.or,
                style: TextStyle(color: ColorManager.lightGray,
                    fontFamily: FontConstant.fontfamily,fontSize: FontSizeManager.s12),),
              Expanded(child: Divider(color: ColorManager.lightGray, endIndent: AppPadding.p30,indent:AppPadding.p30 ,)),
            ]),
            SizedBox(height: AppSize.s10,),

            textfield(ontap: (){},
                text: StringConstants.signemail,
                icon:Icon(Icons.email,color: ColorManager.white,size: AppSize.s35,)  ),

            SizedBox(height: AppSize.s20,),

            Center(
              child: RichText(text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(text: StringConstants.textspan,
                        style: TextStyle(color: ColorManager.lightGray,fontSize:FontSizeManager.s18 ,
                            fontFamily: FontConstant.fontfamily)),

                    TextSpan(children: [],
                      text: StringConstants.buttonSignUp,style: TextStyle(
                          color: ColorManager.lightgreen,fontSize:FontSizeManager.s20,
                          fontFamily: FontConstant.fontfamily
                      ),
                      recognizer: TapGestureRecognizer(
                      )..onTap = () => Get.to(RegisterView()),
                    )
                  ]


              ),

              ),
            ),






          ],
      ),
        )

    );
  }
}

TextTitle(){

  return Center(
    child: Text(StringConstants.joinus,style: TextStyle(
        color: ColorManager.white,
        fontFamily: FontConstant.fontfamily,
        fontSize: FontSizeManager.s30
    ),textAlign: TextAlign.center,
      
    ),
  );
}


class textfield extends StatelessWidget {
final String text;
 final  Icon  icon;
final  Function()? ontap;
textfield({ required this.text, this.ontap, required this.icon,});
  @override
  Widget build(BuildContext context) {
    return InkWell(

      onTap:ontap ,
      child:Container(

        height:AppSize.s50 ,
          margin: EdgeInsets.symmetric(horizontal: AppPadding.p30),
          decoration:BoxDecoration(
            color: ColorManager.lightgreen,
            borderRadius: BorderRadius.circular(AppSize.s30),

          ) ,

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                icon,
                Text(text,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: ColorManager.white,
                    fontSize: FontSizeManager.s20,
                    fontFamily: FontConstant.fontfamily,),),

              ],
            ),
          ),
      )




    );
  }
}
