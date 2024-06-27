import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:FOOD2GO/AccountScreen/Account1Screen/add_new_card_screen.dart';
import 'package:FOOD2GO/AccountScreen/Account1Screen/free_charge_screen.dart';
import 'package:FOOD2GO/DesignController/varibale_controller.dart';
import 'package:FOOD2GO/Utils/colors.dart';
import 'package:FOOD2GO/Utils/common_widgets.dart';
import 'package:FOOD2GO/Utils/images.dart';
import 'package:FOOD2GO/main.dart';

class PaymentScreen extends StatelessWidget {
  PaymentScreen({Key? key}) : super(key: key);

  final VariableController variableController = Get.put(VariableController());
  final List<Map> imageList = [
    {
      "image": Images.paymentCard1,
    },
    {
      "image": Images.paymentCard2,
    },
    {
      "image": Images.paymentCard3,
    },
  ];

  final List<Map> paymentList = [
    {
      "image": Images.freeChargeImage,
      "text": "Freecharge",
    },
    {
      "image": Images.mobikwik,
      "text": "Mobikwik",
    },
    {
      "image": Images.paytm,
      "text": "Paytm",
    },
    {
      "image": Images.phonePe,
      "text": "Phonepe",
    },
    {
      "image": Images.amazonePay,
      "text": "Amazon Pay",
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
        title: mediumText("Payments", ColorResources.black231, 20),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 6),
        child: Container(
          height: Get.height,
          width: Get.width,
          color: ColorResources.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 25),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    mediumText("Saved Cards", ColorResources.black120, 18),
                    InkWell(
                      onTap: () {
                        Get.to(AddNewCard());
                      },
                      child: Row(
                        children: [
                          Icon(Icons.add, color: ColorResources.REDB70),
                          SizedBox(width: 15),
                          bookText(
                              "Add New Card", ColorResources.REDB70, 12),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: CarouselSlider.builder(
                    itemCount: imageList.length,
                    itemBuilder: (context, index, realIndex) => Container(
                          height: 170,
                          width: 280,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              // boxShadow: [
                              //   BoxShadow(
                              //     color: black.withOpacity(0.20),
                              //     blurRadius: 10,
                              //     spreadRadius: 0,
                              //   )
                              // ],
                              image: DecorationImage(
                                  image: AssetImage(imageList[index]["image"]),
                                  fit: BoxFit.fill,
                                  filterQuality: FilterQuality.high)),
                        ),
                    options: CarouselOptions(
                        autoPlay: true,
                        height: 170,
                        enableInfiniteScroll: true,
                        enlargeCenterPage: true,
                        onPageChanged: (index, reason) {
                          variableController.sliderIndex.value = index;
                        })),
              ),
              SizedBox(
                height: 15,
              ),
              Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < imageList.length; i++)
                      Padding(
                        padding: EdgeInsets.all(2.0),
                        child: Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                                color: i == variableController.sliderIndex.value
                                    ? ColorResources.grey989
                                    : ColorResources.greyD8D,
                                borderRadius: BorderRadius.circular(8))),
                      ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.only(left: 22),
                child: mediumText("Wallet", ColorResources.black120, 18),
              ),
              ScrollConfiguration(
                behavior: MyBehavior(),
                child: Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.only(top: 25),
                    itemCount: paymentList.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 22, right: 30),
                          child: Padding(
                            padding: EdgeInsets.only(top: 18),
                            child: InkWell(
                              onTap: () {
                                Get.bottomSheet(
                                  Padding(
                                    padding: EdgeInsets.only(top: 200),
                                    child: ScrollConfiguration(
                                      behavior: MyBehavior(),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                Get.back();
                                              },
                                              child: CircleAvatar(
                                                radius: 25,
                                                backgroundColor:
                                                    ColorResources.black,
                                                child: Icon(Icons.clear),
                                              ),
                                            ),
                                            SizedBox(height: 18),
                                            Container(
                                              height: 380,
                                              width: Get.width,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(30),
                                                  topLeft: Radius.circular(30),
                                                ),
                                                color: ColorResources.white,
                                              ),
                                              child: Column(
                                                children: [
                                                  SizedBox(height: 40),
                                                  SvgPicture.asset(
                                                      Images.freeChargeImage,
                                                      height: 50,
                                                      width: 50),
                                                  SizedBox(height: 20),
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 54),
                                                    child: lightText(
                                                        "Link Freecharge wallet associated with this number",
                                                        ColorResources.grey8E8,
                                                        16,
                                                        TextAlign.center),
                                                  ),
                                                  SizedBox(height: 18),
                                                  bookText(
                                                      "+91 12345 67890",
                                                      ColorResources.black120,
                                                      24),
                                                  SizedBox(height: 20),
                                                  lightText(
                                                      "If you don’t have an account, we’ll create one for you",
                                                      ColorResources.grey8E8,
                                                      13),
                                                  SizedBox(height: 30),
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 52),
                                                    child: containerButton(() {
                                                      Get.to(
                                                          FreeChargeScreen());
                                                    }, "PROCEED"),
                                                  ),
                                                  SizedBox(height: 40),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                );
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        paymentList[index]["image"],
                                      ),
                                      SizedBox(width: 20),
                                      lightText(paymentList[index]["text"],
                                          ColorResources.black120, 16),
                                    ],
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: ColorResources.black010,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 70, top: 18),
                          child: Divider(
                            color: ColorResources.greyCAC,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
