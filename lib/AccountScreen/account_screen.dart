import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:FOOD2GO/AccountScreen/Account1Screen/account1_screen.dart';
import 'package:FOOD2GO/AccountScreen/Account1Screen/privasy_policy_screen.dart';
import 'package:FOOD2GO/AccountScreen/Account1Screen/terms_conditions_screen.dart';
import 'package:FOOD2GO/AccountScreen/send_feedback_screen.dart';
import 'package:FOOD2GO/CouponScreen/coupon_screen.dart';
import 'package:FOOD2GO/Utils/colors.dart';
import 'package:FOOD2GO/Utils/common_widgets.dart';
import 'package:FOOD2GO/Utils/images.dart';
import 'package:FOOD2GO/Utils/text_font_family.dart';

class AccountScreen extends StatefulWidget {
  AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  final List<Map> accountList = [
    {
      "image": Images.accountCouponImage,
      "text": "Offers",
      "onTap": () {
        Get.to(CouponScreen());
      },
    },
    {
      "image": Images.accountMailImage,
      "text": "Send Feedback",
      "onTap": () {
        Get.to(SendFeedBackScreen());
      },
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.whiteF1F,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 60),
            CircleAvatar(
              radius: 40,
              backgroundColor: ColorResources.white,
              child: SvgPicture.asset(Images.accountUserImage),
            ),
            SizedBox(height: 17),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: containerButton(() {
                // selectedIndex = 4;
                // Navigator.of(context, rootNavigator: true)
                //     .push(MaterialPageRoute(
                //   builder: (context) => Account1Screen(),
                // ));
                Get.to(Account1Screen());
              }, "LOGIN"),
            ),
            SizedBox(height: 13),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'By Clicking, I accept the',
                    style: TextStyle(
                        color: ColorResources.grey8E8,
                        fontSize: 13,
                        fontFamily: TextFontFamily.AIR_BNBCEREAL_BOOK),
                  ),
                  TextSpan(
                    recognizer:  TapGestureRecognizer()..onTap = () => {
                      Get.to(TermsAndConditions()),
                    },
                    text: '  Terms & Conditions',
                    style: TextStyle(
                        color: ColorResources.black120,
                        fontSize: 13,
                        fontFamily: TextFontFamily.AIR_BNBCEREAL_MEDIUM),
                  ),
                  TextSpan(
                    text: '&',
                    style: TextStyle(
                        color: ColorResources.grey8E8,
                        fontSize: 13,
                        fontFamily: TextFontFamily.AIR_BNBCEREAL_BOOK),
                  ),
                  TextSpan(
                    recognizer:  TapGestureRecognizer()..onTap = () => {
                      Get.to(PrivacyPolicyScreen()),
                    },
                    text: '\nPrivacy Policy',
                    style: TextStyle(
                      color: ColorResources.black120,
                      fontSize: 13,
                      fontFamily: TextFontFamily.AIR_BNBCEREAL_MEDIUM,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 28),
            Padding(
              padding: EdgeInsets.only(left: 25),
              child: Align(
                alignment: Alignment.topLeft,
                child:
                    boldText("Account Settings", ColorResources.REDB70, 15),
              ),
            ),
            SizedBox(height: 8),
            ListView.builder(
              padding: EdgeInsets.zero,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: accountList.length,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(bottom: 2),
                child: InkWell(
                  onTap: accountList[index]["onTap"],
                  child: Container(
                    height: 55,
                    width: Get.width,
                    color: ColorResources.white,
                    child: ListTile(
                      leading: SvgPicture.asset(
                        accountList[index]["image"],
                      ),
                      title: bookText(accountList[index]["text"],
                          ColorResources.black120, 17),
                      trailing: Icon(Icons.arrow_forward_ios,
                          color: ColorResources.grey8E8),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
