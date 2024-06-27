import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:FOOD2GO/AccountScreen/Account1Screen/add_new_card_screen.dart';
import 'package:FOOD2GO/DesignController/varibale_controller.dart';
import 'package:FOOD2GO/OrderPlaceScreen/order_place_screen.dart';
import 'package:FOOD2GO/Utils/colors.dart';
import 'package:FOOD2GO/Utils/common_widgets.dart';
import 'package:FOOD2GO/Utils/images.dart';
import 'package:FOOD2GO/main.dart';

class BillsTotalScreen extends StatelessWidget {
  BillsTotalScreen({Key? key}) : super(key: key);
  final VariableController variableController = Get.put(VariableController());
  final TextEditingController upiController = TextEditingController();

  final List<Map> list1 = [
    {
      "image": Images.cashOnDeliveryImage,
      "text1": "Pay On Delivery",
      "text2": "Cash on Delivery",
      "onTap": () {
        Get.bottomSheet(
          Padding(
            padding: EdgeInsets.only(top: 280),
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
                        backgroundColor: ColorResources.black,
                        child: Icon(Icons.clear),
                      ),
                    ),
                    SizedBox(height: 18),
                    Container(
                      height: Get.height,
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
                          Image.asset(Images.cashOnDeliveryImage,
                              height: 60, width: 60),
                          SizedBox(height: 25),
                          bookText(
                              "Cash on Delivery", ColorResources.black120, 24),
                          SizedBox(height: 25),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 50),
                            child: lightText(
                                "Pay cash at the time of delivery. We recommend you use online payments for contactless delivery",
                                ColorResources.grey8E8,
                                16,
                                TextAlign.center),
                          ),
                          SizedBox(height: 30),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 52),
                            child: containerButton(() {
                              Get.to(OrderPlaceScreen());
                            }, "PAY WITH CASH"),
                          ),
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
    },
    {
      "image": Images.creditDebitImage,
      "text1": "Credit & Debit Cards",
      "text2": "Add Credit, Debit & ATM Cards",
      "onTap": () {
        Get.to(AddNewCard());
      },
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.whiteF1F,
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
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
        title: mediumText("Bill Total: ₪31.00", ColorResources.black231, 20),
      ),
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 6),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: list1.length,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(bottom: 6),
                  child: InkWell(
                    onTap: list1[index]["onTap"],
                    child: Container(
                      color: ColorResources.white,
                      child: Padding(
                        padding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            bookText(list1[index]["text1"],
                                ColorResources.black120, 16),
                            SizedBox(height: 12),
                            Row(
                              children: [
                                Image.asset(list1[index]["image"],
                                    height: 40, width: 40),
                                SizedBox(width: 10),
                                mediumText(list1[index]["text2"],
                                    ColorResources.black120, 16),
                                Spacer(),
                                Icon(Icons.arrow_forward_ios,
                                    size: 16, color: ColorResources.black010),
                              ],
                            ),
                          ],
                        ),
                      ),
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
