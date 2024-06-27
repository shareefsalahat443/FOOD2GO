import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:FOOD2GO/DesignController/varibale_controller.dart';
import 'package:FOOD2GO/Utils/colors.dart';
import 'package:FOOD2GO/Utils/common_widgets.dart';
import 'package:FOOD2GO/Utils/images.dart';
import 'package:FOOD2GO/main.dart';
import 'package:FOOD2GO/rout_widget_screen/rout_screen.dart';

class CouponScreen extends StatelessWidget {
  CouponScreen({Key? key}) : super(key: key);
  final VariableController variableController = Get.put(VariableController());
  final List<Map> couponList = [
    {
      "image": Images.pizza,
      "text1": "Chicken Pizza",
      "text2": "Pizzas, Italian",
      "text3": "Sharlock Pizza",
      "text4": "",
    },
    {
      "image": Images.Burger90s1,
      "text1": "Classic Burger ",
      "text2": "Burger Classic Chicken 180gm ",
      "text3": "90's Burger",
      "text4": "",
    },
    {
      "image": Images.shawarmann,
      "text1": "Chicken Shawarma ",
      "text2": "Chicken Shawarma Standard ",
      "text3": "Shawerman",
      "text4": "",
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.whiteF1F,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          selectedIndex == 2
              ? Container(
                  padding:
                      EdgeInsets.only(top: 45, bottom: 22, left: 20, right: 20),
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
                  child: Row(
                    children: [
                      SvgPicture.asset(Images.location),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          mediumText("603", ColorResources.black120, 17),
                          bookText("Office No 603, Subh Square, Lal Darwaja...",
                              ColorResources.grey8E8, 14),
                        ],
                      ),
                    ],
                  ),
                )
              : SizedBox.shrink(),
          Expanded(
            child: ScrollConfiguration(
              behavior: MyBehavior(),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 6),
                    selectedIndex == 2
                        ? Container(
                            width: Get.width,
                            color: ColorResources.white,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: 14, bottom: 14, left: 24),
                              child: boldText("Featured Offers",
                                  ColorResources.black120, 18),
                            ),
                          )
                        : Container(
                            width: Get.width,
                            color: ColorResources.white,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, top: 20, bottom: 10),
                              child: ListTile(
                                leading: InkWell(
                                  onTap: () {
                                    Get.back();
                                  },
                                  child: CircleAvatar(
                                    backgroundColor: ColorResources.whiteF1F,
                                    child: Icon(Icons.arrow_back_ios_outlined,
                                        color: ColorResources.grey808,
                                        size: 15),
                                  ),
                                ),
                                title: Padding(
                                  padding: EdgeInsets.only(right: 50),
                                  child: Center(
                                    child: mediumText(
                                        "Offers", ColorResources.black231, 20),
                                  ),
                                ),
                              ),
                            ),
                          ),
                    ListView.builder(
                      padding: selectedIndex == 2
                          ? EdgeInsets.zero
                          : EdgeInsets.only(top: 6),
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: couponList.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => Padding(
                        padding: EdgeInsets.only(bottom: 6),
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
                                            color: ColorResources.white,
                                            width: 2),
                                        color: ColorResources.yellowF88,
                                      ),
                                      child: Column(
                                        children: [
                                          boldText(couponList[index]["text4"],
                                              ColorResources.white, 12),
                                          boldText("UPTO ₹120",
                                              ColorResources.white, 7),
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
                                          ColorResources.black120
                                              .withOpacity(0.74),
                                          12),
                                      SizedBox(width: 5),
                                      Icon(Icons.circle,
                                          color: ColorResources.grey8E8
                                              .withOpacity(0.5),
                                          size: 5),
                                      SizedBox(width: 5),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Obx(
                      () => Container(
                        width: Get.width,
                        color: ColorResources.white,
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: 20, bottom: 50, left: 22, right: 22),
                          child: MaterialButton(
                            onPressed: () {
                              variableController.allOffer.value =
                                  !variableController.allOffer.value;
                              // Get.to(MapWidgetScreen());
                            },
                            height: 53,
                            minWidth: Get.width,
                            child: ListTile(
                              title: Center(
                                child: Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: bookText(
                                      variableController.allOffer.value == true
                                          ? "HIDE ALL OFFERS"
                                          : "VIEW ALL OFFERS",
                                      ColorResources.grey8E8,
                                      14),
                                ),
                              ),
                              trailing: SvgPicture.asset(
                                  variableController.allOffer.value == true
                                      ? Images.arrowUpIcon1
                                      : Images.arrowDownIcon1),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                              side: BorderSide(
                                  color: ColorResources.grey8E8, width: 0.67),
                            ),
                            color: ColorResources.white,
                          ),
                        ),
                      ),
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
