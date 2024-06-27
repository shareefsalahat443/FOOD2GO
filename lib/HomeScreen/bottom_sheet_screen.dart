import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:FOOD2GO/DesignController/varibale_controller.dart';
import 'package:FOOD2GO/Utils/colors.dart';
import 'package:FOOD2GO/Utils/common_widgets.dart';
import 'package:FOOD2GO/Utils/images.dart';
import 'package:FOOD2GO/main.dart';

class BottomSheetScreen extends StatelessWidget {
  BottomSheetScreen({Key? key}) : super(key: key);
  final VariableController variableController = Get.put(VariableController());
  final List<Map> list1 = [
    {
      "text1": "King Fries",
      "text2": "₹99",
    },
    {
      "text1": "King Peri peri Fries",
      "text2": "₹119",
    },
    {
      "text1": "Cheesy Fries",
      "text2": "₹109",
    },
    {
      "text1": "Medium Fries",
      "text2": "₹85",
    },
    {
      "text1": "Medium Peri Peri  Fries",
      "text2": "₹105",
    },
    {
      "text1": "Veggie Strips",
      "text2": "₹49",
    },
  ];

  final List<Map> list2 = [
    {
      "text1": "Fiery Hell Dip",
      "text2": "₹20",
    },
    {
      "text1": "Easy Cheesy Dip",
      "text2": "₹20",
    },
    {
      "text1": "Sweet N Spice",
      "text2": "₹20",
    },
  ];


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20),
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
            height: 590,
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
                ScrollConfiguration(
                  behavior: MyBehavior(),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 225,
                          width: Get.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30),
                              topLeft: Radius.circular(30),
                            ),
                            image: DecorationImage(
                              image: AssetImage(Images.burgerBigImage),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 15,
                          ),
                          child: mediumText(
                              "Whopper Fridays - Mixed Doubles\n(Veg + Chicken)",
                              ColorResources.black120,
                              20),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: bookText("1 Veg Whopper + 1 Chicken + Whopper",
                              ColorResources.grey8E8, 14),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              Container(
                                height: 20,
                                width: 65,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(4),
                                    bottomRight: Radius.circular(4),
                                  ),
                                  color: ColorResources.white,
                                  border:
                                      Border.all(color: ColorResources.greyE7E),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(left: 35, top: 2),
                                  child: bookText(
                                      "Liked", ColorResources.grey8E8, 10),
                                ),
                              ),
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: ColorResources.white,
                                  border:
                                      Border.all(color: ColorResources.greyE7E),
                                ),
                                child: Center(
                                  child: InkWell(
                                    onTap: () {},
                                    child: SvgPicture.asset(
                                        Images.blankFavouriteIcon),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15),
                        Divider(color: ColorResources.whiteF1F, thickness: 1),
                        SizedBox(height: 15),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: [
                              mediumText("Choose your Sides",
                                  ColorResources.black120, 17),
                              SizedBox(width: 5),
                              bookText("(0/1)", ColorResources.grey8E8, 14),
                            ],
                          ),
                        ),
                        SizedBox(height: 15),
                        ScrollConfiguration(
                          behavior: MyBehavior(),
                          child: ListView.builder(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: list1.length,
                            itemBuilder: (context, index) => Padding(
                              padding: EdgeInsets.only(bottom: 18),
                              child: Row(
                                children: [
                                  Image.asset(
                                    Images.vegIcon,
                                    height: 15,
                                    width: 15,
                                  ),
                                  SizedBox(width: 12),
                                  bookText(list1[index]["text1"],
                                      ColorResources.black120, 14),
                                  SizedBox(width: 30),
                                  bookText(list1[index]["text2"],
                                      ColorResources.grey8E8, 16),
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Obx(
                                        () => InkWell(
                                          onTap: () {
                                            variableController.check1[index] =
                                                !variableController.check1[index];
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: variableController
                                                  .check1[
                                              index] ==
                                                  false
                                                  ? ColorResources.white
                                                  : ColorResources.REDB70,
                                              border: Border.all(
                                                  color: variableController
                                                                  .check1[
                                                              index] ==
                                                          false
                                                      ? ColorResources.greyBCB
                                                      : ColorResources.REDB70,
                                                  width: 1.5),
                                            ),
                                            child: Icon(Icons.check,
                                                color: ColorResources.white,
                                                size: 16),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Divider(color: ColorResources.whiteF1F, thickness: 1),
                        SizedBox(height: 15),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: [
                              mediumText("Choose Your Dips",
                                  ColorResources.black120, 17),
                              SizedBox(width: 5),
                              bookText("(0/1)", ColorResources.grey8E8, 14),
                            ],
                          ),
                        ),
                        SizedBox(height: 15),
                        ScrollConfiguration(
                          behavior: MyBehavior(),
                          child: ListView.builder(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: list2.length,
                            itemBuilder: (context, index) => Padding(
                              padding: EdgeInsets.only(bottom: 18),
                              child: Row(
                                children: [
                                  Image.asset(
                                    Images.vegIcon,
                                    height: 15,
                                    width: 15,
                                  ),
                                  SizedBox(width: 12),
                                  bookText(list2[index]["text1"],
                                      ColorResources.black120, 14),
                                  SizedBox(width: 30),
                                  bookText(list2[index]["text2"],
                                      ColorResources.grey8E8, 16),
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Obx(
                                            () => InkWell(
                                          onTap: () {
                                            variableController.check2[index] =
                                            !variableController.check2[index];
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(5),
                                              color: variableController
                                                  .check2[
                                              index] ==
                                                  false
                                                  ? ColorResources.white
                                                  : ColorResources.REDB70,
                                              border: Border.all(
                                                  color: variableController
                                                      .check2[
                                                  index] ==
                                                      false
                                                      ? ColorResources.greyBCB
                                                      : ColorResources.REDB70,
                                                  width: 1.5),
                                            ),
                                            child: Icon(Icons.check,
                                                color: ColorResources.white,
                                                size: 16),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 85),
                      ],
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
                        color: ColorResources.black.withOpacity(0.1),
                        offset: Offset(0, -4),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 18),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 45,
                            decoration: BoxDecoration(
                              color: ColorResources.REDB70,
                              borderRadius: BorderRadius.circular(6),
                              border:
                                  Border.all(color: ColorResources.REDB70),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      if (variableController.count1.value > 0) {
                                        variableController.count1.value--;
                                      }
                                    },
                                    child: Icon(Icons.remove,
                                        color: ColorResources.REDB70,
                                        size: 16),
                                  ),
                                  SizedBox(width: 5),
                                  Obx(
                                    () => boldText(
                                        "${variableController.count1.value}",
                                        ColorResources.black120,
                                        16),
                                  ),
                                  SizedBox(width: 5),
                                  InkWell(
                                    onTap: () {
                                      variableController.count1.value++;
                                    },
                                    child: Icon(Icons.add,
                                        color: ColorResources.REDB70,
                                        size: 16),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 15),
                        Expanded(
                          flex: 3,
                          child: InkWell(
                            onTap: () {
                              // Get.off(ManageAddAddressScreen());
                            },
                            child: Container(
                              height: 45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: ColorResources.REDB70),
                              child: Center(
                                child: boldText(
                                    "ADD ITEM ₹328", ColorResources.white, 16),
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
          ),
        ),
      ],
    );
  }
}
