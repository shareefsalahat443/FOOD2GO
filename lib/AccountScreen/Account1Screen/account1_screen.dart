import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:FOOD2GO/AccountScreen/Account1Screen/active_refund_screen.dart';
import 'package:FOOD2GO/AccountScreen/Account1Screen/edit_account_screen.dart';
import 'package:FOOD2GO/AccountScreen/Account1Screen/favourite_screen.dart';
import 'package:FOOD2GO/AccountScreen/Account1Screen/help_screen.dart';
import 'package:FOOD2GO/AddressScreen/manage_address_screen.dart';
import 'package:FOOD2GO/AccountScreen/Account1Screen/payment_screen.dart';
import 'package:FOOD2GO/AccountScreen/Account1Screen/setting_screen.dart';
import 'package:FOOD2GO/CouponScreen/coupon_screen.dart';
import 'package:FOOD2GO/Utils/colors.dart';
import 'package:FOOD2GO/Utils/common_widgets.dart';
import 'package:FOOD2GO/Utils/images.dart';
import 'package:FOOD2GO/main.dart';

class Account1Screen extends StatelessWidget {
  Account1Screen({Key? key}) : super(key: key);

  final List<Map> accountList = [
    {
      "image": Images.editUserIcon,
      "text": "Edit Account",
      "onTap": () {
        Get.to(EditAccountScreen());
      },
    },
    {
      "image": Images.manageAddressIcon,
      "text": "Manage Addresses",
      "onTap": () {
        Get.to(ManageAddressScreen());
      },
    },
    {
      "image": Images.favouriteIcon,
      "text": "Favourites",
      "onTap": () {
        Get.to(FavouriteScreen());
      },
    },
    {
      "image": Images.accountCouponImage,
      "text": "Offers",
      "onTap": () {
        Get.to(CouponScreen());
      },
    },
    {
      "image": Images.settingImage,
      "text": "Settings",
      "onTap": () {
        Get.to(SettingScreen());
      },
    },
  ];

  final List<Map> accountList1 = [
    {
      "image": Images.paymentModeIcon,
      "text": "Payment Modes",
      "onTap": () {
        Get.to(PaymentScreen());
      },
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.whiteF1F,
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50),
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: InkWell(
                  onTap: () {
                    Get.defaultDialog(
                      backgroundColor: ColorResources.white,
                      contentPadding: EdgeInsets.zero,
                      title: "",
                      titlePadding: EdgeInsets.zero,
                      content: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          children: [
                            Icon(Icons.logout,
                                color: ColorResources.REDB70, size: 30),
                            SizedBox(height: 22),
                            bookText("Are you sure you want to Logout.?",
                                ColorResources.black, 14),
                            SizedBox(height: 22),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: InkWell(
                                    onTap: (){
                                      Get.back();
                                    },
                                    child: Container(
                                      height: 40,
                                      width: Get.width,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: ColorResources.black292,
                                            width: 1),
                                        color: ColorResources.white,
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Center(
                                        child: mediumText(
                                            "Yes", ColorResources.black, 18),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20),
                                Expanded(
                                  child: InkWell(
                                    onTap: (){
                                      Get.back();
                                    },
                                    child: Container(
                                      height: 40,
                                      width: Get.width,
                                      decoration: BoxDecoration(
                                        color: ColorResources.REDB70,
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Center(
                                        child: mediumText(
                                            "No", ColorResources.white, 18),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      lightText("Logout", ColorResources.black120, 15),
                      SizedBox(width: 10),
                      Icon(Icons.logout, color: ColorResources.black),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(Images.accountManImage),
              ),
              SizedBox(height: 13),
              boldText("Shareef Salahat", ColorResources.black120, 20),
              SizedBox(height: 4),
              bookText("0598570378", ColorResources.grey8E8, 15),
              SizedBox(height: 25),
              Padding(
                padding: EdgeInsets.only(left: 25),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: boldText("My Account", ColorResources.REDB70, 15),
                ),
              ),
              SizedBox(height: 8),
              ListView.builder(
                padding: EdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: accountList.length,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(bottom: 2),
                  child: InkWell(
                    onTap: accountList[index]["onTap"],
                    child: Container(
                      height: 55,
                      width: Get.width,
                      color: ColorResources.white,
                      child: ListTile(
                        leading: SvgPicture.asset(
                          accountList[index]["image"],
                        ),
                        title: bookText(accountList[index]["text"],
                            ColorResources.black120, 17),
                        trailing: Icon(Icons.arrow_forward_ios,
                            color: ColorResources.grey8E8),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 25),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: boldText(
                      "Payments", ColorResources.REDB70, 15),
                ),
              ),
              SizedBox(height: 8),
              ListView.builder(
                padding: EdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: accountList1.length,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(bottom: 2),
                  child: InkWell(
                    onTap: accountList1[index]["onTap"],
                    child: Container(
                      height: 55,
                      width: Get.width,
                      color: ColorResources.white,
                      child: ListTile(
                        leading: SvgPicture.asset(
                          accountList1[index]["image"],
                        ),
                        title: bookText(accountList1[index]["text"],
                            ColorResources.black120, 17),
                        trailing: Icon(Icons.arrow_forward_ios,
                            color: ColorResources.grey8E8),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              InkWell(
                onTap: () {
                  Get.to(HelpScreen());
                },
                child: Container(
                  height: 55,
                  width: Get.width,
                  color: ColorResources.white,
                  child: ListTile(
                    leading: SvgPicture.asset(
                      Images.accountHelpImage,
                    ),
                    title: bookText("Help", ColorResources.black120, 17),
                    trailing: Icon(Icons.arrow_forward_ios,
                        color: ColorResources.grey8E8),
                  ),
                ),
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
