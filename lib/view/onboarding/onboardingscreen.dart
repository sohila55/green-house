import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:green_house/view/resources/FrostedGlassBox.dart';

import '../login/login_view.dart';
import '../resources/asset_manager.dart';
import '../resources/button.dart';
import '../resources/color_manager.dart';
import '../resources/font_manager.dart';
import '../resources/string_manager.dart';
import '../resources/value_manager.dart';

class OnboardingView extends StatefulWidget {
   OnboardingView({Key? key}) : super(key: key);



  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
final PageController _pageController= new PageController(initialPage: 0);
  int _activePage =0;

  final List<Widget>_pages=[
    pageone(),
    pagetwo(),
    pagethree(),
  ];


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     backgroundColor: ColorManager.primary,
      body: Stack(
        children: [
          PageView.builder(
              controller: _pageController,
              onPageChanged: (int page){
                setState(() {
                  _activePage=page;
                });
              },
              itemCount: _pages.length,
              itemBuilder: (BuildContext context, int index){
                return _pages[index % _pages.length];
              }),
          Positioned(
            bottom: 50,
              left: 0,
              right: 0,
              height: 100,
              child:Container(
                //color: ColorManager.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(_pages.length,
                          (index) => Padding(padding:EdgeInsets.symmetric(horizontal: AppPadding.p10) ,
                            child:InkWell(

                              onTap: (){
                                _pageController.animateToPage(index, duration: Duration(milliseconds: 500),
                                    curve: Curves.bounceIn);
                              },
                              child: CircleAvatar(
                                radius: 6,
                                backgroundColor: _activePage == index
                                ? ColorManager.lightgreen : ColorManager.white,
                              ),
                            ) ,)),
                ),
              )
          ),
        ],
      ),








    );
  }
}


class pageone extends StatelessWidget {  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:ListView(children: [
            Stack(
              children: [Container(
                height: AppSize.s400,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ImageAssets.onboardingimage),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(AppSize.s80),
                        bottomRight: Radius.circular(AppSize.s80))),
                ),

                  Container(
                    margin: EdgeInsets.only(top:350,left: 150, ),
                    child: FrostedGlassBox(
                        Width:80.0 , Height:80.0 ,
                        Child: Container(
                          height: 50.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                            image:DecorationImage(image: AssetImage(ImageAssets.logoimage),)
                          ),
                        )),
                  ),

]),

            SizedBox(height: AppSize.s20,),

            Text(StringConstants.textonboarding11,textAlign: TextAlign.center,
                  style:TextStyle(color: ColorManager.lightgreen,fontSize: AppSize.s40,
                fontFamily: FontConstant.fontfamily,) ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(StringConstants.growup,textAlign: TextAlign.center,
                style:TextStyle(color: ColorManager.lightgreen,fontSize: AppSize.s40,
                  fontFamily: FontConstant.fontfamily,) ),

        SvgPicture.asset(ImageAssets.hand,),
          ],
        ),


        SizedBox(height:AppSize.s10 ,),
        Text(StringConstants.textonboarding12,textAlign: TextAlign.center,
            style:TextStyle(color: ColorManager.white,fontSize: AppSize.s16,fontWeight: FontWeightMnager.medium
            ) ),








        SizedBox(height:AppSize.s50,),
           Button(text: StringConstants.button1,onpressed: (){Get.to(LoginView());},),





    ]));
  }
}
class pagetwo extends StatelessWidget {  @override
  Widget build(BuildContext context) {
  return SafeArea(
      child: ListView(
          children: [
            Stack(
                children: [Container(
                  height: AppSize.s400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ImageAssets.onboardingimage),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(AppSize.s80),
                          bottomRight: Radius.circular(AppSize.s80))),
                ),

                  Container(
                    margin: EdgeInsets.only(top:350,left: 150, ),
                    child: FrostedGlassBox(
                        Width:80.0 , Height:80.0 ,
                        Child: Container(
                          height: 50.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                              image:DecorationImage(image: AssetImage(ImageAssets.logoimage),)
                          ),
                        )),
                  ),

                ]),

            SizedBox(height: AppSize.s20,),
            Center(
              child: Text(StringConstants.textonboarding21,textAlign: TextAlign.center,
                  style: TextStyle(color: ColorManager.lightgreen,fontSize: AppSize.s40,
                fontFamily: FontConstant.fontfamily,) ),
            ),
            SizedBox(height:AppSize.s10 ,),
            Text(StringConstants.textonboarding12,textAlign: TextAlign.center,
                style:TextStyle(color: ColorManager.white,fontSize: AppSize.s16,fontWeight: FontWeightMnager.medium
                ) ),


            SizedBox(height:AppSize.s50 ,),

            Button(text: StringConstants.button2,onpressed: (){Get.to(LoginView());},),

          ],),
      );
  }
}

class pagethree extends StatelessWidget {  @override
  Widget build(BuildContext context) {
   return SafeArea(
     child:ListView(children: [
       Stack(
           children: [Container(
             height: AppSize.s400,
             decoration: BoxDecoration(
                 image: DecorationImage(
                     image: AssetImage(ImageAssets.onboardingimage),
                     fit: BoxFit.cover),
                 borderRadius: BorderRadius.only(
                     bottomLeft: Radius.circular(AppSize.s80),
                     bottomRight: Radius.circular(AppSize.s80))),
           ),

             Container(
               margin: EdgeInsets.only(top:350,left: 150, ),
               child: FrostedGlassBox(
                   Width:80.0 , Height:80.0 ,
                   Child: Container(
                     height: 50.0,
                     width: 50.0,
                     decoration: BoxDecoration(
                         image:DecorationImage(image: AssetImage(ImageAssets.logoimage),)
                     ),
                   )),
             ),

           ]),


       SizedBox(height: AppSize.s20,),
         Center(
           child: Text(StringConstants.textonboarding31,textAlign: TextAlign.center,
               style: TextStyle(color: ColorManager.lightgreen,fontSize: AppSize.s40,
             fontFamily: FontConstant.fontfamily,) ),
         ),
         SizedBox(height:AppSize.s30 ,),
       Text(StringConstants.textonboarding12,textAlign: TextAlign.center,
           style:TextStyle(color: ColorManager.white,fontSize: AppSize.s16,fontWeight: FontWeightMnager.medium
           ) ),


       SizedBox(height:AppSize.s90,),

       Button(text: StringConstants.button2,onpressed: (){Get.to(LoginView());},),

     ],),

   );
  }
}
