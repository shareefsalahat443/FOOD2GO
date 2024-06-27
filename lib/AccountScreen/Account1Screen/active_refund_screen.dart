import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:FOOD2GO/Utils/colors.dart';
import 'package:FOOD2GO/Utils/common_widgets.dart';
import 'package:FOOD2GO/Utils/images.dart';

class ActiveRefundScreen extends StatelessWidget {
  const ActiveRefundScreen({Key? key}) : super(key: key);

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
        title: mediumText("Active Refunds", ColorResources.black231, 20),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 6),
        child: Container(
          height: Get.height,
          width: Get.width,
          color: ColorResources.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(Images.activeRefundWalletImage),
              SizedBox(height: 22),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 65),
                child: mediumText("You don’t have any Active Refund",
                    ColorResources.black120, 20,TextAlign.center),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
