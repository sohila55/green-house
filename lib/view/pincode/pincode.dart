import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_house/view/face%20id/faceid.dart';
import 'package:green_house/view/register/register_view.dart';
import 'package:green_house/view/resetpassword/resetpassword.dart';
import 'package:green_house/view/resources/color_manager.dart';
import 'package:green_house/view/resources/font_manager.dart';
import 'package:green_house/view/resources/string_manager.dart';
import 'package:green_house/view/resources/value_manager.dart';
import '../../controllers/pincodeController.dart';

class PinCode extends StatefulWidget {
  const PinCode({Key? key}) : super(key: key);

  @override
  State<PinCode> createState() => _PinCodeState();
}

class _PinCodeState extends State<PinCode> {
  PinCodeControllerImp controller = Get.put(PinCodeControllerImp());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){Get.to(RegisterView());},
            icon: Icon(Icons.arrow_back,color: ColorManager.white,)),
      ),
      backgroundColor:ColorManager.primary,
      body:OtpScreen(),
    );
  }
}

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  PinCodeControllerImp controller = Get.put(PinCodeControllerImp());

  List<String> currentPin = ["", "", "", ""];

  var outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(AppSize.s10)),
      borderSide: BorderSide(color: ColorManager.lightgreen)
  );
  int pinIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          children: [
            Expanded(child:
            Container(
              alignment: Alignment(AppSize.s0, AppSize.s1_5),
              padding: EdgeInsets.symmetric(horizontal: AppSize.s16),
              child: Column(
                children: [
                  buildSecurityText(),
                  SizedBox(height: AppSize.s15,),
                  buildSecurityText2(),
                  SizedBox(height: AppSize.s40,),
                  buildPinRow()
                ],
              ),
            )
            ),
            Center(
                child: ElevatedButton(
                    child:Text(StringConstants.button3,),
                    onPressed: () {
                      Get.to(FaceId());
                      SizedBox(height: AppSize.s15,);})),

            buildNumberPad(),
          ],
        ));
  }

  buildNumberPad(){
    return Expanded(
        child:Container(
          alignment: Alignment.bottomCenter,
          child:Padding(
          padding: EdgeInsets.only(bottom: AppSize.s30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    KeyboardNumber(
                      n :1,
                      onpressed:(){
                        pinIndexSetup('1');
                      }
                    ),
                    KeyboardNumber(
                        n :2,
                        onpressed:(){
                          pinIndexSetup('2');

                        }
                    ),
                    KeyboardNumber(
                        n :3,
                        onpressed:(){
                          pinIndexSetup('3');

                        }
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    KeyboardNumber(
                        n :4,
                        onpressed:(){
                          pinIndexSetup('4');

                        }
                    ),
                    KeyboardNumber(
                        n :5,
                        onpressed:(){
                          pinIndexSetup('5');

                        }
                    ),
                    KeyboardNumber(
                        n :6,
                        onpressed:(){
                          pinIndexSetup('6');

                        }
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    KeyboardNumber(
                        n :7,
                        onpressed:(){}
                    ),
                    KeyboardNumber(
                        n :8,
                        onpressed:(){}
                    ),
                    KeyboardNumber(
                        n :9,
                        onpressed:(){}
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: AppSize.s60,
                      height: AppSize.s60,

                      child: MaterialButton(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(AppSize.s60)),
                        onPressed: (){
                          pinIndexSetup('*');

                        },
                        child: Text('*',textAlign: TextAlign.center,style: TextStyle(
                          color: ColorManager.white,
                          fontSize: FontSizeManager.s22,
                        ),)
                      ),
                    ),
                    KeyboardNumber(
                        n :0,
                        onpressed:(){
                          pinIndexSetup("0");

                        }
                    ),
                    Container(
                      width: AppSize.s60,
                      height: AppSize.s60,
                      
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(AppSize.s60)),
                          onPressed: (){
                          clearPin();
                          },
                        child: Icon(Icons.dangerous_outlined,color: ColorManager.white,size: AppPadding.p30,),
                      ),
                    )
                  ],
                ),
            ],
          ),
          ),
          ),
        );

  }

  pinIndexSetup(String text){

    if(pinIndex==0)
      pinIndex=1;
    else if(pinIndex<4)
      pinIndex++;
    setPin(pinIndex,text);
    currentPin[pinIndex-1]=text;
    String strpin = "";
    currentPin.forEach((e) {
      strpin += e;
    });
    if(pinIndex == 4)
      print(strpin);

  }

  clearPin() {
    if (pinIndex == 0)
      pinIndex = 0;
    else if (pinIndex == 4){
      setPin(pinIndex, "");
      currentPin[pinIndex - 1] = "";
      pinIndex--;
    }else{
      setPin(pinIndex, "");
      currentPin[pinIndex - 1] = "";
      pinIndex--;
    }
  }

  setPin(int n, String text){
    switch(n){
      case 1:
        controller.pinOneController.text=text;
        break;
      case 2:
        controller.pinTwoController.text=text;
        break;
      case 3:
        controller.pinThreeController.text=text;
        break;
      case 4:
        controller.pinFourController.text=text;
        break;


    }
  }


  buildPinRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        PINNumber(
          outlineInputBorder: outlineInputBorder,
          textEditingController: controller.pinOneController,
        ),
        PINNumber(
          outlineInputBorder: outlineInputBorder,
          textEditingController: controller.pinTwoController,
        ),
        PINNumber(
          outlineInputBorder: outlineInputBorder,
          textEditingController: controller.pinThreeController,
        ),
        PINNumber(
          outlineInputBorder: outlineInputBorder,
          textEditingController: controller.pinFourController,
        ),
      ],
    );
  }
}

class PINNumber extends StatelessWidget {

  final TextEditingController textEditingController;
  final OutlineInputBorder outlineInputBorder;

PINNumber({required this.textEditingController,required this.outlineInputBorder});
  @override
  Widget build(BuildContext context) {
    return Container(

      width: AppSize.s50,
      child: TextField(
        controller: textEditingController,
        enabled: true,
        obscureText: true,
        textAlign: TextAlign.center,
        decoration:InputDecoration(
          fillColor: ColorManager.lightgreen,
          filled: true,
          border:outlineInputBorder,

        ) ,
      ),
    );
  }
}

buildSecurityText(){

  return Center(
    child: Text(StringConstants.securityPin,style: TextStyle(
      color: ColorManager.white,
        fontFamily: FontConstant.fontfamily,
      fontSize: FontSizeManager.s30
    ),textAlign: TextAlign.center,
    ),
  );
}

buildSecurityText2(){

  return Text(StringConstants.securityPin2,style: TextStyle(
        color: ColorManager.white,
        fontFamily: FontConstant.fontfamily,
        fontSize: FontSizeManager.s18
    ),textAlign: TextAlign.center,
  );
}

class KeyboardNumber extends StatelessWidget {
  final int n ;
  final Function() onpressed;
  KeyboardNumber({required this.onpressed,required this.n, });
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: AppSize.s60,
      height: AppSize.s60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,

      ),
      alignment: Alignment.center,
      child: MaterialButton(
          padding: EdgeInsets.all(AppSize.s8),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(AppSize.s50)),
          onPressed:onpressed,
        height: AppSize.s90,
        child: Text("$n",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: FontSizeManager.s22,
          color: ColorManager.white,

        ),),
      ),
    );
  }
}
