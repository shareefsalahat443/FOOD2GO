import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:FOOD2GO/DesignController/SplashController/splash_controller.dart';
import 'package:FOOD2GO/Utils/colors.dart';
import 'package:FOOD2GO/Utils/common_widgets.dart';
import 'package:FOOD2GO/Utils/images.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);
  final SplashController splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    print("height#####${MediaQuery.of(context).size.height}");
    print("width#####${MediaQuery.of(context).size.width}");
    return Scaffold(
      backgroundColor: ColorResources.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(Images.food2goAppLogo),
            SizedBox(height: 5),
            bookText("FOOD2GO", ColorResources.REDB70, 41),
            SizedBox(height: 5),
            bookText("Food order delivery", ColorResources.black120, 16),
          ],
        ),
      ),
    );
  }
}
