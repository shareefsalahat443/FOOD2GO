import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:FOOD2GO/AddressScreen/manage_add_address_screen.dart';
import 'package:FOOD2GO/BillsScreen/bills_total_screen.dart';
import 'package:FOOD2GO/CartScreen/cart_detail_address_screen.dart';
import 'package:FOOD2GO/DesignController/varibale_controller.dart';
import 'package:FOOD2GO/Utils/colors.dart';
import 'package:FOOD2GO/Utils/common_widgets.dart';
import 'package:FOOD2GO/Utils/images.dart';
import 'package:FOOD2GO/Utils/text_font_family.dart';
import 'package:FOOD2GO/main.dart';

class AddressScreen extends StatelessWidget {
  AddressScreen({Key? key}) : super(key: key);

  final TextEditingController addressController = TextEditingController();
  final TextEditingController completeAddressController =
  TextEditingController();
  final TextEditingController floorController = TextEditingController();
  final TextEditingController nearByController = TextEditingController();
  final TextEditingController directionsReachController =
  TextEditingController();

  final VariableController variableController = Get.put(VariableController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.white,
      body: Stack(
        children: [
          Container(
            height: Get.height,
            width: Get.width,
            decoration: BoxDecoration(
              color: ColorResources.white,
              image: DecorationImage(
                image: AssetImage(Images.map),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: Image.asset(Images.mapCanvas, fit: BoxFit.fitWidth),
          ),
          Positioned(
            top: 50,
            left: 25,
            right: 25,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(Icons.arrow_back, color: ColorResources.black120),
                ),
                Icon(Icons.more_vert, color: ColorResources.black120),
              ],
            ),
          ),
          Positioned(
            bottom: 200,
            right: 20,
            child: InkWell(
              onTap: () {
                // Get.to(BillsTotalScreen());
              },
              child: CircleAvatar(
                radius: 30,
                backgroundColor: ColorResources.REDB70,
                child: Icon(Icons.my_location, color: ColorResources.white),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 18,
            right: 18,
            child: Container(
              width: Get.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: ColorResources.white,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 40),
                          child: Icon(Icons.location_on_outlined,
                              color: ColorResources.black120),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            bookText(
                                "Shubh Square", ColorResources.black120, 17),
                            bookText(
                                "Office No 603, Subh Square, \nLal Darwaja,Patel Vadi, Surat,",
                                ColorResources.grey8E8,
                                14),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            // Get.to(SearchLocationScreen());
                          },
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 40),
                            child: Container(
                              height: 22,
                              width: 72,
                              decoration: BoxDecoration(
                                color: ColorResources.greyF0F,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                    color: ColorResources.greyE3E, width: 1),
                              ),
                              child: Center(
                                child: mediumText(
                                    "Change", ColorResources.REDB70, 12),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Divider(color: ColorResources.greyF2F, thickness: 1),
                    SizedBox(height: 10),
                    InkWell(
                      onTap: () {
                        Get.bottomSheet(
                          Stack(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 30),
                                child: Align(
                                  alignment: Alignment.topCenter,
                                  child: InkWell(
                                    onTap: () {
                                      Get.back();
                                    },
                                    child: CircleAvatar(
                                      radius: 25,
                                      backgroundColor: ColorResources.black,
                                      child: Icon(Icons.clear),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: 580,
                                  width: Get.width,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(30),
                                      topLeft: Radius.circular(30),
                                    ),
                                    color: ColorResources.white,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 20, right: 20, top: 20),
                                        child: ScrollConfiguration(
                                          behavior: MyBehavior(),
                                          child: SingleChildScrollView(
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                mediumText(
                                                    "Enter address details",
                                                    ColorResources.black120,
                                                    20),
                                                SizedBox(height: 20),
                                                TextFormField(
                                                  controller: addressController,
                                                  cursorColor:
                                                  ColorResources.black120,
                                                  style: TextStyle(
                                                    color:
                                                    ColorResources.black120,
                                                    fontSize: 16,
                                                    fontFamily: TextFontFamily
                                                        .AIR_BNBCEREAL_BOOK,
                                                  ),
                                                  decoration: InputDecoration(
                                                    prefixIcon: Padding(
                                                      padding:
                                                      EdgeInsets.all(15),
                                                      child: SvgPicture.asset(
                                                          Images.chekMark),
                                                    ),
                                                    suffixIcon: InkWell(
                                                      onTap: () {
                                                        Get.bottomSheet(
                                                          Padding(
                                                            padding:
                                                            EdgeInsets.only(
                                                                top: 280),
                                                            child:
                                                            ScrollConfiguration(
                                                              behavior:
                                                              MyBehavior(),
                                                              child:
                                                              SingleChildScrollView(
                                                                child: Column(
                                                                  children: [
                                                                    InkWell(
                                                                      onTap:
                                                                          () {
                                                                        Get.back();
                                                                      },
                                                                      child:
                                                                      CircleAvatar(
                                                                        radius:
                                                                        25,
                                                                        backgroundColor:
                                                                        ColorResources.black,
                                                                        child: Icon(
                                                                            Icons.clear),
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                        height:
                                                                        18),
                                                                    Container(
                                                                      height: Get
                                                                          .height,
                                                                      width: Get
                                                                          .width,
                                                                      decoration:
                                                                      BoxDecoration(
                                                                        borderRadius:
                                                                        BorderRadius.only(
                                                                          topRight:
                                                                          Radius.circular(30),
                                                                          topLeft:
                                                                          Radius.circular(30),
                                                                        ),
                                                                        color: ColorResources
                                                                            .white,
                                                                      ),
                                                                      child:
                                                                      Padding(
                                                                        padding: EdgeInsets.symmetric(
                                                                            horizontal:
                                                                            20,
                                                                            vertical:
                                                                            20),
                                                                        child:
                                                                        Column(
                                                                          crossAxisAlignment:
                                                                          CrossAxisAlignment.start,
                                                                          children: [
                                                                            mediumText(
                                                                                "Select a location",
                                                                                ColorResources.black120,
                                                                                20),
                                                                            SizedBox(height: 15),
                                                                            TextFormField(
                                                                              cursorColor: ColorResources.black120,
                                                                              style: TextStyle(
                                                                                color: ColorResources.black120,
                                                                                fontSize: 13,
                                                                                fontFamily: TextFontFamily.AIR_BNBCEREAL_BOOK,
                                                                              ),
                                                                              decoration: InputDecoration(
                                                                                prefixIcon: Padding(
                                                                                  padding: EdgeInsets.all(15),
                                                                                  child: SvgPicture.asset(Images.search, color: ColorResources.orangeF67),
                                                                                ),
                                                                                hintText: "Search for area, street name...",
                                                                                hintStyle: TextStyle(
                                                                                  color: ColorResources.grey8E8.withOpacity(0.8),
                                                                                  fontSize: 13,
                                                                                  fontFamily: TextFontFamily.AIR_BNBCEREAL_BOOK,
                                                                                ),
                                                                                filled: true,
                                                                                fillColor: ColorResources.greyF6F,
                                                                                border: OutlineInputBorder(
                                                                                  borderSide: BorderSide(color: ColorResources.greyF6F),
                                                                                  borderRadius: BorderRadius.circular(14),
                                                                                ),
                                                                                enabledBorder: OutlineInputBorder(
                                                                                  borderSide: BorderSide(color: ColorResources.greyF6F),
                                                                                  borderRadius: BorderRadius.circular(14),
                                                                                ),
                                                                                focusedBorder: OutlineInputBorder(
                                                                                  borderSide: BorderSide(color: ColorResources.greyF6F),
                                                                                  borderRadius: BorderRadius.circular(14),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            SizedBox(height: 15),
                                                                            Row(
                                                                              children: [
                                                                                Icon(Icons.my_location, color: ColorResources.orangeF67),
                                                                                SizedBox(width: 15),
                                                                                Column(
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    mediumText("Use your current location", ColorResources.REDB70, 14),
                                                                                    bookText("Subh Square", ColorResources.grey8E8, 12),
                                                                                  ],
                                                                                ),
                                                                                Align(alignment: Alignment.centerRight, child: Icon(Icons.arrow_forward_ios, size: 10, color: ColorResources.greyA69)),
                                                                              ],
                                                                            ),
                                                                            SizedBox(height: 15),
                                                                            Divider(
                                                                                color: ColorResources.whiteF1F,
                                                                                thickness: 1),
                                                                            SizedBox(height: 20),
                                                                            lightText(
                                                                                "Recent locations",
                                                                                ColorResources.black120,
                                                                                18),
                                                                            SizedBox(height: 15),
                                                                            Row(
                                                                              children: [
                                                                                Column(
                                                                                  children: [
                                                                                    Icon(CupertinoIcons.clock_fill, color: ColorResources.grey8E8),
                                                                                    bookText("48 m", ColorResources.grey8E8, 10),
                                                                                  ],
                                                                                ),
                                                                                SizedBox(width: 18),
                                                                                bookText("Shubh square, lal darwaja", ColorResources.black120, 18),
                                                                              ],
                                                                            ),
                                                                            SizedBox(height: 15),
                                                                            Divider(
                                                                                color: ColorResources.whiteF1F,
                                                                                thickness: 1),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          isScrollControlled:
                                                          true,
                                                          backgroundColor:
                                                          Colors
                                                              .transparent,
                                                        );
                                                      },
                                                      child: mediumText(
                                                          "CHANGE",
                                                          ColorResources
                                                              .orangeF67,
                                                          14),
                                                    ),
                                                    labelText: "Label",
                                                    labelStyle: TextStyle(
                                                      color: ColorResources
                                                          .grey8E8,
                                                      fontSize: 12,
                                                      fontFamily: TextFontFamily
                                                          .AIR_BNBCEREAL_BOOK,
                                                    ),
                                                    hintText:
                                                    "Shubh square, lal darwaja",
                                                    hintStyle: TextStyle(
                                                      color: ColorResources
                                                          .grey8E8,
                                                      fontSize: 14,
                                                      fontFamily: TextFontFamily
                                                          .AIR_BNBCEREAL_BOOK,
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                    ColorResources.white,
                                                    border:
                                                    UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: ColorResources
                                                              .whiteF1F,
                                                          width: 2),
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                    ),
                                                    enabledBorder:
                                                    UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: ColorResources
                                                              .whiteF1F,
                                                          width: 2),
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                    ),
                                                    focusedBorder:
                                                    UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: ColorResources
                                                              .whiteF1F,
                                                          width: 2),
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 20),
                                                textField2(
                                                    "Complete address*",
                                                    completeAddressController,
                                                    "Complete address*"),
                                                SizedBox(height: 20),
                                                textField2(
                                                    "Floor (optional)",
                                                    floorController,
                                                    "Floor (optional)"),
                                                SizedBox(height: 20),
                                                textField2(
                                                    "Nearby landmark (optional)",
                                                    nearByController,
                                                    "Nearby landmark (optional)"),
                                                SizedBox(height: 30),
                                                bookText(
                                                    "Directions to Reach (optional)",
                                                    ColorResources.grey8E8,
                                                    14),
                                                SizedBox(height: 8),
                                                TextFormField(
                                                  maxLines: 5,
                                                  controller:
                                                  directionsReachController,
                                                  cursorColor:
                                                  ColorResources.black120,
                                                  style: TextStyle(
                                                    color:
                                                    ColorResources.black120,
                                                    fontSize: 16,
                                                    fontFamily: TextFontFamily
                                                        .AIR_BNBCEREAL_BOOK,
                                                  ),
                                                  decoration: InputDecoration(
                                                    hintText:
                                                    "e.g. Ring the bell on the red gate",
                                                    hintStyle: TextStyle(
                                                      color: ColorResources
                                                          .grey8E8,
                                                      fontSize: 14,
                                                      fontFamily: TextFontFamily
                                                          .AIR_BNBCEREAL_BOOK,
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                    ColorResources.white,
                                                    border: OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: ColorResources
                                                              .whiteF1F,
                                                          width: 2),
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                    ),
                                                    enabledBorder:
                                                    OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: ColorResources
                                                              .whiteF1F,
                                                          width: 2),
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                    ),
                                                    focusedBorder:
                                                    OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: ColorResources
                                                              .whiteF1F,
                                                          width: 2),
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 20),
                                                bookText("Save address as*",
                                                    ColorResources.grey8E8, 12),
                                                SizedBox(height: 15),
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      child: Obx(
                                                            () => InkWell(
                                                          onTap: () {
                                                            if (variableController.one.isTrue ||
                                                                variableController
                                                                    .two
                                                                    .isTrue ||
                                                                variableController
                                                                    .three
                                                                    .isTrue) {
                                                              variableController
                                                                  .one(false);
                                                              variableController
                                                                  .two(false);
                                                              variableController
                                                                  .three(false);
                                                            }
                                                            variableController
                                                                .one(true);
                                                          },
                                                          child: Container(
                                                            height: 45,
                                                            width: Get.width,
                                                            decoration:
                                                            BoxDecoration(
                                                              borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                  12),
                                                              color: variableController
                                                                  .one
                                                                  .isTrue
                                                                  ? ColorResources
                                                                  .orangeFF
                                                                  : ColorResources
                                                                  .white,
                                                              border: Border.all(
                                                                  width: 1,
                                                                  color: variableController
                                                                      .one
                                                                      .isTrue
                                                                      ? ColorResources
                                                                      .orangeFC6
                                                                      : ColorResources
                                                                      .whiteF1F),
                                                            ),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                              children: [
                                                                SvgPicture.asset(
                                                                    Images
                                                                        .homeWorkIcon,
                                                                    color: variableController
                                                                        .one
                                                                        .isTrue
                                                                        ? ColorResources
                                                                        .orangeFC6
                                                                        : ColorResources
                                                                        .black120),
                                                                SizedBox(
                                                                    width: 5),
                                                                mediumText(
                                                                    "Home",
                                                                    variableController
                                                                        .one
                                                                        .isTrue
                                                                        ? ColorResources
                                                                        .orangeFC6
                                                                        : ColorResources
                                                                        .black120,
                                                                    14)
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(width: 22),
                                                    Expanded(
                                                      child: Obx(
                                                            () => InkWell(
                                                          onTap: () {
                                                            if (variableController.one.isTrue ||
                                                                variableController
                                                                    .two
                                                                    .isTrue ||
                                                                variableController
                                                                    .three
                                                                    .isTrue) {
                                                              variableController
                                                                  .one(false);
                                                              variableController
                                                                  .two(false);
                                                              variableController
                                                                  .three(false);
                                                            }
                                                            variableController
                                                                .two(true);
                                                          },
                                                          child: Container(
                                                            height: 45,
                                                            width: Get.width,
                                                            decoration:
                                                            BoxDecoration(
                                                              borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                  12),
                                                              color: variableController
                                                                  .two
                                                                  .isTrue
                                                                  ? ColorResources
                                                                  .orangeFF
                                                                  : ColorResources
                                                                  .white,
                                                              border: Border.all(
                                                                  width: 1,
                                                                  color: variableController
                                                                      .two
                                                                      .isTrue
                                                                      ? ColorResources
                                                                      .orangeFC6
                                                                      : ColorResources
                                                                      .whiteF1F),
                                                            ),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                              children: [
                                                                SvgPicture.asset(
                                                                    Images
                                                                        .officeWorkIcon,
                                                                    color: variableController
                                                                        .two
                                                                        .isTrue
                                                                        ? ColorResources
                                                                        .orangeFC6
                                                                        : ColorResources
                                                                        .black120),
                                                                SizedBox(
                                                                    width: 5),
                                                                mediumText(
                                                                    "Work",
                                                                    variableController
                                                                        .two
                                                                        .isTrue
                                                                        ? ColorResources
                                                                        .orangeFC6
                                                                        : ColorResources
                                                                        .black120,
                                                                    14)
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(width: 22),
                                                    Expanded(
                                                      child: Obx(
                                                            () => InkWell(
                                                          onTap: () {
                                                            if (variableController.one.isTrue ||
                                                                variableController
                                                                    .two
                                                                    .isTrue ||
                                                                variableController
                                                                    .three
                                                                    .isTrue) {
                                                              variableController
                                                                  .one(false);
                                                              variableController
                                                                  .two(false);
                                                              variableController
                                                                  .three(false);
                                                            }
                                                            variableController
                                                                .three(true);
                                                          },
                                                          child: Container(
                                                            height: 45,
                                                            width: Get.width,
                                                            decoration:
                                                            BoxDecoration(
                                                              borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                  12),
                                                              color: variableController
                                                                  .three
                                                                  .isTrue
                                                                  ? ColorResources
                                                                  .orangeFF
                                                                  : ColorResources
                                                                  .white,
                                                              border: Border.all(
                                                                  width: 1,
                                                                  color: variableController
                                                                      .three
                                                                      .isTrue
                                                                      ? ColorResources
                                                                      .orangeFC6
                                                                      : ColorResources
                                                                      .whiteF1F),
                                                            ),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                              children: [
                                                                SvgPicture.asset(
                                                                    Images
                                                                        .locationWorkIcon,
                                                                    color: variableController
                                                                        .three
                                                                        .isTrue
                                                                        ? ColorResources
                                                                        .orangeFC6
                                                                        : ColorResources
                                                                        .black120),
                                                                SizedBox(
                                                                    width: 5),
                                                                mediumText(
                                                                    "Other",
                                                                    variableController
                                                                        .three
                                                                        .isTrue
                                                                        ? ColorResources
                                                                        .orangeFC6
                                                                        : ColorResources
                                                                        .black120,
                                                                    14)
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 100),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 82,
                                        width: Get.width,
                                        decoration: BoxDecoration(
                                          color: ColorResources.white,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 16,
                                              spreadRadius: 0,
                                              color: ColorResources.black
                                                  .withOpacity(0.1),
                                              offset: Offset(0, -4),
                                            ),
                                          ],
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 15, vertical: 18),
                                          child: InkWell(
                                            onTap: () {
                                              Get.off(
                                                  CartDetailAddressScreen());
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(4),
                                                  color:
                                                  ColorResources.REDB70),
                                              child: Center(
                                                child: boldText("Save Address",
                                                    ColorResources.white, 16),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                        );
                      },
                      child: mediumText(
                          "CONFIRM LOCATION", ColorResources.REDB70, 15),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
