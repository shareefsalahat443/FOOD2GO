import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:FOOD2GO/AuthScreens/reset_password_screen.dart';
import 'package:FOOD2GO/Utils/colors.dart';
import 'package:FOOD2GO/Utils/common_widgets.dart';
import 'package:FOOD2GO/Utils/text_font_family.dart';

class VerificationResetPassword extends StatelessWidget {
  VerificationResetPassword({Key? key}) : super(key: key);
  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(12),
    );
  }

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
            mediumText("Verification", ColorResources.black120, 24),
            SizedBox(height: 12),
            bookText(
                "We’ve send you the verification code \non +1 2620 0323 7631",
                ColorResources.black120,
                15),
            SizedBox(height: 27),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                color: ColorResources.white,
                child: PinPut(
                  fieldsCount: 4,
                  textStyle: TextStyle(
                    fontFamily: TextFontFamily.AIR_BNBCEREAL_MEDIUM,
                    fontSize: 24,
                    color: ColorResources.black120,
                  ),
                  cursorColor: ColorResources.REDB70,
                  eachFieldHeight: 55,
                  eachFieldWidth: 55,
                  focusNode: _pinPutFocusNode,
                  controller: _pinPutController,
                  submittedFieldDecoration: _pinPutDecoration.copyWith(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: ColorResources.greyE4D,
                    ),
                    color: ColorResources.white,
                  ),
                  selectedFieldDecoration: _pinPutDecoration.copyWith(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: ColorResources.REDB70,
                    ),
                    color: ColorResources.white,
                  ),
                  followingFieldDecoration: _pinPutDecoration.copyWith(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: ColorResources.greyE4D,
                    ),
                    color: ColorResources.white,
                  ),
                  disabledDecoration: _pinPutDecoration.copyWith(
                    borderRadius: BorderRadius.circular(12),
                    color: ColorResources.white,
                    border: Border.all(
                      color: ColorResources.greyE4D,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            containerButton(() {
              Get.to(ResetPasswordScreen());
            }, "CONTINUE"),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                bookText("Re-send code in", ColorResources.black120, 15),
                bookText(" 0:20", ColorResources.REDB70, 15),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
