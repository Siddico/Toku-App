import 'dart:async';

import 'package:flutter/material.dart';
import 'package:toku/views/HomePage_Screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return HomePageScreen();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'images/splash/Splash.png',
              height: 175,
              //width: 200,
            ),
          ),
          Center(
            child: Image.asset(
              'images/splash/SSplash1.png',
              height: 200,
            ),
          )
        ],
      ),
    );
  }
}
