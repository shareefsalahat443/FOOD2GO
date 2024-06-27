import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:FOOD2GO/Utils/colors.dart';
import 'package:FOOD2GO/Utils/common_widgets.dart';
import 'package:FOOD2GO/Utils/images.dart';
import 'package:FOOD2GO/Utils/text_font_family.dart';
import 'package:FOOD2GO/main.dart';

class ApplyCouponScreen extends StatelessWidget {
  ApplyCouponScreen({Key? key}) : super(key: key);

  final List<Map> applyCouponList = [
    {
      "image": Images.sbiImage,
      "text": "SBIC100",
    },
    {
      "image": Images.dhaniImage,
      "text": "DHANICARD150",
    },
    {
      "image": Images.uniImage,
      "text": "UNICARD100",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.whiteF1F,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: ColorResources.white,
        leading: Padding(
          padding: EdgeInsets.all(10),
          child: InkWell(
            onTap: (){
              Get.back();
            },
            child: CircleAvatar(
              backgroundColor: ColorResources.whiteF1F,
              child: Icon(Icons.arrow_back_ios_outlined,
                  color: ColorResources.grey808, size: 15),
            ),
          ),
        ),
        title: mediumText("Apply Coupons", ColorResources.black231, 20),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 6),
          Container(
            height: 100,
            width: Get.width,
            color: ColorResources.white,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: TextFormField(
                cursorColor: ColorResources.black120,
                style: TextStyle(
                  color: ColorResources.black120,
                  fontSize: 14,
                  fontFamily: TextFontFamily.AIR_BNBCEREAL_BOOK,
                ),
                decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      height: 44,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28),
                        color: ColorResources.REDB70,
                      ),
                      child: Center(
                        child: mediumText("APPLY", ColorResources.white, 16),
                      ),
                    ),
                  ),
                  hintText: "Promo Code",
                  hintStyle: TextStyle(
                    color: ColorResources.grey747,
                    fontSize: 14,
                    fontFamily: TextFontFamily.AIR_BNBCEREAL_LIGHT,
                  ),
                  filled: true,
                  fillColor: ColorResources.white,
                  border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: ColorResources.greyEEE, width: 1),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: ColorResources.greyEEE, width: 1),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: ColorResources.greyEEE, width: 1),
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: mediumText("Available Coupons", ColorResources.black120, 16),
          ),
          Expanded(
            child: ScrollConfiguration(
              behavior: MyBehavior(),
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: applyCouponList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(bottom: 6),
                  child: Container(
                    color: ColorResources.white,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    applyCouponList[index]["image"],
                                    height: 80,
                                    width: 80,
                                  ),
                                  SizedBox(width: 8),
                                  mediumText(applyCouponList[index]["text"],
                                      ColorResources.black120, 16),
                                ],
                              ),
                              Container(
                                height: 27,
                                width: 78,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: ColorResources.greyF0F,
                                ),
                                child: Center(
                                  child: mediumText(
                                      "APPLY", ColorResources.REDB70, 16),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          mediumText("Get 15% discount using SBI Credit Cards",
                              ColorResources.black120, 16),
                          SizedBox(height: 15),
                          Divider(color: ColorResources.whiteF1F, thickness: 1),
                          SizedBox(height: 15),
                          bookText(
                              "Maximum discount up to ₹100 on orders above ₹400",
                              ColorResources.grey8E8,
                              14),
                          SizedBox(height: 12),
                          Center(
                            child: InkWell(
                              onTap: () {
                                Get.bottomSheet(
                                  Padding(
                                    padding: EdgeInsets.only(top: 280),
                                    child: ScrollConfiguration(
                                      behavior: MyBehavior(),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                Get.back();
                                              },
                                              child: CircleAvatar(
                                                radius: 25,
                                                backgroundColor:
                                                    ColorResources.black,
                                                child: Icon(Icons.clear),
                                              ),
                                            ),
                                            SizedBox(height: 18),
                                            Container(
                                              height: Get.height,
                                              width: Get.width,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(30),
                                                  topLeft: Radius.circular(30),
                                                ),
                                                color: ColorResources.white,
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 15,
                                                    horizontal: 20),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        bookText(
                                                            "Coupon details",
                                                            ColorResources
                                                                .black120,
                                                            18),
                                                        Container(
                                                          height: 27,
                                                          width: 78,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        6),
                                                            color:
                                                                ColorResources
                                                                    .greyF0F,
                                                          ),
                                                          child: Center(
                                                            child: mediumText(
                                                                "APPLY",
                                                                ColorResources
                                                                    .REDB70,
                                                                16),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(height: 15),
                                                    Divider(
                                                        color: ColorResources
                                                            .whiteF1F,
                                                        thickness: 1),
                                                    SizedBox(height: 15),
                                                    Row(
                                                      children: [
                                                        Image.asset(
                                                          applyCouponList[index]["image"],
                                                          height: 40,
                                                          width: 80,
                                                        ),
                                                        SizedBox(width: 8),
                                                        mediumText(applyCouponList[index]["text"],
                                                            ColorResources.black120, 16),
                                                      ],
                                                    ),
                                                    SizedBox(height: 15),
                                                    mediumText("Get 15% discount using SBI Credit Cards",
                                                        ColorResources.black120, 16),
                                                    SizedBox(height: 15),
                                                    Divider(color: ColorResources.whiteF1F, thickness: 1),
                                                    SizedBox(height: 15),
                                                    bookText(
                                                        "Maximum discount up to ₹100 on orders above ₹400",
                                                        ColorResources.grey8E8,
                                                        14),
                                                    SizedBox(height: 12),
                                                    bookText(
                                                        "Terms & Conditions Apply",
                                                        ColorResources.grey8E8,
                                                        14),
                                                    SizedBox(height: 12),
                                                    Row(
                                                      children: [
                                                        SvgPicture.asset(Images.chekMark),
                                                        SizedBox(width: 9),
                                                        lightText(
                                                            "Applicable once per user per week",
                                                            ColorResources.grey8E8,
                                                            14),
                                                      ],
                                                    ),
                                                    SizedBox(height: 12),
                                                    Row(
                                                      children: [
                                                        SvgPicture.asset(Images.chekMark),
                                                        SizedBox(width: 9),
                                                        lightText(
                                                            "Valid on Monday & Tuesday",
                                                            ColorResources.grey8E8,
                                                            14),
                                                      ],
                                                    ),
                                                    SizedBox(height: 12),
                                                    Row(
                                                      children: [
                                                        SvgPicture.asset(Images.chekMark),
                                                        SizedBox(width: 9),
                                                        lightText(
                                                            "Valid only on SBI Credit Cards",
                                                            ColorResources.grey8E8,
                                                            14),
                                                      ],
                                                    ),
                                                    SizedBox(height: 12),
                                                    Row(
                                                      children: [
                                                        SvgPicture.asset(Images.chekMark),
                                                        SizedBox(width: 9),
                                                        lightText(
                                                            "Other T&Cs may apply",
                                                            ColorResources.grey8E8,
                                                            14),
                                                      ],
                                                    ),
                                                    SizedBox(height: 12),
                                                    Row(
                                                      children: [
                                                        SvgPicture.asset(Images.chekMark),
                                                        SizedBox(width: 9),
                                                        lightText(
                                                            "Offer valid till mar 29, 2022 11:59 PM",
                                                            ColorResources.grey8E8,
                                                            14),
                                                      ],
                                                    ),
                                                    SizedBox(height: 12),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                );
                              },
                              child: mediumText(
                                  "View Details", ColorResources.REDB70, 12),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
