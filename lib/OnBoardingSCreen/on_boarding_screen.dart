import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:FOOD2GO/AuthScreens/signin_screen.dart';
import 'package:FOOD2GO/MapWidget/map_widget_screen.dart';
import 'package:FOOD2GO/Utils/colors.dart';
import 'package:FOOD2GO/Utils/common_widgets.dart';
import 'package:FOOD2GO/Utils/images.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController pageController = PageController(initialPage: 0);
  int index = 0;
  List pageViewList = [
    {
      "image": Images.onBoarding1,
      "text": "Order from a wide range of restaurants"
    },
    {
      "image": Images.onBoarding2,
      "text": "With a wide Collection \nof cuisines"
    },
    {"image": Images.onBoarding3, "text": "Delivered quickly to your doorstep"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.white,
      body: Stack(
        children: [
          PageView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: pageViewList.length,
            controller: pageController,
            scrollDirection: Axis.horizontal,
            onPageChanged: (i) {
              setState(
                () {
                  index = i;
                },
              );
            },
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Stack(
                  children: [
                    Positioned(
                      top: 30,
                      left: 0,
                      right: 0,
                      child: Image.asset(
                        pageViewList[index]["image"],
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height/1.93,
                      left: 60,
                      right: 60,
                      child: boldText(pageViewList[index]["text"],
                          ColorResources.black120, 18, TextAlign.center),
                    ),
                  ],
                ),
              );
            },
          ),
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/3.7),
            child: Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  pageViewList.length,
                  (position) => Padding(
                    padding: EdgeInsets.only(right: 8),
                    child: Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: index == position
                            ? ColorResources.REDB70
                            : ColorResources.greyD0C,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/1.5),
              child: Container(
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(45),
                    topRight: Radius.circular(45),
                  ),
                  color: ColorResources.REDB70,
                ),
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 20, left: 40, right: 40, bottom: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      mediumText("Ready to order from top restaurants?",
                          ColorResources.white, 15),
                      MaterialButton(
                        onPressed: () {
                          Get.to(SignInScreen());
                        },
                        height: 55,
                        minWidth: Get.width,
                        child: mediumText(
                            "Login / Signup", ColorResources.REDB70, 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        color: ColorResources.white,
                      ),
                      MaterialButton(
                        onPressed: () {
                          Get.to(MapWidgetScreen());
                        },
                        height: 55,
                        minWidth: Get.width,
                        child: mediumText(
                            "Continue As Guest", ColorResources.REDB70, 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                          side: BorderSide(color: ColorResources.white),
                        ),
                        color: ColorResources.white,
                      ),
                    ],
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
