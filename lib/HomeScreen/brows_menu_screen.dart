import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:FOOD2GO/CartScreen/cart_detail_screen.dart';
import 'package:FOOD2GO/DesignController/TabController/tab_controller.dart';
import 'package:FOOD2GO/DesignController/VisibilityController/visibility_controller.dart';
import 'package:FOOD2GO/DesignController/varibale_controller.dart';
import 'package:FOOD2GO/HomeScreen/bottom_sheet_screen.dart';
import 'package:FOOD2GO/SearchScreen/brows_menu_search_screen.dart';
import 'package:FOOD2GO/Utils/colors.dart';
import 'package:FOOD2GO/Utils/common_widgets.dart';
import 'package:FOOD2GO/Utils/images.dart';
import 'package:FOOD2GO/Utils/text_font_family.dart';
import 'package:FOOD2GO/main.dart';
import 'package:FOOD2GO/rout_widget_screen/rout_screen.dart';

class BrowsMenuScreen extends StatefulWidget {
  @override
  State<BrowsMenuScreen> createState() => _BrowsMenuScreenState();
}

class _BrowsMenuScreenState extends State<BrowsMenuScreen> {
  final BrowsTabController browsTabController = Get.put(BrowsTabController());
  final VisibilityController visibilityController =
      Get.put(VisibilityController());
  VariableController variableController = Get.put(VariableController());

  final List<Map> recomendedBrowsList = [
    {
      "image1": Images.vegIcon,
      "image2": Images.burger2,
      "text1": "CLASSIC CHICKEN",
      "text2": "₪26",
      "text3": "Veg Whopper + King Fries + Pepsi",
      "id": 1,
    },
    {
      "image1": Images.vegIcon,
      "image2": Images.burger1,
      "text1": " VEGETARIAN BURGER",
      "text2": "₪25",
      "text3": "2 Veg Whopper",
      "id": 0,
    },
    {
      "image1": Images.nonVegIcon,
      "image2": Images.burger3,
      "text1": "BEEF BACON",
      "text2": "₹328",
      "text3": "1 Veg Whopper + 1 Chicken + Whopper",
      "id": 2,
    },
    {
      "image1": Images.nonVegIcon,
      "image2": Images.burger4,
      "text1": "Whopper Fridays - Feast for 2(Veg + Chicken)",
      "text2": "₪28",
      "text3":
          " + 1 Chicken + Whopper + 1King Fries + 1 COLA + Shake... More",
      "id": 3,
    },
    {
      "image1": Images.nonVegIcon,
      "image2": Images.burger5,
      "text1": "King Egg Burger",
      "text2": "₹298",
      "text3": "",
      "id": 4,
    },
  ];

  final List<Map> newKingsCollectionBrowsList = [
    {
      "image1": Images.vegIcon,
      "image2": Images.burger1,
      "text1": "Whopper Fridays- Veg Doubles",
      "text2": "₹298",
      "text3": "2 Veg Whopper",
      "id": 5,
    },
    {
      "image1": Images.vegIcon,
      "image2": Images.burger2,
      "text1": "Whopper Fridays- Veg Meal",
      "text2": "₹327",
      "text3": "Veg Whopper + King Fries + Pepsi",
      "id": 6,
    },
    {
      "image1": Images.nonVegIcon,
      "image2": Images.burger3,
      "text1": "Whopper Fridays - Mixed Doubles(Veg + Chicken)",
      "text2": "₹328",
      "text3": "1 Veg Whopper + 1 Chicken + Whopper",
      "id": 7,
    },
    {
      "image1": Images.nonVegIcon,
      "image2": Images.burger4,
      "text1": "Whopper Fridays - Feast for 2(Veg + Chicken)",
      "text2": "₹657",
      "text3":
          "1 Veg Whopper + 1 Chicken + Whopper + 1King Fries + 1 Pepsi + Shake... More",
      "id": 8,
    },
    {
      "image1": Images.nonVegIcon,
      "image2": Images.burger5,
      "text1": "King Egg Burger",
      "text2": "₹298",
      "text3": "",
      "id": 9,
    },
  ];

  final List<Map> flavoursOfLoveBrowsList = [
    {
      "image1": Images.vegIcon,
      "image2": Images.burger1,
      "text1": "Whopper Fridays- Veg Doubles",
      "text2": "₹298",
      "text3": "2 Veg Whopper",
      "id": 10,
    },
    {
      "image1": Images.vegIcon,
      "image2": Images.burger2,
      "text1": "Whopper Fridays- Veg Meal",
      "text2": "₹327",
      "text3": "Veg Whopper + King Fries + Pepsi",
      "id": 11,
    },
    {
      "image1": Images.nonVegIcon,
      "image2": Images.burger3,
      "text1": "Whopper Fridays - Mixed Doubles(Veg + Chicken)",
      "text2": "₹328",
      "text3": "1 Veg Whopper + 1 Chicken + Whopper",
      "id": 12,
    },
    {
      "image1": Images.nonVegIcon,
      "image2": Images.burger4,
      "text1": "Whopper Fridays - Feast for 2(Veg + Chicken)",
      "text2": "₹657",
      "text3":
          "1 Veg Whopper + 1 Chicken + Whopper + 1King Fries + 1 Pepsi + Shake... More",
      "id": 13,
    },
    {
      "image1": Images.nonVegIcon,
      "image2": Images.burger5,
      "text1": "King Egg Burger",
      "text2": "₹298",
      "text3": "",
      "id": 14,
    },
  ];

  List<int> addItemList = [];

  addItemMethod(index, id) {
    bool isAdd = true;
    log("ENTER ENTER");

    for (var element in addItemList) {
      if (element == id) {
        isAdd = false;
        setState(() {
          addItemList.remove(element);
        });
        log("   REMOVE LIST REMOVE LIST RECOMENDE   $addItemList");
      } else if (element == id) {
        isAdd = false;
        setState(() {
          addItemList.remove(element);
        });
        log("   REMOVE LIST REMOVE LIST   $addItemList");
      } else if (element == id) {
        isAdd = false;
        setState(() {
          addItemList.remove(element);
        });
        log("   REMOVE LIST REMOVE LIST   $addItemList");
      }
    }
    if (isAdd == true) {
      setState(() {
        addItemList.add(id);
      });
      log("   ADD LIST ADD LIST11111111111   $addItemList");
    }
  }

  late ScrollController _scrollController;

  bool lastStatus = true;

  double height = 340;

  void _scrollListener() {
    if (_isShrink != lastStatus) {
      setState(() {
        lastStatus = _isShrink;
      });
    }
  }

  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController()..addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  bool get _isShrink {
    return _scrollController.hasClients &&
        _scrollController.offset > (height - kToolbarHeight);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.white,
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: Stack(
          children: [
            NestedScrollView(
              controller: _scrollController,
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  SliverAppBar(
                    collapsedHeight: _isShrink ? 100 : 450,
                    expandedHeight: height,
                    floating: false,
                    pinned: true,
                    elevation: 0,
                    automaticallyImplyLeading: false,
                    leading: _isShrink
                        ? Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: InkWell(
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
                          )
                        : Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: InkWell(
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
                          ),
                    title: _isShrink
                        ? mediumText("90's Burger", ColorResources.black120, 20)
                        : Text(""),
                    actions: [
                      _isShrink
                          ? CircleAvatar(
                              backgroundColor: ColorResources.whiteF1F,
                              radius: 20,
                              child: Icon(Icons.favorite_border,
                                  color: ColorResources.black120, size: 20),
                            )
                          : CircleAvatar(
                              backgroundColor: ColorResources.whiteF1F,
                              radius: 20,
                              child: Icon(Icons.favorite_border,
                                  color: ColorResources.black120, size: 20),
                            ),
                      _isShrink
                          ? Padding(
                              padding: EdgeInsets.only(right: 20, left: 10),
                              child: InkWell(
                                onTap: () {
                                  Get.to(BrowsMenuSearchScreen());
                                },
                                child: CircleAvatar(
                                  backgroundColor: ColorResources.whiteF1F,
                                  radius: 20,
                                  child: Icon(Icons.search,
                                      color: ColorResources.black120, size: 20),
                                ),
                              ),
                            )
                          : Padding(
                              padding: EdgeInsets.only(right: 20, left: 10),
                              child: InkWell(
                                onTap: () {
                                  Get.to(BrowsMenuSearchScreen());
                                },
                                child: CircleAvatar(
                                  backgroundColor: ColorResources.whiteF1F,
                                  radius: 20,
                                  child: Icon(Icons.search,
                                      color: ColorResources.black120, size: 20),
                                ),
                              ),
                            ),
                    ],
                    backgroundColor: ColorResources.white,
                    flexibleSpace: FlexibleSpaceBar(
                      titlePadding: _isShrink
                          ? EdgeInsets.zero
                          : EdgeInsets.only(bottom: 180, left: 20),
                      title: _isShrink
                          ? Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  height: 44,
                                  width: Get.width,
                                  child: TabBar(
                                    isScrollable: true,
                                    tabs: browsTabController.myTabs,
                                    unselectedLabelColor:
                                        ColorResources.grey8E8,
                                    labelStyle: TextStyle(
                                        fontFamily:
                                            TextFontFamily.AIR_BNBCEREAL_MEDIUM,
                                        fontSize: 14),
                                    unselectedLabelStyle: TextStyle(
                                        fontFamily:
                                            TextFontFamily.AIR_BNBCEREAL_BOOK,
                                        fontSize: 14),
                                    labelColor: ColorResources.REDB70,
                                    controller: browsTabController.controller,
                                    indicatorColor: ColorResources.REDB70,
                                    indicatorWeight: 4,
                                  ),
                                  color: ColorResources.whiteF3F,
                                ),
                              ],
                            )
                          : Text(""),
                      background: Stack(
                        children: [
                          Container(
                            height: 250,
                            width: Get.width,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(Images.browseMenuBurgerImage),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 10, bottom: 80),
                              child: Image.asset(
                                Images.Burger90s,
                                height: 100,
                                width: 100,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.only(right: 18, bottom: 0),
                              child: Container(
                                height: 75,
                                width: 62,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(9),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 4,
                                      spreadRadius: 0,
                                      color: ColorResources.black
                                          .withOpacity(0.25),
                                      offset: Offset(0, 1),
                                    ),
                                  ],
                                  color: ColorResources.white,
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 37,
                                      width: 62,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(9),
                                          topLeft: Radius.circular(9),
                                        ),
                                        color: ColorResources.REDB70,
                                      ),
                                      child: Center(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.star,
                                                color: ColorResources.white,
                                                size: 18),
                                            SizedBox(width: 5),
                                            bookText("4.3",
                                                ColorResources.white, 16),
                                          ],
                                        ),
                                      ),
                                    ),
                                    mediumText(
                                        "1000+", ColorResources.black120, 15),
                                    bookText(
                                        "Ratings", ColorResources.grey808, 10),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 18),
                                  child: boldText("90's Burger ",
                                      ColorResources.black120, 26),
                                ),
                                SizedBox(height: 7),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 18),
                                  child: bookText(
                                      "Burger, Fast Food",
                                      ColorResources.grey8E8,
                                      14),
                                ),
                                SizedBox(height: 4),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 18),
                                  child: Row(
                                    children: [
                                      bookText("Nablus | Rafedia",
                                          ColorResources.grey8E8, 14),
                                      SizedBox(width: 5),
                                      Icon(Icons.arrow_drop_down,
                                          color: ColorResources.REDB70),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 12),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 18),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: ColorResources.greyE7E,
                                          width: 1),
                                      color: ColorResources.white,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 12, horizontal: 40),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            children: [
                                              mediumText("31 MINS",
                                                  ColorResources.black120, 14),
                                              bookText("Delivery Time",
                                                  ColorResources.grey8E8, 12),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 40,
                                            child: VerticalDivider(
                                              color: ColorResources.greyE7E,
                                              thickness: 1,
                                              indent: 0,
                                              endIndent: 0,
                                              // width: 20,
                                            ),
                                          ),
                                          Column(
                                            children: [
                                              mediumText("₹350",
                                                  ColorResources.black120, 14),
                                              bookText("₹ 350 for two",
                                                  ColorResources.grey8E8, 12),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 12),
                                SizedBox(
                                  height: 65,
                                  width: Get.width,
                                  child: ListView.builder(
                                    itemCount: 3,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    padding: EdgeInsets.only(
                                        left: 18, right: 10, top: 5, bottom: 5),
                                    itemBuilder: (context, index) => Padding(
                                      padding: EdgeInsets.only(right: 8),

                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ];
              },
              body: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  ScrollConfiguration(
                    behavior: MyBehavior(),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 24),
                          Container(
                            height: 44,
                            width: Get.width,
                            child: TabBar(
                              isScrollable: true,
                              tabs: browsTabController.myTabs,
                              unselectedLabelColor: ColorResources.grey8E8,
                              labelStyle: TextStyle(
                                  fontFamily:
                                      TextFontFamily.AIR_BNBCEREAL_MEDIUM,
                                  fontSize: 14),
                              unselectedLabelStyle: TextStyle(
                                  fontFamily: TextFontFamily.AIR_BNBCEREAL_BOOK,
                                  fontSize: 14),
                              labelColor: ColorResources.REDB70,
                              controller: browsTabController.controller,
                              indicatorColor: ColorResources.REDB70,
                              indicatorWeight: 4,
                            ),
                            color: ColorResources.whiteF3F,
                          ),
                          SizedBox(height: _isShrink ? 70 : 15),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18),
                            child: Row(
                              children: [
                                mediumText(
                                    "Veg Only", ColorResources.black120, 10),
                                Obx(
                                  () => Transform.scale(
                                    scale: 0.7,
                                    child: CupertinoSwitch(
                                      onChanged: (val) => visibilityController
                                          .switchIsOpen3
                                          .toggle(),
                                      value: visibilityController
                                          .switchIsOpen3.value,
                                      activeColor: ColorResources.REDB70,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Divider(color: ColorResources.whiteF1F, thickness: 6),
                          SizedBox(height: 10),
                          Padding(
                            padding: EdgeInsets.only(left: 18),
                            child: boldText("Recommended",
                                ColorResources.black120, 16),
                          ),
                          SizedBox(height: 12),
                          Divider(color: ColorResources.whiteF1F, thickness: 2),
                          ListView.builder(
                            shrinkWrap: true,
                            padding: EdgeInsets.zero,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: recomendedBrowsList.length,
                            itemBuilder: (context, index) => Column(
                              children: [
                                Container(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Image.asset(
                                                recomendedBrowsList[index]
                                                    ["image1"],
                                                height: 15,
                                                width: 15,
                                              ),
                                              SizedBox(height: 8),
                                              Text(
                                                recomendedBrowsList[index]
                                                    ["text1"],
                                                maxLines: 2,
                                                style: TextStyle(
                                                  color:
                                                      ColorResources.black120,
                                                  fontSize: 17,
                                                  fontFamily: TextFontFamily
                                                      .AIR_BNBCEREAL_MEDIUM,
                                                ),
                                              ),
                                              bookText(
                                                  recomendedBrowsList[index]
                                                      ["text2"],
                                                  ColorResources.grey8E8,
                                                  16),
                                              bookText(
                                                  recomendedBrowsList[index]
                                                      ["text3"],
                                                  ColorResources.grey8E8,
                                                  12),
                                              SizedBox(height: 10),
                                              Stack(
                                                alignment: Alignment.centerLeft,
                                                clipBehavior: Clip.none,
                                                children: [
                                                  Container(
                                                    height: 20,
                                                    width: 65,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        topRight:
                                                            Radius.circular(4),
                                                        bottomRight:
                                                            Radius.circular(4),
                                                      ),
                                                      color:
                                                          ColorResources.white,
                                                      border: Border.all(
                                                          color: ColorResources
                                                              .greyE7E),
                                                    ),
                                                    child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 35, top: 2),
                                                      child: bookText(
                                                          "Like",
                                                          ColorResources
                                                              .grey8E8,
                                                          10),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: -3,
                                                    top: -5,
                                                    bottom: -5,
                                                    child: Container(
                                                      height: 30,
                                                      width: 30,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color: ColorResources
                                                            .white,
                                                        border: Border.all(
                                                            color:
                                                                ColorResources
                                                                    .greyE7E),
                                                      ),
                                                      child: Center(
                                                        child: Obx(
                                                          () => InkWell(
                                                            onTap: () {
                                                              variableController
                                                                          .favourite1[
                                                                      index] =
                                                                  !variableController
                                                                          .favourite1[
                                                                      index];
                                                            },
                                                            child: SvgPicture.asset(
                                                                variableController.favourite1[
                                                                            index] ==
                                                                        false
                                                                    ? Images
                                                                        .blankFavouriteIcon
                                                                    : Images
                                                                        .fillFavouriteIcon),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                              height: 95,
                                              width: 115,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                    recomendedBrowsList[index]
                                                        ["image2"],
                                                  ),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            InkWell(
                                              onTap: () {
                                                setState(() {
                                                  variableController
                                                          .recomended[index] =
                                                      !variableController
                                                          .recomended[index];
                                                  addItemMethod(
                                                      index,
                                                      recomendedBrowsList[index]
                                                          ["id"]);
                                                  log(" LIS T LIST LIST2222222 $addItemList");
                                                });
                                              },
                                              child: Container(
                                                height: 35,
                                                width: 115,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  color:
                                                      // variableController
                                                      //             .isAdd.value ==
                                                      //         true
                                                      variableController
                                                                      .recomended[
                                                                  index] ==
                                                              true
                                                          ? ColorResources
                                                              .REDB70
                                                          : ColorResources
                                                              .orangeFFF,
                                                  border: Border.all(
                                                      color: ColorResources
                                                          .REDB70,
                                                      width: 1),
                                                ),
                                                child:
                                                    // variableController
                                                    //             .isAdd.value ==
                                                    //         true
                                                    variableController
                                                                    .recomended[
                                                                index] ==
                                                            true
                                                        ? Padding(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        15),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Icon(
                                                                    Icons
                                                                        .remove,
                                                                    color: ColorResources
                                                                        .white,
                                                                    size: 16),
                                                                boldText(
                                                                    "1",
                                                                    ColorResources
                                                                        .white,
                                                                    16),
                                                                Icon(Icons.add,
                                                                    color: ColorResources
                                                                        .white,
                                                                    size: 16),
                                                              ],
                                                            ),
                                                          )
                                                        : index == 2
                                                            ? Stack(
                                                                alignment:
                                                                    Alignment
                                                                        .topRight,
                                                                children: [
                                                                  Center(
                                                                    child: boldText(
                                                                        "ADD",
                                                                        ColorResources
                                                                            .REDB70,
                                                                        16),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsets.only(
                                                                        top: 2,
                                                                        right:
                                                                            2),
                                                                    child:
                                                                        InkWell(
                                                                      onTap:
                                                                          () {
                                                                        Get.bottomSheet(
                                                                          BottomSheetScreen(),
                                                                          isScrollControlled:
                                                                              true,
                                                                          backgroundColor:
                                                                              Colors.transparent,
                                                                        );
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .add,
                                                                        color: ColorResources
                                                                            .REDB70,
                                                                        size:
                                                                            16,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              )
                                                            : Center(
                                                                child: boldText(
                                                                    "ADD",
                                                                    ColorResources
                                                                        .REDB70,
                                                                    16),
                                                              ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Divider(
                                    color: ColorResources.whiteF1F,
                                    thickness: 6),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: EdgeInsets.only(left: 18),
                            child: boldText("New  Collection Burgers (4)",
                                ColorResources.black120, 16),
                          ),
                          SizedBox(height: 12),
                          Divider(color: ColorResources.whiteF1F, thickness: 2),
                          ListView.builder(
                            shrinkWrap: true,
                            padding: EdgeInsets.zero,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: newKingsCollectionBrowsList.length,
                            itemBuilder: (context, index) => Column(
                              children: [
                                Container(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Image.asset(
                                                newKingsCollectionBrowsList[
                                                    index]["image1"],
                                                height: 15,
                                                width: 15,
                                              ),
                                              SizedBox(height: 8),
                                              Text(
                                                newKingsCollectionBrowsList[
                                                    index]["text1"],
                                                maxLines: 2,
                                                style: TextStyle(
                                                  color:
                                                      ColorResources.black120,
                                                  fontSize: 17,
                                                  fontFamily: TextFontFamily
                                                      .AIR_BNBCEREAL_MEDIUM,
                                                ),
                                              ),
                                              bookText(
                                                  newKingsCollectionBrowsList[
                                                      index]["text2"],
                                                  ColorResources.grey8E8,
                                                  16),
                                              bookText(
                                                  newKingsCollectionBrowsList[
                                                      index]["text3"],
                                                  ColorResources.grey8E8,
                                                  12),
                                              SizedBox(height: 10),
                                              Stack(
                                                alignment: Alignment.centerLeft,
                                                clipBehavior: Clip.none,
                                                children: [
                                                  Container(
                                                    height: 17,
                                                    width: 65,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        topRight:
                                                            Radius.circular(4),
                                                        bottomRight:
                                                            Radius.circular(4),
                                                      ),
                                                      color:
                                                          ColorResources.white,
                                                      border: Border.all(
                                                          color: ColorResources
                                                              .greyE7E),
                                                    ),
                                                    child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 35, top: 2),
                                                      child: bookText(
                                                          "Liked",
                                                          ColorResources
                                                              .grey8E8,
                                                          10),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: -4,
                                                    top: -5,
                                                    bottom: -5,
                                                    child: Container(
                                                      height: 30,
                                                      width: 30,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color: ColorResources
                                                            .white,
                                                        border: Border.all(
                                                            color:
                                                                ColorResources
                                                                    .greyE7E),
                                                      ),
                                                      child: Center(
                                                        child: Obx(
                                                          () => InkWell(
                                                            onTap: () {
                                                              variableController
                                                                          .favourite2[
                                                                      index] =
                                                                  !variableController
                                                                          .favourite2[
                                                                      index];
                                                            },
                                                            child: SvgPicture.asset(
                                                                variableController.favourite2[
                                                                            index] ==
                                                                        false
                                                                    ? Images
                                                                        .blankFavouriteIcon
                                                                    : Images
                                                                        .fillFavouriteIcon),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                              height: 95,
                                              width: 115,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                    newKingsCollectionBrowsList[
                                                        index]["image2"],
                                                  ),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            InkWell(
                                              onTap: () {
                                                setState(() {
                                                  variableController
                                                          .newKingsCollection[
                                                      index] = !variableController
                                                          .newKingsCollection[
                                                      index];
                                                  addItemMethod(
                                                      index,
                                                      newKingsCollectionBrowsList[
                                                          index]["id"]);
                                                  log(" LIS T LIST LIST2222222 $addItemList");
                                                });
                                              },
                                              child: Container(
                                                height: 35,
                                                width: 115,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  color: variableController
                                                                  .newKingsCollection[
                                                              index] ==
                                                          true
                                                      ? ColorResources.REDB70
                                                      : ColorResources
                                                          .orangeFFF,
                                                  border: Border.all(
                                                      color: ColorResources
                                                          .REDB70,
                                                      width: 1),
                                                ),
                                                child:
                                                    // variableController
                                                    //             .isAdd.value ==
                                                    //         true
                                                    variableController
                                                                    .newKingsCollection[
                                                                index] ==
                                                            true
                                                        ? Padding(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        15),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Icon(
                                                                    Icons
                                                                        .remove,
                                                                    color: ColorResources
                                                                        .white,
                                                                    size: 16),
                                                                boldText(
                                                                    "1",
                                                                    ColorResources
                                                                        .white,
                                                                    16),
                                                                Icon(Icons.add,
                                                                    color: ColorResources
                                                                        .white,
                                                                    size: 16),
                                                              ],
                                                            ),
                                                          )
                                                        : Center(
                                                            child: boldText(
                                                                "ADD",
                                                                ColorResources
                                                                    .REDB70,
                                                                16),
                                                          ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Divider(
                                    color: ColorResources.whiteF1F,
                                    thickness: 6),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: EdgeInsets.only(left: 18),
                            child: boldText("Flavours of Love Combos (6)",
                                ColorResources.black120, 16),
                          ),
                          SizedBox(height: 12),
                          Divider(color: ColorResources.whiteF1F, thickness: 2),
                          ListView.builder(
                            shrinkWrap: true,
                            padding: EdgeInsets.zero,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: flavoursOfLoveBrowsList.length,
                            itemBuilder: (context, index) => Column(
                              children: [
                                Container(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Image.asset(
                                                flavoursOfLoveBrowsList[index]
                                                    ["image1"],
                                                height: 15,
                                                width: 15,
                                              ),
                                              SizedBox(height: 8),
                                              Text(
                                                flavoursOfLoveBrowsList[index]
                                                    ["text1"],
                                                maxLines: 2,
                                                style: TextStyle(
                                                  color:
                                                      ColorResources.black120,
                                                  fontSize: 17,
                                                  fontFamily: TextFontFamily
                                                      .AIR_BNBCEREAL_MEDIUM,
                                                ),
                                              ),
                                              bookText(
                                                  flavoursOfLoveBrowsList[index]
                                                      ["text2"],
                                                  ColorResources.grey8E8,
                                                  16),
                                              bookText(
                                                  flavoursOfLoveBrowsList[index]
                                                      ["text3"],
                                                  ColorResources.grey8E8,
                                                  12),
                                              SizedBox(height: 10),
                                              Stack(
                                                alignment: Alignment.centerLeft,
                                                clipBehavior: Clip.none,
                                                children: [
                                                  Container(
                                                    height: 17,
                                                    width: 65,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        topRight:
                                                            Radius.circular(4),
                                                        bottomRight:
                                                            Radius.circular(4),
                                                      ),
                                                      color:
                                                          ColorResources.white,
                                                      border: Border.all(
                                                          color: ColorResources
                                                              .greyE7E),
                                                    ),
                                                    child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 35, top: 2),
                                                      child: bookText(
                                                          "Liked",
                                                          ColorResources
                                                              .grey8E8,
                                                          10),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: -4,
                                                    top: -5,
                                                    bottom: -5,
                                                    child: Container(
                                                      height: 30,
                                                      width: 30,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color: ColorResources
                                                            .white,
                                                        border: Border.all(
                                                            color:
                                                                ColorResources
                                                                    .greyE7E),
                                                      ),
                                                      child: Center(
                                                        child: Obx(
                                                          () => InkWell(
                                                            onTap: () {
                                                              variableController
                                                                          .favourite3[
                                                                      index] =
                                                                  !variableController
                                                                          .favourite3[
                                                                      index];
                                                            },
                                                            child: SvgPicture.asset(
                                                                variableController.favourite3[
                                                                            index] ==
                                                                        false
                                                                    ? Images
                                                                        .blankFavouriteIcon
                                                                    : Images
                                                                        .fillFavouriteIcon),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                              height: 95,
                                              width: 115,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                    flavoursOfLoveBrowsList[
                                                        index]["image2"],
                                                  ),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            InkWell(
                                              onTap: () {
                                                setState(() {
                                                  variableController
                                                          .flavoursOfLove[
                                                      index] = !variableController
                                                          .flavoursOfLove[
                                                      index];
                                                  addItemMethod(
                                                      index,
                                                      flavoursOfLoveBrowsList[
                                                          index]["id"]);
                                                  log(" LIS T LIST LIST2222222 $addItemList");
                                                });
                                              },
                                              child: Container(
                                                height: 35,
                                                width: 115,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  color:
                                                      // variableController
                                                      //             .isAdd.value ==
                                                      //         true
                                                      variableController
                                                                      .flavoursOfLove[
                                                                  index] ==
                                                              true
                                                          ? ColorResources
                                                              .REDB70
                                                          : ColorResources
                                                              .orangeFFF,
                                                  border: Border.all(
                                                      color: ColorResources
                                                          .REDB70,
                                                      width: 1),
                                                ),
                                                child:
                                                    // variableController
                                                    //             .isAdd.value ==
                                                    //         true
                                                    variableController
                                                                    .flavoursOfLove[
                                                                index] ==
                                                            true
                                                        ? Padding(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        15),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Icon(
                                                                    Icons
                                                                        .remove,
                                                                    color: ColorResources
                                                                        .white,
                                                                    size: 16),
                                                                boldText(
                                                                    "1",
                                                                    ColorResources
                                                                        .white,
                                                                    16),
                                                                Icon(Icons.add,
                                                                    color: ColorResources
                                                                        .white,
                                                                    size: 16),
                                                              ],
                                                            ),
                                                          )
                                                        : index == 0
                                                            ? Stack(
                                                                alignment:
                                                                    Alignment
                                                                        .topRight,
                                                                children: [
                                                                  Center(
                                                                    child: boldText(
                                                                        "ADD",
                                                                        ColorResources
                                                                            .REDB70,
                                                                        16),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsets.only(
                                                                        top: 2,
                                                                        right:
                                                                            2),
                                                                    child:
                                                                        InkWell(
                                                                      onTap:
                                                                          () {
                                                                        Get.bottomSheet(
                                                                          BottomSheetScreen(),
                                                                          isScrollControlled:
                                                                              true,
                                                                          backgroundColor:
                                                                              Colors.transparent,
                                                                        );
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .add,
                                                                        color: ColorResources
                                                                            .REDB70,
                                                                        size:
                                                                            16,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              )
                                                            : Center(
                                                                child: boldText(
                                                                    "ADD",
                                                                    ColorResources
                                                                        .REDB70,
                                                                    16),
                                                              ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Divider(
                                    color: ColorResources.whiteF1F,
                                    thickness: 6),
                              ],
                            ),
                          ),
                          SizedBox(height: 14),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                mediumText("Report an issue with the menu",
                                    ColorResources.REDB70, 14),
                                Icon(Icons.arrow_right,
                                    color: ColorResources.REDB70),
                              ],
                            ),
                          ),
                          SizedBox(height: 5),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: lightText(
                                "Menu and prices are set directly by the restaurant.",
                                ColorResources.grey8E8,
                                14),
                          ),
                          SizedBox(height: 14),
                          Divider(thickness: 1, color: ColorResources.greyE7E),
                          SizedBox(height: 14),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: SvgPicture.asset(Images.fassaiLogo),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: lightText("Lic. No. 123456789009874",
                                ColorResources.grey8E8, 12),
                          ),
                          addItemList.isNotEmpty
                              ? SizedBox(height: 90)
                              : SizedBox(height: 30),
                        ],
                      ),
                    ),
                  ),
                  addItemList.isNotEmpty
                      ? Container(
                          height: 82,
                          width: Get.width,
                          decoration: BoxDecoration(
                            color: ColorResources.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 16,
                                spreadRadius: 0,
                                color: ColorResources.black.withOpacity(0.1),
                                offset: Offset(0, -4),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 18),
                            child: InkWell(
                              onTap: () {
                                Get.off(CartDetailScreen());
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: ColorResources.REDB70),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          bookText("1 item",
                                              ColorResources.white, 14),
                                          SizedBox(
                                            height: 20,
                                            child: VerticalDivider(
                                              color: ColorResources.white,
                                              thickness: 1,
                                              indent: 2,
                                              endIndent: 0,
                                              width: 20,
                                            ),
                                          ),
                                          mediumText(
                                              "₪26", ColorResources.white, 16),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SvgPicture.asset(Images.cartImage),
                                          SizedBox(width: 10),
                                          boldText("VIEW CART",
                                              ColorResources.white, 16),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
            Obx(
              () => variableController.browsMenuClose.value == true
                  ? Container(
                      height: Get.height,
                      width: Get.width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(Images.longBlackCanvas),
                            fit: BoxFit.cover),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 60, right: 20, top: 200, bottom: 80),
                        child: Container(
                          decoration: BoxDecoration(
                            color: ColorResources.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 17, vertical: 17),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    boldText("Recommended",
                                        ColorResources.black120, 18),
                                    boldText("29", ColorResources.black120, 18),
                                  ],
                                ),
                                SizedBox(height: 25),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    bookText("New Kings Collection\n Burgers",
                                        ColorResources.black120, 18),
                                    bookText("4", ColorResources.black120, 18),
                                  ],
                                ),
                                SizedBox(height: 25),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    bookText("Flavours of Love Combos",
                                        ColorResources.black120, 18),
                                    bookText("4", ColorResources.black120, 18),
                                  ],
                                ),
                                SizedBox(height: 25),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    bookText("Home Delight Combos",
                                        ColorResources.black120, 18),
                                    bookText("6", ColorResources.black120, 18),
                                  ],
                                ),
                                SizedBox(height: 25),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    bookText("Friends & Family Combo",
                                        ColorResources.black120, 18),
                                    bookText("23", ColorResources.black120, 18),
                                  ],
                                ),
                                SizedBox(height: 25),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    bookText(
                                        "Whopper", ColorResources.black120, 18),
                                    bookText("11", ColorResources.black120, 18),
                                  ],
                                ),
                                SizedBox(height: 25),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    bookText("Meal Combos (Save Rs 35)",
                                        ColorResources.black120, 18),
                                    bookText("19", ColorResources.black120, 18),
                                  ],
                                ),
                                SizedBox(height: 25),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    bookText("Burgers & Wraps",
                                        ColorResources.black120, 18),
                                    bookText("27", ColorResources.black120, 18),
                                  ],
                                ),
                                SizedBox(height: 25),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    bookText("What’s New",
                                        ColorResources.black120, 18),
                                    bookText("21", ColorResources.black120, 18),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  : SizedBox.shrink(),
            ),
          ],
        ),
      ),
      floatingActionButton: Obx(
        () => Padding(
          padding: EdgeInsets.only(
              bottom: addItemList.isNotEmpty? 85 : 0),
          child: FloatingActionButton.extended(
            backgroundColor: ColorResources.black120,
            onPressed: () {
              variableController.browsMenuClose.value =
                  !variableController.browsMenuClose.value;
            },
            label: mediumText(
                variableController.browsMenuClose.value == true
                    ? "CLOSE"
                    : "BROWSE MENU",
                ColorResources.white,
                14),
            icon: variableController.browsMenuClose.value == true
                ? Icon(
                    Icons.close,
                    color: ColorResources.white,
                  )
                : SvgPicture.asset(Images.browsMenuIcon),
          ),
        ),
      ),
    );
  }
}
