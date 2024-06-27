import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:FOOD2GO/AuthScreens/signin_screen.dart';
import 'package:FOOD2GO/Utils/colors.dart';
import 'package:FOOD2GO/Utils/common_widgets.dart';
import 'package:FOOD2GO/Utils/images.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.white,
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            InkWell(
              onTap: () {
                Get.back();
              },
              child: Icon(Icons.arrow_back, color: ColorResources.black120),
            ),
            SizedBox(height: 30),
            mediumText("Reset Password", ColorResources.black120, 24),
            SizedBox(height: 20),
            textField("New Password", Images.password),
            SizedBox(height: 20),
            textField("Confirm Password", Images.password),
            SizedBox(height: 35),
            containerButton(() {
              Get.to(SignInScreen());
            }, "CONTINUE"),
          ],
        ),
      ),
    );
  }
}
