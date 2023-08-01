import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:green_house/view/resources/value_manager.dart';

import 'color_manager.dart';

class FrostedGlassBox extends StatelessWidget {
  const FrostedGlassBox({super.key, required this.Width, required this.Height, required this.Child, });

  final Width;
  final Height;
  final Child;


  @override
  Widget build(BuildContext context) {
    return  ClipRRect(
      borderRadius: BorderRadius.circular(AppSize.s40),
      child: Container(
        width: Width,
        height: Height,
        color: ColorManager.transparent,
        child: Stack(
          children: [
            BackdropFilter(

                filter:ImageFilter.blur(
                  sigmaY: 4.0,
                  sigmaX: 4.0,
                ) ,
              child:Container(),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                border: Border.all(color: Colors.white.withOpacity(0.13)),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      //begin color
                      Colors.white.withOpacity(0.15),
                      //end color
                      Colors.white.withOpacity(0.05),
                    ]),
              ),
            ),
            Center(child: Child),


          ],
        ),
      ),
    );
  }
}

