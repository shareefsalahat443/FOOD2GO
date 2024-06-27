import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:FOOD2GO/Utils/colors.dart';
import 'package:FOOD2GO/Utils/common_widgets.dart';
import 'package:FOOD2GO/Utils/images.dart';
import 'package:FOOD2GO/rout_widget_screen/rout_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

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
          child: CircleAvatar(
            backgroundColor: ColorResources.whiteF1F,
            child: Icon(Icons.arrow_back_ios_outlined,
                color: ColorResources.grey808, size: 18),
          ),
        ),
        title: mediumText("Cart", ColorResources.black231, 20),
      ),
      body: Column(
        children: [
          Divider(color: ColorResources.whiteF1F, thickness: 6),
          Padding(
            padding: EdgeInsets.only(top: 50, left: 80, right: 80),
            child: Image.asset(Images.cartPizzaImage),
          ),
          SizedBox(height: 12),
          mediumText(
              "Good Food is Always Cooking", ColorResources.black120, 22),
          SizedBox(height: 12),
          bookText("Your Cart is empty. Add something \nfrom the menu",
              ColorResources.grey8E8, 16, TextAlign.center),
          SizedBox(height: 40),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 60),
            child: MaterialButton(
              onPressed: () {
                // Get.to(MapWidgetScreen());
                selectedIndex = 0;
                Navigator.of(context, rootNavigator: true)
                    .push(MaterialPageRoute(
                  builder: (context) => RoutNavigationScreen(),
                ));
              },
              height: 55,
              minWidth: Get.width,
              child: mediumText(
                  "BROWSE RESTURANTS", ColorResources.white, 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              color: ColorResources.REDB70,
            ),
          ),
        ],
      ),
    );
  }
}
