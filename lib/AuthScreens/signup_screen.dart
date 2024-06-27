import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:FOOD2GO/AuthScreens/signin_screen.dart';
import 'package:FOOD2GO/AuthScreens/verification_screen.dart';
import 'package:FOOD2GO/DesignController/VisibilityController/visibility_controller.dart';
import 'package:FOOD2GO/Utils/colors.dart';
import 'package:FOOD2GO/Utils/common_widgets.dart';
import 'package:FOOD2GO/Utils/images.dart';
import 'package:FOOD2GO/Utils/text_font_family.dart';
import 'package:FOOD2GO/main.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
  final VisibilityController visibilityController =
      Get.put(VisibilityController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: ScrollConfiguration(
          behavior: MyBehavior(),
          child: SingleChildScrollView(
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
                SizedBox(height: 25),
                mediumText("Sign up", ColorResources.black120, 24),
                SizedBox(height: 20),
                textField("Full name", Images.profile),
                SizedBox(height: 20),
                textField("Phone Number", Images.phone),
                SizedBox(height: 20),
                textField("johndoe@gmail.com", Images.mail),
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
                          visibilityController.isOpenSignUp.value =
                          !visibilityController.isOpenSignUp.value;
                        },
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: SvgPicture.asset(
                            visibilityController.isOpenSignUp.isFalse
                                ? Images.visibilityOnIcon
                                : Images.visibilityOffIcon,
                          ),
                        ),
                      ),
                    ),
                    hintText: "Password",
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
                          visibilityController.isOpenSignUp1.value =
                              !visibilityController.isOpenSignUp1.value;
                        },
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: SvgPicture.asset(
                            visibilityController.isOpenSignUp1.isFalse
                                ? Images.visibilityOnIcon
                                : Images.visibilityOffIcon,
                          ),
                        ),
                      ),
                    ),
                    hintText: "Confirm password",
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
                SizedBox(height: 40),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: containerButton(() {
                    Get.to(VerificationScreen());
                  }, "SIGN  UP"),
                ),
                SizedBox(height: 160),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    bookText(
                        "Already have an account? ", ColorResources.black120, 15),
                    InkWell(
                      onTap: () {
                        Get.to(SignInScreen());
                      },
                      child: bookText("Sign in", ColorResources.REDB70, 15),
                    ),
                  ],
                ),
                SizedBox(height: 25),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
