import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:FOOD2GO/Utils/colors.dart';
import 'package:FOOD2GO/Utils/common_widgets.dart';
import 'package:FOOD2GO/Utils/images.dart';
import 'package:FOOD2GO/main.dart';

class FavouriteScreen extends StatelessWidget {
   FavouriteScreen({Key? key}) : super(key: key);
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
        title: mediumText("Favourites", ColorResources.black231, 20),
      ),
      body: Padding(
        padding:  EdgeInsets.only(top:6),
        child: Container(
          height: Get.height,
          width: Get.width,
          color: ColorResources.white,
          child:ScrollConfiguration(
            behavior: MyBehavior(),
            child: ListView.builder(
              padding: EdgeInsets.zero,
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
          ),
        ),
      ),
    );
  }
}
