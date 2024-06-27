import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:FOOD2GO/HomeScreen/populer_curations_screen.dart';
import 'package:FOOD2GO/Utils/colors.dart';
import 'package:FOOD2GO/Utils/common_widgets.dart';
import 'package:FOOD2GO/Utils/images.dart';
import 'package:FOOD2GO/main.dart';

class ViewAllPopularCurationScreen extends StatelessWidget {
   ViewAllPopularCurationScreen({Key? key}) : super(key: key);

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
        title: mediumText("Popular Curations", ColorResources.black231, 20),
      ),
      body: Column(
        children: [
          Divider(color: ColorResources.whiteF1F, thickness: 6),
          SizedBox(height: 15),
          Expanded(
            child: ScrollConfiguration(
              behavior: MyBehavior(),
              child: LayoutBuilder(
                builder: (context, constraints) => GridView.count(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  childAspectRatio:
                  MediaQuery.of(context).size.aspectRatio * 2/ 1.5,
                  shrinkWrap: true,
                  crossAxisCount: 3,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  children: List.generate(
                    popularCurationsList.length,
                        (index) => Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: InkWell(
                        onTap: (){
                          Get.to(PopularCurationsScreen());
                        },
                        child: Stack(
                          clipBehavior: Clip.none,
                          alignment: Alignment.topCenter,
                          children: [
                            Container(
                              height: 112,
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
                                height: 90,
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
            ),
          ),
        ],
      ),
    );
  }
}
