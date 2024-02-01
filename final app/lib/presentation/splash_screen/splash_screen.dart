import 'package:flutter/material.dart';
import 'package:intellijinteriors/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray50,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 33,
            right: 33,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/Splash.jpeg', // Replace with the actual path to your JPEG image
                height: getVerticalSize(34),
                width: getHorizontalSize(360),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
