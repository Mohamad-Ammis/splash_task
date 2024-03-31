import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task7/controller/splash_controller.dart';
import 'package:task7/views/splash_screens/widgets/confirm_password_page.dart';
import 'package:task7/views/splash_screens/widgets/information_page.dart';
import 'package:task7/views/splash_screens/widgets/mobile_number_splash.dart';
import 'package:task7/views/splash_screens/widgets/otp_page.dart';
import 'package:task7/views/splash_screens/widgets/password_page.dart';

class SplashScreen extends StatelessWidget {
   SplashScreen({super.key});
  final  splashController=Get.put(SplashController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: splashController.pageController,
        children: [
          MobileNumberSplash(),
          PasswordPage(),
          OtpPage(),
          InformationPage(),
          ConfirmPasswordPage()
        ],
      ),
    );
  }
}
