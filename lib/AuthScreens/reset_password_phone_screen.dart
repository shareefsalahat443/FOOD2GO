import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:FOOD2GO/AuthScreens/verification_reset_password.dart';
import 'package:FOOD2GO/Utils/colors.dart';
import 'package:FOOD2GO/Utils/common_widgets.dart';
import 'package:FOOD2GO/Utils/images.dart';

class ResetPasswordPhoneNoScreen extends StatelessWidget {
   ResetPasswordPhoneNoScreen({Key? key}) : super(key: key);

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
            SizedBox(height: 12),
            bookText(
                "Please enter your email address to \nrequest a password reset",
                ColorResources.black120,
                15),
            SizedBox(height: 27),
            textField("Phone Number", Images.phone),
            SizedBox(height: 40),
            containerButton(() {
              Get.to(VerificationResetPassword());
            }, "SEND"),
          ],
        ),
      ),
    );
  }
}
