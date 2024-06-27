import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:FOOD2GO/AuthScreens/reset_password_phone_screen.dart';
import 'package:FOOD2GO/AuthScreens/signup_screen.dart';
import 'package:FOOD2GO/DesignController/VisibilityController/visibility_controller.dart';
import 'package:FOOD2GO/MapWidget/map_widget_screen.dart';
import 'package:FOOD2GO/Utils/colors.dart';
import 'package:FOOD2GO/Utils/common_widgets.dart';
import 'package:FOOD2GO/Utils/images.dart';
import 'package:FOOD2GO/Utils/text_font_family.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);
  final VisibilityController visibilityController =
      Get.put(VisibilityController());

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
            SizedBox(height: 60),
            Center(
              child: boldText("FOOD2GO", ColorResources.REDB70, 44),
            ),
            SizedBox(height: 40),
            mediumText("Login", ColorResources.black120, 24),
            SizedBox(height: 20),
            textField("Your phone", Images.phone),
            SizedBox(height: 20),
            TextFormField(
              cursorColor: ColorResources.black120,
              style: TextStyle(
                color: ColorResources.black120,
                fontSize: 14,
                fontFamily: TextFontFamily.AIR_BNBCEREAL_BOOK,
              ),
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: EdgeInsets.all(15),
                  child: SvgPicture.asset(Images.password),
                ),
                suffixIcon: Obx(
                  () => InkWell(
                    onTap: () {
                      visibilityController.isOpenSignIn.value =
                          !visibilityController.isOpenSignIn.value;
                    },
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: SvgPicture.asset(
                        visibilityController.isOpenSignIn.isFalse
                            ? Images.visibilityOnIcon
                            : Images.visibilityOffIcon,
                      ),
                    ),
                  ),
                ),
                hintText: "Your password",
                hintStyle: TextStyle(
                  color: ColorResources.grey747,
                  fontSize: 14,
                  fontFamily: TextFontFamily.AIR_BNBCEREAL_BOOK,
                ),
                filled: true,
                fillColor: ColorResources.white,
                border: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: ColorResources.greyE4D, width: 1),
                  borderRadius: BorderRadius.circular(12),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: ColorResources.greyE4D, width: 1),
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: ColorResources.greyE4D, width: 1),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Obx(
                      () => Transform.scale(
                        scale: 0.7,
                        child: CupertinoSwitch(
                          onChanged: (val) =>
                              visibilityController.switchIsOpen.toggle(),
                          value: visibilityController.switchIsOpen.value,
                          activeColor: ColorResources.REDB70,
                        ),
                      ),
                    ),
                    bookText("Remember Me", ColorResources.black120, 14)
                  ],
                ),
                InkWell(
                  onTap: () {
                    Get.to(ResetPasswordPhoneNoScreen());
                  },
                  child:
                      bookText("Forgot Password?", ColorResources.black120, 14),
                ),
              ],
            ),
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: containerButton(() {
                Get.to(MapWidgetScreen());
              }, "SIGN  IN",),
            ),


            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                bookText(
                    "Don’t have an account? ", ColorResources.black120, 15),
                InkWell(
                  onTap: () {
                    Get.to(SignUpScreen());
                  },
                  child: bookText("Sign up", ColorResources.REDB70, 15),
                ),
              ],
            ),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
