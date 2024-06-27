import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:FOOD2GO/OrderPlaceScreen/order_place_screen.dart';
import 'package:FOOD2GO/Utils/colors.dart';
import 'package:FOOD2GO/Utils/common_widgets.dart';
import 'package:FOOD2GO/Utils/images.dart';
import 'package:FOOD2GO/Utils/text_font_family.dart';

class FreeChargeScreen extends StatelessWidget {
  FreeChargeScreen({Key? key}) : super(key: key);
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
      appBar: AppBar(
        elevation: 5,
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: ColorResources.white,
        leading: Padding(
          padding: EdgeInsets.all(10),
          child: InkWell(
            onTap: () {
              Get.back();
            },
            child: CircleAvatar(
              backgroundColor: ColorResources.whiteF1F,
              child: Icon(Icons.arrow_back_ios_outlined,
                  color: ColorResources.grey808, size: 15),
            ),
          ),
        ),
        title: mediumText("Freecharge Wallet", ColorResources.black231, 20),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 115,
            width: Get.width,
            color: ColorResources.whiteF1F,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 28, vertical: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      mediumText("Link Freecharge Wallet",
                          ColorResources.black120, 24),
                      SizedBox(height: 4),
                      bookText("Enter OTP received on 12345 67890",
                          ColorResources.grey8E8, 14),
                    ],
                  ),
                  SvgPicture.asset(Images.freeChargeImage,
                      height: 30, width: 30),
                ],
              ),
            ),
          ),
          SizedBox(height: 25),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: bookText("Enter OTP", ColorResources.grey8E8, 14),
          ),
          SizedBox(height: 9),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 35),
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child:  InkWell(
              onTap: (){
                Get.to(OrderPlaceScreen());
              },
              child: Container(
                height: 58,
                width: Get.width,
                decoration: BoxDecoration(
                  color: ColorResources.REDB70,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 35,
                      color: ColorResources.REDB70.withOpacity(0.25),
                      spreadRadius: 0,
                      offset: Offset(0, 10),
                    ),
                  ],
                ),
                child: ListTile(
                  title: Center(
                    child: Padding(
                      padding: EdgeInsets.only(left: 40,bottom: 6),
                      child: mediumText("VERIFY AND PROCEED", ColorResources.white, 14),
                    ),
                  ),
                  trailing: Padding(
                    padding: EdgeInsets.only(bottom: 6),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: ColorResources.orangeDD5,
                      child: Icon(Icons.arrow_forward, color: ColorResources.white),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              bookText("Didn’t receive the OTP?", ColorResources.black120, 14),
              mediumText("Resend", ColorResources.REDB70, 15),
            ],
          ),
        ],
      ),
    );
  }
}
