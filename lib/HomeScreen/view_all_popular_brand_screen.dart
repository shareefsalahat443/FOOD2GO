import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:FOOD2GO/HomeScreen/brows_menu_screen.dart';
import 'package:FOOD2GO/Utils/colors.dart';
import 'package:FOOD2GO/Utils/common_widgets.dart';
import 'package:FOOD2GO/Utils/images.dart';
import 'package:FOOD2GO/main.dart';

class ViewAllPopularBrandScreen extends StatelessWidget {
  ViewAllPopularBrandScreen({Key? key}) : super(key: key);

  final List<Map> popularBrandList = [
    {
      "image": Images.pizzaHutImage,
      "text1": "Pizza Hut",
      "text2": "27 Mins",
    },
    {
      "image": Images.kfcBanani,
      "text1": "KFC Banani",
      "text2": "24 Mins",
    },
    {
      "image": Images.macDonaldsImage,
      "text1": "McDonald’s",
      "text2": "24 Mins",
    },
    {
      "image": Images.burgerKingImage,
      "text1": "Burger King",
      "text2": "29 Mins",
    },
    {
      "image": Images.pizzaHutImage,
      "text1": "Pizza Hut",
      "text2": "27 Mins",
    },
    {
      "image": Images.kfcBanani,
      "text1": "KFC Banani",
      "text2": "24 Mins",
    },
    {
      "image": Images.macDonaldsImage,
      "text1": "McDonald’s",
      "text2": "24 Mins",
    },
    {
      "image": Images.burgerKingImage,
      "text1": "Burger King",
      "text2": "29 Mins",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.white,
      appBar: AppBar(
        elevation: 0,
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
        title: mediumText("Popular Brands", ColorResources.black231, 20),
      ),
      body: Column(
        children: [
          Divider(color: ColorResources.whiteF1F, thickness: 6),
          Expanded(
            child: ScrollConfiguration(
              behavior: MyBehavior(),
              child: ListView.builder(
                padding: EdgeInsets.only(top: 20),
                itemCount: popularBrandList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) => Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: InkWell(
                        onTap: (){
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
                            index == 2 || index == 6
                                ? SizedBox.shrink()
                                : Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      mediumText("50% OFF",
                                          ColorResources.yellowF88, 14),
                                      bookText(
                                          "UPTO ₹125", ColorResources.grey8E8, 9),
                                    ],
                                  ),
                            SizedBox(width: 5),
                            index == 2 || index == 6
                                ? SizedBox.shrink()
                                :  SvgPicture.asset(Images.subtract),
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
            ),
          ),
        ],
      ),
    );
  }
}
