import 'dart:async';
import 'package:get/get.dart';
import 'package:FOOD2GO/OnBoardingSCreen/on_boarding_screen.dart';

class SplashController extends GetxController{
  @override
  void onInit() {
    Timer(
      Duration(seconds: 6),
          () =>
          Get.off(OnBoardingScreen()),
    );
    super.onInit();
  }
}