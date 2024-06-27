import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:FOOD2GO/AddressScreen/address_screen.dart';
import 'package:FOOD2GO/Utils/colors.dart';
import 'package:FOOD2GO/Utils/common_widgets.dart';
import 'package:FOOD2GO/Utils/images.dart';
import 'package:FOOD2GO/main.dart';

class ManageAddAddressScreen extends StatelessWidget {
  ManageAddAddressScreen({Key? key}) : super(key: key);

  final List<Map> addressList = [
    {
      "image": Images.officeIcon,
      "text1": "Work Address",
      "text2": "",
    },
    {
      "image": Images.home,
      "text1": "Home Address",
      "text2":
          "Nablus , Tallouza, Asira Street",
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
              // Get.off(Account1Screen());
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
      body: WillPopScope(
        onWillPop: ()async{
          // Get.off(Account1Screen());
          Get.back();
          return false;
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(color: ColorResources.whiteF1F, thickness: 6),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: mediumText("SAVED ADDRESSES", ColorResources.black120, 14),
            ),
            ScrollConfiguration(
              behavior: MyBehavior(),
              child: ListView.builder(
                padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                itemCount: addressList.length,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 15),
                    child: Container(
                      width: Get.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: ColorResources.white,
                        border: Border.all(
                          color: ColorResources.greyEBE,
                        ),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      addressList[index]["image"],
                                    ),
                                    SizedBox(width: 10),
                                    boldText(addressList[index]["text1"],
                                        ColorResources.black120, 16),
                                  ],
                                ),
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Get.defaultDialog(
                                          backgroundColor: ColorResources.white,
                                          contentPadding: EdgeInsets.zero,
                                          title: "",
                                          titlePadding: EdgeInsets.zero,
                                          content: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 30),
                                            child: Column(
                                              children: [
                                                SvgPicture.asset(
                                                    Images.deleteIcon),
                                                SizedBox(height: 22),
                                                bookText(
                                                    "Are you sure you want to Remove...?",
                                                    ColorResources.black,
                                                    14),
                                                SizedBox(height: 22),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Expanded(
                                                      child: InkWell(
                                                        onTap: () {
                                                          Get.back();
                                                        },
                                                        child: Container(
                                                          height: 40,
                                                          width: Get.width,
                                                          decoration:
                                                              BoxDecoration(
                                                            border: Border.all(
                                                                color:
                                                                    ColorResources
                                                                        .black292,
                                                                width: 1),
                                                            color: ColorResources
                                                                .white,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(12),
                                                          ),
                                                          child: Center(
                                                            child: mediumText(
                                                                "Yes",
                                                                ColorResources
                                                                    .black,
                                                                18),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(width: 20),
                                                    Expanded(
                                                      child: InkWell(
                                                        onTap: () {
                                                          Get.back();
                                                        },
                                                        child: Container(
                                                          height: 40,
                                                          width: Get.width,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: ColorResources
                                                                .REDB70,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(12),
                                                          ),
                                                          child: Center(
                                                            child: mediumText(
                                                                "No",
                                                                ColorResources
                                                                    .white,
                                                                18),
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
                                      child: SvgPicture.asset(Images.deleteIcon),
                                    ),
                                    SizedBox(width: 10),
                                    InkWell(
                                      onTap: () {
                                        Get.to(AddressScreen());
                                      },
                                      child: SvgPicture.asset(
                                        Images.editIcon,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            bookText(addressList[index]["text2"],
                                ColorResources.grey8E8, 12),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(AddressScreen());
          // Navigator.pushAndRemoveUntil(
          //   context,
          //   MaterialPageRoute(
          //     builder: (BuildContext context) => SettingAddAddressScreen(),
          //   ),
          //       (route) => false,
          // );
        },
        elevation: 0,
        backgroundColor: ColorResources.REDB70,
        child: Icon(
          Icons.add,
          color: ColorResources.white,
          size: 35,
        ),
      ),
    );
  }
}
