import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:toku/component/components.dart';
import 'package:toku/views/Colors_Screen.dart';
import 'package:toku/views/Family_Members_Screen.dart';
import 'package:toku/views/Numbers_Screen.dart';
import 'package:toku/views/Phrases_Screen.dart';

class HomePageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop();
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Image.asset(
            'images/splash/SSplash1.png',
            height: 60,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  categoryForHomePage(
                      text: 'Numbers',
                      color: Color(0xfff99531),
                      image: 'images/homepage/number-blocks.png',
                      ontap: () {
                        NavigateTo(context, NumbersScreen());
                      }),
                  categoryForHomePage(
                      text: 'Colors',
                      color: Color(0xff7d40a2),
                      image: 'images/homepage/color-circle.png',
                      ontap: () {
                        NavigateTo(context, ColorsScreen());
                      })
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  categoryForHomePage(
                      text: 'Family Members',
                      color: Color(0xff528032),
                      image: 'images/homepage/family.png',
                      ontap: () {
                        NavigateTo(context, FamilyMembersScreen());
                      }),
                  categoryForHomePage(
                      text: 'Phrases',
                      color: Color(0xff47a5cb),
                      image: 'images/homepage/hamlet.png',
                      ontap: () {
                        NavigateTo(context, PhrasesScreen());
                      })
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
