import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:FOOD2GO/DesignController/varibale_controller.dart';
import 'package:FOOD2GO/HomeScreen/brows_menu_screen.dart';
import 'package:FOOD2GO/Utils/colors.dart';
import 'package:FOOD2GO/Utils/common_widgets.dart';
import 'package:FOOD2GO/Utils/images.dart';
import 'package:FOOD2GO/main.dart';
import 'package:FOOD2GO/rout_widget_screen/rout_screen.dart';

class PopularCurationsScreen extends StatelessWidget {
  PopularCurationsScreen({Key? key}) : super(key: key);
  final VariableController variableController = Get.put(VariableController());
  final List<Map> couponList = [
    {
      "image": Images.lapinozPizza,
      "text1": "La pino’z Pizza",
      "text2": "Pizzas, Italian, Snacks, Desserts...",
      "text3": "Adajan",
      "text4": "60% OFF",
    },
    {
      "image": Images.eggImage,
      "text1": "Prabhu Egg Center",
      "text2": "North Indian",
      "text3": "Surat",
      "text4": "50% OFF",
    },
    {
      "image": Images.bismillahImage,
      "text1": "Bismillah",
      "text2": "Desserts, Ice Cream, Beverage...",
      "text3": "Varachha",
      "text4": "60% OFF",
    },
    {
      "image": Images.lapinozPizza,
      "text1": "La pino’z Pizza",
      "text2": "Pizzas, Italian, Snacks, Desserts...",
      "text3": "Adajan",
      "text4": "60% OFF",
    },
    {
      "image": Images.eggImage,
      "text1": "Prabhu Egg Center",
      "text2": "North Indian",
      "text3": "Surat",
      "text4": "50% OFF",
    },
  ];

  final List<Map> filterList = [
    {
      "text": "Rs. 300-Rs. 600",
    },
    {
      "text": "Less than Rs. 300",
    },
    {
      "text": "Greater than Rs. 600",
    },
    {
      "text": "Pure veg",
    },
    {
      "text": "Non Veg",
    },
    {
      "text": "Less than 30 mins",
    },
    {
      "text": "Less than 45 mins",
    },
  ];

  final List<Map> sortByList = [
    {
      "text": "Relevance",
    },
    {
      "text": "Delivery Time",
    },
    {
      "text": "Rating",
    },
    {
      "text": "Cost: Low to High",
    },
    {
      "text": "Cost: High to Low",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.white,
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: Get.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Images.banner2),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 50, bottom: 25, left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  RoutNavigationScreen(),
                            ),
                            (route) => false,
                          );
                        },
                        child: CircleAvatar(
                          backgroundColor: ColorResources.whiteF1F,
                          radius: 20,
                          child: Icon(Icons.arrow_back_ios_outlined,
                              color: ColorResources.grey808, size: 18),
                        ),
                      ),
                      SizedBox(height: 55),
                      mediumText("Pizza", ColorResources.REDB70, 48),
                      SizedBox(height: 7),
                      bookText(
                          "Cheeselicious pizzas to make\nevery day extraordinary.",
                          ColorResources.grey8E8,
                          14),
                    ],
                  ),
                ),
              ),
              Container(
                height: 45,
                width: Get.width,
                color: ColorResources.greyF6F,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          bookText("Short by:", ColorResources.black120, 14),
                          SizedBox(width: 10),
                          mediumText("Relevance", ColorResources.REDB70, 14),
                          SizedBox(width: 10),
                          InkWell(
                            onTap: () {
                              Get.defaultDialog(
                                backgroundColor: ColorResources.white,
                                contentPadding: EdgeInsets.zero,
                                title: "",
                                titlePadding: EdgeInsets.zero,
                                content: ScrollConfiguration(
                                  behavior: MyBehavior(),
                                  child: ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: sortByList.length,
                                    itemBuilder: (context, index) => Padding(
                                      padding: EdgeInsets.only(
                                          left: 15, right: 15, bottom: 20),
                                      child: Row(
                                        children: [
                                          GetBuilder<VariableController>(
                                            init: VariableController(),
                                            builder: (controller) => InkWell(
                                              onTap: () {
                                                variableController
                                                    .onIndexChange4(index);
                                              },
                                              child: Container(
                                                height: 20,
                                                width: 20,
                                                decoration: BoxDecoration(
                                                  color: variableController
                                                      .selectedIndex4 ==
                                                      index
                                                      ? ColorResources.REDB70
                                                      : ColorResources.white,
                                                  borderRadius:
                                                  BorderRadius.circular(5),
                                                  border: Border.all(
                                                      color: variableController
                                                          .selectedIndex4 ==
                                                          index
                                                          ? ColorResources
                                                          .REDB70
                                                          : ColorResources
                                                          .greyBCB),
                                                ),
                                                child: Center(
                                                  child: Icon(
                                                    Icons.check,
                                                    color: ColorResources.white,
                                                    size: 16,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          bookText(sortByList[index]["text"],
                                              ColorResources.black120, 16),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                            child: Icon(Icons.arrow_drop_down,
                                color: ColorResources.grey979),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: (){
                          Get.defaultDialog(
                            backgroundColor: ColorResources.white,
                            contentPadding: EdgeInsets.zero,
                            title: "",
                            titlePadding: EdgeInsets.zero,
                            content: ScrollConfiguration(
                              behavior: MyBehavior(),
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: filterList.length,
                                itemBuilder: (context, index) => Padding(
                                  padding: EdgeInsets.only(
                                      left: 8, right: 8),
                                  child: GetBuilder<VariableController>(
                                    init: VariableController(),
                                    builder: (controller) => InkWell(
                                      onTap: () {
                                        variableController.onIndexChange1(index);
                                      },
                                      child: Container(
                                        padding: EdgeInsets.only(
                                            left: 8, top: 14, bottom: 14),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color:
                                          variableController.selectedIndex1 ==
                                              index
                                              ? ColorResources.greyF2
                                              : ColorResources.white,
                                        ),
                                        child: variableController.selectedIndex1 ==
                                            index
                                            ? mediumText(
                                            filterList[index]["text"],
                                            ColorResources.black120,
                                            16)
                                            : bookText(filterList[index]["text"],
                                            ColorResources.black120, 16),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        child: SvgPicture.asset(Images.filterIcon),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              ListView.builder(
                padding: EdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                itemCount: couponList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(bottom: 6),
                  child: InkWell(
                    onTap: (){
                      Get.to(BrowsMenuScreen());
                    },
                    child: Container(
                      padding: EdgeInsets.only(
                          left: 20, right: 20, top: 12, bottom: 16),
                      width: Get.width,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: ColorResources.black.withOpacity(0.1),
                            blurRadius: 10,
                            spreadRadius: 0,
                            offset: Offset(0, 0),
                          ),
                        ],
                        color: ColorResources.white,
                      ),
                      child: Row(
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            alignment: Alignment.bottomCenter,
                            children: [
                              Container(
                                height: 100,
                                width: 85,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      couponList[index]["image"],
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: -10,
                                child: Container(
                                  height: 32,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    border: Border.all(
                                        color: ColorResources.white, width: 2),
                                    color: ColorResources.yellowF88,
                                  ),
                                  child: Column(
                                    children: [
                                      boldText(couponList[index]["text4"],
                                          ColorResources.white, 12),
                                      boldText(
                                          "UPTO ₹120", ColorResources.white, 7),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              mediumText(couponList[index]["text1"],
                                  ColorResources.black120, 17),
                              bookText(couponList[index]["text2"],
                                  ColorResources.grey8E8, 14),
                              bookText(couponList[index]["text3"],
                                  ColorResources.black120, 12),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: ColorResources.yellowFFA,
                                    size: 16,
                                  ),
                                  SizedBox(width: 5),
                                  lightText(
                                      "4.3",
                                      ColorResources.black120.withOpacity(0.74),
                                      12),
                                  SizedBox(width: 5),
                                  Icon(Icons.circle,
                                      color:
                                          ColorResources.grey8E8.withOpacity(0.5),
                                      size: 5),
                                  SizedBox(width: 5),
                                  Icon(Icons.watch_later,
                                      color:
                                          ColorResources.black.withOpacity(0.5),
                                      size: 15),
                                  SizedBox(width: 5),
                                  lightText(
                                      "25 Min",
                                      ColorResources.black120.withOpacity(0.74),
                                      12),
                                  SizedBox(width: 5),
                                  Icon(Icons.circle,
                                      color:
                                          ColorResources.grey8E8.withOpacity(0.5),
                                      size: 5),
                                  SizedBox(width: 5),
                                  SvgPicture.asset(Images.rupeeSymbol),
                                  SizedBox(width: 5),
                                  lightText(
                                      "300 for two",
                                      ColorResources.black120.withOpacity(0.74),
                                      12),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
