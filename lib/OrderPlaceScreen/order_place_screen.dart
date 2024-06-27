import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:FOOD2GO/Utils/colors.dart';
import 'package:FOOD2GO/Utils/common_widgets.dart';
import 'package:FOOD2GO/Utils/images.dart';
import 'package:FOOD2GO/rout_widget_screen/rout_screen.dart';

class OrderPlaceScreen extends StatelessWidget {
  const OrderPlaceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.white,
      body: Center(
        child: Padding(
          padding:  EdgeInsets.only(top: 70,bottom: 70),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SvgPicture.asset(Images.checkCircle),
                  SizedBox(height: 10),
                  boldText("Thank you for placing the order",
                      ColorResources.black120, 20),
                  SizedBox(height: 8),
                  bookText("We’ll get to you as soon as possible",
                      ColorResources.grey8E8, 17),
                ],
              ),
              SvgPicture.asset(Images.scooterImage),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child:  containerButton((){
                  selectedIndex = 0;
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => RoutNavigationScreen(),
                    ),
                        (route) => false,
                  );
                }, "GO  HOME"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
