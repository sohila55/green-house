import 'package:flutter/material.dart';
import 'package:green_house/view/resources/color_manager.dart';
import 'package:green_house/view/resources/string_manager.dart';

class BottomNavigationbar extends StatefulWidget {
  const BottomNavigationbar({super.key });

  @override
  State<BottomNavigationbar> createState() => _BottomNavigationbarState();
}


class _BottomNavigationbarState extends State<BottomNavigationbar> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {

    return


      BottomNavigationBar(
      currentIndex : _currentIndex,

        items: [
      BottomNavigationBarItem(
          icon:InkWell(
            onTap: (){},
              child: Icon(Icons.person,color: ColorManager.primary,)),
        backgroundColor: ColorManager.lightgreen,
        label: StringConstants.profile,
      ),

      BottomNavigationBarItem(
        icon:InkWell(
          onTap: (){},
            child: Icon(Icons.chat,color: ColorManager.primary,)),
        backgroundColor: ColorManager.lightgreen,
        label: StringConstants.chat,
      ),

      BottomNavigationBarItem(
        icon:InkWell(
          onTap: (){},
            child: Icon(Icons.shopping_cart,color: ColorManager.primary,)),
        backgroundColor: ColorManager.lightgreen,
        label: StringConstants.store,
      ),

      BottomNavigationBarItem(
        icon:InkWell(
          onTap: () {
          },
            child: Icon(Icons.filter_list,color: ColorManager.primary,)),
        backgroundColor: ColorManager.lightgreen,
        label: StringConstants.settings,
      ),
    ],

    );

  }


}
