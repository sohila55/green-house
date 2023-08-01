import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/parser.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:green_house/view/bottomBar/chat.dart';
import 'package:green_house/view/bottomBar/profile.dart';
import 'package:green_house/view/bottomBar/settings.dart';
import 'package:green_house/view/resources/string_manager.dart';

import '../bottomBar/store.dart';
import '../login/login_view.dart';
import '../resources/asset_manager.dart';
import '../resources/bottom_navigation_bar.dart';
import '../resources/color_manager.dart';
import '../resources/font_manager.dart';
import '../resources/value_manager.dart';

class UserAccount extends StatefulWidget {
  const UserAccount({Key? key}) : super(key: key);

  @override
  State<UserAccount> createState() => _UserAccountState();
}

class _UserAccountState extends State<UserAccount> {

  int currentTab = 0;
  final List<Widget> screens=[
    UserAccount(),
    Chat(),
    Settings(),
    Store(),
  ];

  final PageStorageBucket bucket = PageStorageBucket() ;
  Widget currentscreen = UserAccount();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

        backgroundColor: ColorManager.primary,
        appBar: AppBar(elevation: 0.0,backgroundColor: ColorManager.lightgreen,
          leading:  IconButton(onPressed: (){Get.to(LoginView());},
              icon: Icon(Icons.arrow_back,color: ColorManager.white,)),
        ),
        body:  SafeArea(
          child: Stack(
                              children: [
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    height: Get.height*0.3,
                                    width: Get.width,
                                    decoration: BoxDecoration(
                                        color: ColorManager.lightgreen,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(AppSize.s150),
                                          bottomRight: Radius.circular(AppSize.s150)),

                                        ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p8 ),
                                      child: Column(

                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                            children: [
                                              Row(
                                                children: [

                                                  Container(
                                                    height: 50,
                                                    width:50,
                                                      margin: EdgeInsets.symmetric(horizontal: AppMargin.m10),
                                                      decoration: BoxDecoration(
                                                          color: ColorManager.white,
                                                          borderRadius: BorderRadius.circular(AppSize.s30)),

                                                      child: SvgPicture.asset(ImageAssets.circle,fit: BoxFit.fill,)
                                                  ),
                                                  Text(StringConstants.name,style: TextStyle(color: ColorManager.white,
                                                      fontFamily: FontConstant.fontfamily,fontSize: FontSizeManager.s30),),
                                                ],),
                                                  Container(
                                                    height: 50,
                                                      width:50,
                                                      decoration: BoxDecoration(
                                                          color: ColorManager.white,
                                                          borderRadius: BorderRadius.circular(AppSize.s30)),

                                                      child: SvgPicture.asset(ImageAssets.rang,)
                                                      //Image(image: AssetImage(ImageAssets.rang),

                                                      ),


                                            ],
                                          ),

                                          Row(mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Text(StringConstants.date,
                                                    style:TextStyle(
                                                    fontSize:FontSizeManager.s18,
                                                    fontFamily: FontConstant.fontfamily,
                                                    color: ColorManager.primary
                                                  ) ,),
                                            ],
                                          ),



                                         Padding(
                                           padding: const EdgeInsets.symmetric(horizontal: AppPadding.p50),
                                           child: SvgPicture.asset(ImageAssets.search,),
                                         ),

                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text(StringConstants.greenhouse,
                                                style:TextStyle(
                                                    fontSize:FontSizeManager.s18,
                                                    fontFamily: FontConstant.fontfamily,
                                                    color: ColorManager.white,
                                                ) ,),

                                              Container(

                                                width: AppSize.s80,
                                                height: AppSize.s30,
                                                decoration: BoxDecoration(
                                                    color: ColorManager.white,
                                                  borderRadius: BorderRadius.circular(AppSize.s15)
                                                ),
                                                child: Text(StringConstants.container,
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                  fontSize:FontSizeManager.s14,
                                                  fontFamily: FontConstant.fontfamily,
                                                  color: ColorManager.lightgreen,
                                                ),),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )),
                                ),
                               //   Image(image: AssetImage(ImageAssets.maskgroup),fit: BoxFit.fill,),

                                Positioned(
                                top: 190,
                                  right: 20,
                                  left: 20,
                                  child: Container(
                                    height: 200,
                                    width: MediaQuery.of(context).size.width-40,

                                    margin: EdgeInsets.symmetric(horizontal: AppSize.s10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(AppPadding.p30),
                                      color: ColorManager.white
                                    ),
                                    child:Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                         Padding(
                                           padding: const EdgeInsets.only(top: AppSize.s8),
                                           child: SvgPicture.asset(ImageAssets.card1,height:140,width: MediaQuery.of(context).size.width-30,),
                                         ),

                                        SvgPicture.asset(ImageAssets.bottomcard,
                                            alignment: Alignment.bottomCenter,height: 50,
                                            width:  MediaQuery.of(context).size.width-30,),
                                      ],
                                    ),



                                  )),

                                Positioned(
                                  bottom: 20,
                                    right: 20,
                                    left: 20,
                                    top: MediaQuery.of(context).size.height-350,
                                    child: Container(
                                      height: 200,
                                      width: MediaQuery.of(context).size.width-40,

                                      margin: EdgeInsets.symmetric(horizontal: AppSize.s10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(AppPadding.p30),
                                        color: ColorManager.white
                                      ),
                                      child:Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                           Padding(
                                             padding: const EdgeInsets.only(top: AppSize.s8),
                                             child: SvgPicture.asset(ImageAssets.card2,height:140,width: MediaQuery.of(context).size.width-30,),
                                           ),

                                          SvgPicture.asset(ImageAssets.bottomcard,
                                              alignment: Alignment.bottomCenter,height: 50,
                                              width:  MediaQuery.of(context).size.width-30,),
                                        ],
                                      ),



                                    )

),




            ]),
          ),



        floatingActionButton: FloatingActionButton(
            backgroundColor: ColorManager.white,
            child: Icon(Icons.home_filled,color: ColorManager.primary,),
            onPressed: (){}),

        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,


        bottomNavigationBar: BottomAppBar(
          color: ColorManager.lightgreen,
          shape: CircularNotchedRectangle(),
          notchMargin: AppSize.s10,
          child: Container(
            height: AppSize.s50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Row(children: [
                  MaterialButton(
                    minWidth: AppSize.s40,

                      onPressed: (){
                      setState(() {
                        currentscreen= UserAccount();
                        currentTab =0;
                      });
                      },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.person,
                        color:currentTab == 0 ? ColorManager.white : ColorManager.primary),

                        Text(StringConstants.profile,style: TextStyle(
                            color:currentTab == 0 ? ColorManager.white : ColorManager.primary,
                        fontFamily: FontConstant.fontfamily),),



                      ],
                    ),
                      ),

                  MaterialButton(
                    minWidth: AppSize.s40,

                    onPressed: (){
                      setState(() {
                        currentscreen= Chat();
                        currentTab =1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.chat,
                            color:currentTab == 1 ? ColorManager.white : ColorManager.primary),

                        Text(StringConstants.chat,style: TextStyle(
                            color:currentTab == 1 ? ColorManager.white : ColorManager.primary,
                            fontFamily: FontConstant.fontfamily),),



                      ],
                    ),
                  ),


                ],),

                Row(children: [
                  MaterialButton(
                    minWidth: AppSize.s40,

                    onPressed: (){
                      setState(() {
                        currentscreen= Store();
                        currentTab =3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.person,
                            color:currentTab == 3 ? ColorManager.white : ColorManager.primary),

                        Text(StringConstants.store,style: TextStyle(
                            color:currentTab == 3 ? ColorManager.white : ColorManager.primary,
                            fontFamily: FontConstant.fontfamily),),



                      ],
                    ),
                  ),

                  MaterialButton(
                    minWidth: AppSize.s40,

                    onPressed: (){
                      setState(() {
                        currentscreen= Settings();
                        currentTab =4;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.filter_list_sharp,
                            color:currentTab == 4 ? ColorManager.white : ColorManager.primary),

                        Text(StringConstants.settings,style: TextStyle(
                            color:currentTab == 4 ? ColorManager.white : ColorManager.primary,
                            fontFamily: FontConstant.fontfamily),),



                      ],
                    ),
                  ),


                ],)

              ],),
          ),
        )




    );




  }
}
/*
Container(
width: 50,
height: 30,
margin: EdgeInsets.only(left: Get.width*0.5,bottom: Get.height*0.04),
child: Image(image: AssetImage(ImageAssets.maskgroup),

)),
*/