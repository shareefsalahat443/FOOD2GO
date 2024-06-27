import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:FOOD2GO/DesignController/varibale_controller.dart';
import 'package:FOOD2GO/HomeScreen/brows_menu_screen.dart';
import 'package:FOOD2GO/HomeScreen/home_bnner_category_screen.dart';
import 'package:FOOD2GO/HomeScreen/populer_curations_screen.dart';
import 'package:FOOD2GO/HomeScreen/view_all_popular_brand_screen.dart';
import 'package:FOOD2GO/HomeScreen/view_all_popularcuration_screen.dart';
import 'package:FOOD2GO/Utils/colors.dart';
import 'package:FOOD2GO/Utils/common_widgets.dart';
import 'package:FOOD2GO/Utils/images.dart';
import 'package:FOOD2GO/Utils/text_font_family.dart';
import 'package:FOOD2GO/main.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final VariableController variableController = Get.put(VariableController());

  final List<Map> topPicksList = [
    {
      "image": Images.lapinozPizza,
    },
    {
      "image": Images.sharlockPizza,
    },
    {
      "image": Images.lapinozPizzaImage,
    },
    {
      "image": Images.sharlockPizza,
    },
  ];

  final List<Map> popularBrandList = [
    {
      "image": Images.pizzaHutImage,
      "text1": "Pizza Hut",
      "text2": "",
    },
    {
      "image": Images.burgerKingImage,
      "text1": "Burger King",
      "text2": "",
    },
    {
      "image": Images.Burger90s,
      "text1": "90s Burger",
      "text2": "",
    },
    {
      "image": Images.shawarman,
      "text1": "Shawarman",
      "text2": "",
    },

  ];

  final List<Map> popularCurationsList = [
    {
      "image": Images.riceAndBiriyaniImage,
      "text": "Rice and\n Biryani",
    },
    {
      "image": Images.cutPizza,
      "text": "Pizza",
    },
    {
      "image": Images.jainDish,
      "text": "Jain",
    },
    {
      "image": Images.burgar,
      "text": "Burger",
    },
    {
      "image": Images.cakeAndDesert,
      "text": "Cakes and Dessert",
    },
    {
      "image": Images.chinease,
      "text": "Chinese",
    },
  ];

  final List<Map> breakfastList = [
    {
      "image": Images.cappuccinoImage,
      "text": "Cappuccino",
    },
    {
      "image": Images.eggAndCheeseSandwichImage,
      "text": "Egg and cheese sandwich",
    },
    {
      "image": Images.cappuccinoImage,
      "text": "Cappuccino",
    }
  ];

  final List<Map> spotlightList = [
    {
      "image": Images.lapinoz,
      "text": "La Pino’z Pizza",
    },
    {
      "image": Images.coffeeKing,
      "text": "Coffee King",
    },
    {
      "image": Images.maheshPavBhaji,
      "text": "Mahesh Pav Bhaji",
    },
  ];

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.white,
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 90,
                width: Get.width,
                decoration: BoxDecoration(
                  color: ColorResources.white,
                  boxShadow: [
                    BoxShadow(
                      color: ColorResources.black.withOpacity(0.05),
                      blurRadius: 13,
                      spreadRadius: 0,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(Images.location),
                      SizedBox(width: 10),
                      Padding(
                        padding: EdgeInsets.only(top: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            mediumText("603", ColorResources.black120, 17),
                            bookText(
                                "Office No 603, Subh Square, Lal Darwaja...",
                                ColorResources.grey8E8,
                                14),
                          ],
                        ),
                      ),
                      Icon(Icons.favorite_border,
                          color: ColorResources.black120),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              // تم حذف الشريط الدائري (carousel) هنا
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child:
                boldText("Top Picks For You", ColorResources.black120, 18),
              ),
              SizedBox(height: 12),
              SizedBox(
                height: 210,
                child: ListView.builder(
                  padding: EdgeInsets.only(left: 20),
                  shrinkWrap: true,
                  itemCount: topPicksList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: InkWell(
                          onTap: () {
                            Get.to(BrowsMenuScreen());
                          },
                          child: Container(
                            height: 180,
                            width: 240,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                image: AssetImage(
                                  topPicksList[index]["image"],
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Image.asset(Images.shortBlackCanvas,
                                    fit: BoxFit.cover),
                                Positioned(
                                  bottom: 20,
                                  left: 12,
                                  right: 12,
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          boldText("50% OFF",
                                              ColorResources.white, 20),
                                          bookText(" ₹125",
                                              ColorResources.white, 12),
                                        ],
                                      ),
                                      Container(
                                        height: 24,
                                        width: 55,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(50),
                                          color: ColorResources.white,
                                        ),
                                        child: Center(
                                          child: boldText("40 min",
                                              ColorResources.black120, 12),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 6),
                      Row(
                        children: [
                          mediumText(
                              "Sharlock Pizza ", ColorResources.black120, 16),
                          SizedBox(width: 100),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: ColorResources.yellowFFA,
                              ),
                              boldText("4.8", ColorResources.black120, 13),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Divider(color: ColorResources.whiteF1F, thickness: 6),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    boldText("Popular Brands", ColorResources.black120, 18),
                    InkWell(
                        onTap: () {
                          Get.to(ViewAllPopularBrandScreen());
                        },
                        child: Icon(Icons.arrow_forward,
                            color: ColorResources.black120)),
                  ],
                ),
              ),
              SizedBox(height: 20),
              ListView.builder(
                padding: EdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                itemCount: popularBrandList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) => Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: InkWell(
                        onTap: () {
                          Get.to(BrowsMenuScreen());
                        },
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage(
                                popularBrandList[index]["image"],
                              ),
                            ),
                            SizedBox(width: 15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                mediumText(popularBrandList[index]["text1"],
                                    ColorResources.black120, 18),
                                bookText(popularBrandList[index]["text2"],
                                    ColorResources.grey8E8, 15),
                              ],
                            ),
                            Spacer(),
                            index == 2
                                ? SizedBox.shrink()
                                : Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                mediumText("50% OFF",
                                    ColorResources.yellowF88, 14),
                                bookText("UPTO ₹125",
                                    ColorResources.grey8E8, 9),
                              ],
                            ),
                            SizedBox(width: 5),
                            index == 2
                                ? SizedBox.shrink()
                                : SvgPicture.asset(Images.subtract),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.only(left: 80),
                      child: Divider(
                          color: ColorResources.greyECE, thickness: 0.67),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    boldText("Popular Dishes", ColorResources.black120, 18),
                    InkWell(
                        onTap: () {
                          Get.to(ViewAllPopularCurationScreen());
                        },
                        child: Icon(Icons.arrow_forward,
                            color: ColorResources.black120)),
                  ],
                ),
              ),
              SizedBox(height: 20),
              LayoutBuilder(
                builder: (context, constraints) => GridView.count(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  childAspectRatio:
                  MediaQuery.of(context).size.aspectRatio * 2 / 1.8,
                  shrinkWrap: true,
                  crossAxisCount: 3,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  physics: NeverScrollableScrollPhysics(),
                  children: List.generate(
                    popularCurationsList.length,
                        (index) => Padding(
                      padding: EdgeInsets.only(top: 30.0),
                      child: InkWell(
                        onTap: () {
                          Get.to(PopularCurationsScreen());
                        },
                        child: Stack(
                          clipBehavior: Clip.none,
                          alignment: Alignment.topCenter,
                          children: [
                            Container(
                              height: 130,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(26),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xff393939).withOpacity(0.10),
                                    blurRadius: 40,
                                    offset: Offset(0, 10),
                                  ),
                                ],
                              ),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 15),
                                  child: bookText(
                                      popularCurationsList[index]["text"],
                                      ColorResources.black120,
                                      14,
                                      TextAlign.center),
                                ),
                              ),
                            ),
                            Positioned(
                              top: -30,
                              child: Container(
                                height: 110,
                                width: 100,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  popularCurationsList[index]["image"],
                                  fit: BoxFit.contain,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ).toList(),
                ),
              ),
              Divider(color: ColorResources.whiteF1F, thickness: 6),
              SizedBox(height: 15),
              Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Container(
                      height: 365,
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: ColorResources.yellowFDF,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 20, left: 15, right: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Looking for  ',
                                    style: TextStyle(
                                      fontFamily:
                                      TextFontFamily.AIR_BNBCEREAL_BOOK,
                                      fontSize: 19,
                                      color: ColorResources.yellowF88,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Breakfast?',
                                    style: TextStyle(
                                      fontFamily:
                                      TextFontFamily.AIR_BNBCEREAL_BOLD,
                                      fontSize: 19,
                                      color: ColorResources.yellowF88,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            bookText("Here’s what you might like to taste",
                                ColorResources.greyA69, 14),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.only(left: 22, bottom: 25),
                              child: LinearPercentIndicator(
                                width: MediaQuery.of(context).size.width / 2.5,
                                lineHeight: 3,
                                percent: 0.2,
                                padding: EdgeInsets.zero,
                                backgroundColor: ColorResources.yellowEFE,
                                progressColor: ColorResources.yellowF88,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: SizedBox(
                      height: 225,
                      width: Get.width,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.only(left: 20, right: 10),
                        itemCount: breakfastList.length,
                        itemBuilder: (context, index) => Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: InkWell(
                            onTap: () {
                              Get.to(BrowsMenuScreen());
                            },
                            child: Container(
                              height: 225,
                              width: 168,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13),
                                color: ColorResources.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: ColorResources.black626
                                        .withOpacity(0.1),
                                    spreadRadius: 0,
                                    blurRadius: 9.31,
                                    offset: Offset(-2.66, 2.66),
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 118,
                                    width: 168,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(13),
                                        topRight: Radius.circular(13),
                                      ),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          breakfastList[index]["image"],
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Padding(
                                    padding:
                                    EdgeInsets.symmetric(horizontal: 10),
                                    child: mediumText(
                                        breakfastList[index]["text"],
                                        ColorResources.black120,
                                        16),
                                  ),
                                  Padding(
                                    padding:
                                    EdgeInsets.symmetric(horizontal: 10),
                                    child: bookText(
                                        "30 mins", ColorResources.grey707, 12),
                                  ),
                                  Spacer(),
                                  index == 0 || index == 2
                                      ? Padding(
                                    padding: EdgeInsets.only(
                                        left: 10, right: 10, bottom: 10),
                                    child: Row(
                                      children: [
                                        Text(
                                          "₹250",
                                          style: TextStyle(
                                            color:
                                            ColorResources.black120,
                                            fontSize: 11,
                                            fontFamily: TextFontFamily
                                                .AIR_BNBCEREAL_BOOK,
                                            decoration: TextDecoration
                                                .lineThrough,
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        bookText("₹200",
                                            ColorResources.yellowF88, 17),
                                      ],
                                    ),
                                  )
                                      : Padding(
                                    padding: EdgeInsets.only(
                                        left: 10, right: 10, bottom: 10),
                                    child: bookText("₹200",
                                        ColorResources.yellowF88, 17),
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
              SizedBox(height: 22),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    boldText("In the Spotlight!", ColorResources.black120, 18),
                    InkWell(
                        onTap: () {
                          // Get.to(ViewAllPopularBrandScreen());
                        },
                        child: Icon(Icons.arrow_forward,
                            color: ColorResources.black120)),
                  ],
                ),
              ),
              SizedBox(height: 3),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: bookText("Explore sponsored partner brands",
                    ColorResources.grey707, 14),
              ),
              SizedBox(height: 15),
              SizedBox(
                height: 238,
                width: Get.width,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: spotlightList.length,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 20, right: 10),
                  itemBuilder: (context, index) => Stack(
                    alignment: Alignment.bottomLeft,
                    clipBehavior: Clip.none,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: InkWell(
                          onTap: () {
                            Get.to(BrowsMenuScreen());
                          },
                          child: Container(
                            height: 238,
                            width: 166,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                              border: Border.all(
                                  color: ColorResources.greyC4C, width: 0.67),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 120,
                                  width: 168,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(13),
                                      topRight: Radius.circular(13),
                                    ),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        spotlightList[index]["image"],
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: mediumText(
                                      spotlightList[index]["text"],
                                      ColorResources.black120,
                                      16),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: bookText(
                                      "30 mins", ColorResources.grey707, 12),
                                ),
                                Spacer(),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 10, right: 10, bottom: 12),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.star,
                                              color: ColorResources.yellowFFA),
                                          SizedBox(width: 5),
                                          boldText("4.5",
                                              ColorResources.black120, 13),
                                        ],
                                      ),
                                      SvgPicture.asset(Images.saveImage),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 40,
                        left: -5,
                        child: Row(
                          children: [
                            Image.asset(Images.percentImage,
                                height: 25,
                                width: 100,
                                alignment: Alignment.topLeft),
                            bookText("UPTO ₹125 ", ColorResources.grey707, 12),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 22),
              Divider(color: ColorResources.whiteF1F, thickness: 6),
              SizedBox(height: 15),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    boldText(
                        "All Restaurants Nearby", ColorResources.black120, 18),
                    InkWell(
                        onTap: () {
                          // Get.to(ViewAllPopularBrandScreen());
                        },
                        child: Icon(Icons.arrow_forward,
                            color: ColorResources.black120)),
                  ],
                ),
              ),
              SizedBox(height: 3),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: bookText("Discover Unique tastes near you",
                    ColorResources.grey707, 14),
              ),
              SizedBox(height: 20),
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: CarouselSlider.builder(
                      itemCount: 5,
                      itemBuilder:
                          (BuildContext context, index, int pageViewIndex) =>
                          InkWell(
                            onTap: () {
                              Get.to(BrowsMenuScreen());
                            },
                            child: Container(
                              height: 200,
                              width: Get.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage(
                                    Images.restaurantsNearByImage,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                      options: CarouselOptions(
                          height: 200,
                          autoPlay: true,
                          autoPlayAnimationDuration:
                          Duration(milliseconds: 1000),
                          enlargeCenterPage: true,
                          scrollDirection: Axis.horizontal,
                          initialPage: 3,
                          viewportFraction: 1,
                          onPageChanged: (index, reason) {
                            variableController.sliderIndex2.value = index;
                          }),
                    ),
                  ),
                  Obx(
                        () => Padding(
                      padding: EdgeInsets.only(top: 170, right: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          for (int i = 0; i < 5; i++)
                            Padding(
                              padding: EdgeInsets.all(2.0),
                              child: Container(
                                  height: 5,
                                  width: 8,
                                  decoration: BoxDecoration(
                                      color: i ==
                                          variableController
                                              .sliderIndex2.value
                                          ? ColorResources.white
                                          : ColorResources.white
                                          .withOpacity(0.3),
                                      borderRadius: BorderRadius.circular(8))),
                            ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 11),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: mediumText(
                    "Mayfield Bakery & Cafe", ColorResources.black120, 18),
              ),
              SizedBox(height: 4),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: bookText("Chinese, Fast Food, Healthy Food, Salads",
                    ColorResources.grey8E8, 14),
              ),
              SizedBox(height: 8),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: ColorResources.yellowFFA,
                          size: 16,
                        ),
                        SizedBox(width: 5),
                        lightText("4.3",
                            ColorResources.black120.withOpacity(0.74), 12),
                      ],
                    ),
                    Icon(Icons.circle,
                        color: ColorResources.grey8E8.withOpacity(0.5),
                        size: 5),
                    Row(
                      children: [
                        Icon(Icons.watch_later,
                            color: ColorResources.black.withOpacity(0.5),
                            size: 15),
                        SizedBox(width: 5),
                        lightText("25 Min",
                            ColorResources.black120.withOpacity(0.74), 12),
                      ],
                    ),
                    Icon(Icons.circle,
                        color: ColorResources.grey8E8.withOpacity(0.5),
                        size: 5),
                    Row(
                      children: [
                        SvgPicture.asset(Images.rupeeSymbol),
                        SizedBox(width: 5),
                        lightText("300 for two",
                            ColorResources.black120.withOpacity(0.74), 12),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              ListView.builder(
                padding: EdgeInsets.only(top: 6),
                physics: NeverScrollableScrollPhysics(),
                itemCount: couponList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(bottom: 6),
                  child: InkWell(
                    onTap: () {
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
                                      color: ColorResources.grey8E8
                                          .withOpacity(0.5),
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
                                      color: ColorResources.grey8E8
                                          .withOpacity(0.5),
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
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 22),
                child: Container(
                  height: 53,
                  width: Get.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    border:
                    Border.all(color: ColorResources.grey8E8, width: 0.67),
                    color: ColorResources.white,
                  ),
                  child: ListTile(
                    title: Center(
                      child: Padding(
                        padding: EdgeInsets.only(left: 25, bottom: 7),
                        child: bookText(
                            "VIEW ALL OFFERS", ColorResources.grey8E8, 14),
                      ),
                    ),
                    trailing: Padding(
                      padding: EdgeInsets.only(bottom: 7),
                      child: Icon(Icons.arrow_forward_ios,
                          color: ColorResources.greyC8C),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
