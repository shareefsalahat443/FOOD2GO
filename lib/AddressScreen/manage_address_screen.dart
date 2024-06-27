import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:FOOD2GO/AddressScreen/manage_add_address_screen.dart';
import 'package:FOOD2GO/Utils/colors.dart';
import 'package:FOOD2GO/Utils/common_widgets.dart';
import 'package:FOOD2GO/Utils/images.dart';

class ManageAddressScreen extends StatelessWidget {
  const ManageAddressScreen({Key? key}) : super(key: key);

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
        title: mediumText("Manage Addresses", ColorResources.black231, 20),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 6),
        child: Container(
          color: ColorResources.white,
          height: Get.height,
          width: Get.width,
          child: Column(
            children: [
              SizedBox(height: 80),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 100),
                child: Container(
                  height: 230,
                  width: Get.width,
                  color: ColorResources.white,
                  child:
                      Image.asset(Images.manageAddressImage, fit: BoxFit.cover),
                ),
              ),
              SizedBox(height: 30),
              mediumText(
                  "Knock Knock! Who’s There?", ColorResources.black120, 22),
              SizedBox(height: 6),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: bookText(
                    "You don’t have any addresses saved. Saving addresses helps you checkout faster.",
                    ColorResources.grey8E8,
                    16,
                    TextAlign.center),
              ),
              SizedBox(height: 60),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 60),
                child: MaterialButton(
                  onPressed: () {
                    Get.to(ManageAddAddressScreen());
                  },
                  height: 55,
                  minWidth: Get.width,
                  child: mediumText("ADD AN ADDRESS", ColorResources.white, 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: ColorResources.REDB70,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
