import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:FOOD2GO/AddressScreen/address_screen.dart';
import 'package:FOOD2GO/BillsScreen/bills_total_screen.dart';
import 'package:FOOD2GO/CouponScreen/apply_coupon_screen.dart';
import 'package:FOOD2GO/DesignController/varibale_controller.dart';
import 'package:FOOD2GO/Utils/colors.dart';
import 'package:FOOD2GO/Utils/common_widgets.dart';
import 'package:FOOD2GO/Utils/images.dart';
import 'package:FOOD2GO/Utils/text_font_family.dart';
import 'package:FOOD2GO/main.dart';

class CartDetailAddressScreen extends StatelessWidget {
  CartDetailAddressScreen({Key? key}) : super(key: key);

  // final CartDetailTabController cartDetailTabController =
  //     Get.put(CartDetailTabController());
  final VariableController variableController = Get.put(VariableController());

  final List<Map> priceList = [
    {
      "text": "₪0",
    },
    {
      "text": "₪5",
    },
    {
      "text": "₪10",
    },
    {
      "text": "Other",
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
          child: CircleAvatar(
            backgroundColor: ColorResources.whiteF1F,
            child: InkWell(
              onTap: () {
                Get.back();
              },
              child: Icon(Icons.arrow_back_ios_outlined,
                  color: ColorResources.grey808, size: 15),
            ),
          ),
        ),
        title: mediumText("Burger King", ColorResources.black231, 20),
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              height: 35,
              width: 100,
              decoration: BoxDecoration(
                color: ColorResources.greyF6F,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(Images.subtract,
                        color: ColorResources.REDB70),
                    InkWell(
                      onTap: () {
                        Get.to(ApplyCouponScreen());
                      },
                      child:
                          mediumText("Coupons", ColorResources.REDB70, 15),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ScrollConfiguration(
            behavior: MyBehavior(),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 6),
                  Container(
                    color: ColorResources.white,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            leading: Padding(
                              padding:  EdgeInsets.only(bottom: 30),
                              child: Icon(Icons.location_on,
                                  color: ColorResources.orangeFC6),
                            ),
                            title: bookText(
                                "Nablus - Tallouza -Assira Street, 1 Floor",
                                ColorResources.black120,
                                14),
                            trailing: Padding(
                              padding: EdgeInsets.only(bottom: 30),
                              child: mediumText(
                                  "Change", ColorResources.REDB70, 14),
                            ),
                            contentPadding: EdgeInsets.zero,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 6),
                  Container(
                    color: ColorResources.white,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              mediumText(
                                  "Your Order", ColorResources.black120, 20),
                              Row(
                                children: [
                                  mediumText("Add items",
                                      ColorResources.REDB70, 14),
                                  Icon(Icons.add,
                                      color: ColorResources.REDB70,
                                      size: 16),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Container(
                                  height: 85,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        Images.burger1,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 12),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    bookText(
                                        "CLASSIC CHICKEN - Veg Whopper + King Fries + Cola",
                                        ColorResources.black120,
                                        14),
                                    bookText(
                                        "₪26", ColorResources.grey8E8, 14),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Image.asset(Images.vegIcon,
                                        height: 20, width: 20),
                                    SizedBox(height: 8),
                                    Container(
                                      height: 30,
                                      width: 75,
                                      decoration: BoxDecoration(
                                        color: ColorResources.orangeFF,
                                        borderRadius: BorderRadius.circular(6),
                                        border: Border.all(
                                            color: ColorResources.REDB70),
                                      ),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 5),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                if (variableController
                                                        .count.value >
                                                    0) {
                                                  variableController
                                                      .count.value--;
                                                }
                                              },
                                              child: Icon(Icons.remove,
                                                  color:
                                                      ColorResources.REDB70,
                                                  size: 16),
                                            ),
                                            SizedBox(width: 5),
                                            Obx(
                                              () => boldText(
                                                  "${variableController.count.value}",
                                                  ColorResources.black120,
                                                  16),
                                            ),
                                            SizedBox(width: 5),
                                            InkWell(
                                              onTap: () {
                                                variableController
                                                    .count.value++;
                                              },
                                              child: Icon(Icons.add,
                                                  color:
                                                      ColorResources.REDB70,
                                                  size: 16),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          TextFormField(
                            cursorColor: ColorResources.black120,
                            style: TextStyle(
                              color: ColorResources.black120,
                              fontSize: 14,
                              fontFamily: TextFontFamily.AIR_BNBCEREAL_BOOK,
                            ),
                            decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding: EdgeInsets.all(15),
                                child: Image.asset(
                                  Images.writeIcon,
                                  height: 15,
                                ),
                              ),
                              hintText: "Write instructions for restaurant",
                              hintStyle: TextStyle(
                                color: ColorResources.grey747,
                                fontSize: 14,
                                fontFamily: TextFontFamily.AIR_BNBCEREAL_BOOK,
                              ),
                              filled: true,
                              fillColor: ColorResources.greyF6F,
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: ColorResources.greyF6F, width: 1),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: ColorResources.greyF6F, width: 1),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: ColorResources.greyF6F, width: 1),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 6),
                  Container(
                    color: ColorResources.white,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          mediumText("Please tip your delivery partner",
                              ColorResources.black120, 16),
                          SizedBox(height: 8),
                          bookText(
                              "Support your delivery partner and make their"
                              " day! 100% of your tip will be transferred to"
                              " them.",
                              ColorResources.grey8E8,
                              14),
                          SizedBox(height: 20),
                          // TabBar(
                          //   tabs: cartDetailTabController.myTabs,
                          //   isScrollable: true,
                          //   unselectedLabelColor: ColorResources.black120,
                          //   indicator: BoxDecoration(
                          //     borderRadius: BorderRadius.circular(15),
                          //     color: ColorResources.orangeFF,
                          //     border:
                          //         Border.all(color: ColorResources.REDB70, width: 2),
                          //   ),
                          //   labelStyle: TextStyle(
                          //       fontFamily: TextFontFamily.AIR_BNBCEREAL_MEDIUM,
                          //       fontSize: 14),
                          //   unselectedLabelStyle: TextStyle(
                          //       fontFamily: TextFontFamily.AIR_BNBCEREAL_MEDIUM,
                          //       fontSize: 14),
                          //   labelColor: ColorResources.black120,
                          //   controller: cartDetailTabController.controller,
                          //   // indicatorColor: Color(0xffFF003C),
                          //   indicatorWeight: 0,
                          // ),
                          SizedBox(
                            height: 40,
                            width: Get.width,
                            child: ScrollConfiguration(
                              behavior: MyBehavior(),
                              child: ListView.builder(
                                itemCount: priceList.length,
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) => Padding(
                                  padding: EdgeInsets.only(right: 8.0),
                                  child: GetBuilder<VariableController>(
                                    init: VariableController(),
                                    builder: (controller) => InkWell(
                                      onTap: () {
                                        variableController
                                            .onIndexChange2(index);
                                      },
                                      child: Container(
                                        height: 40,
                                        width: 72,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: variableController
                                                          .selectedIndex2 ==
                                                      index
                                                  ? ColorResources.REDB70
                                                  : ColorResources.greyF0F,
                                              width: 2),
                                          color: variableController
                                                      .selectedIndex2 ==
                                                  index
                                              ? ColorResources.orangeFF
                                              : ColorResources.greyF0F,
                                        ),
                                        child: Center(
                                          child: mediumText(
                                              priceList[index]["text"],
                                              ColorResources.black120,
                                              16),
                                        ),
                                      ),
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
                  SizedBox(height: 6),
                  Container(
                    color: ColorResources.white,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          mediumText(
                              "Bill Details", ColorResources.black120, 16),
                          SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              bookText(
                                  "Item Total", ColorResources.black120, 15),
                              bookText("₪31.00", ColorResources.black120, 16),
                            ],
                          ),
                          SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  bookText("Taxes & charges",
                                      ColorResources.black120, 15),
                                  Icon(Icons.arrow_drop_down,
                                      color: ColorResources.black120, size: 18),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "₹98.1",
                                    style: TextStyle(
                                      color: ColorResources.REDB70,
                                      fontFamily:
                                          TextFontFamily.AIR_BNBCEREAL_BOOK,
                                      fontSize: 14,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                  bookText(
                                      "₹43.00", ColorResources.black120, 14),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              bookText(
                                  "Delivery Tip", ColorResources.black120, 15),
                              mediumText(
                                  "Add tip", ColorResources.REDB70, 14),
                            ],
                          ),
                          SizedBox(height: 10),
                          Divider(
                              color: ColorResources.grey7E8.withOpacity(0.2),
                              thickness: 0.5),
                          SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              boldText("Total", ColorResources.black120, 18),
                              boldText("₹371.00", ColorResources.black120, 18),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 6),
                  Container(
                    color: ColorResources.white,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          mediumText(
                              "Review your order and address details to avoid cancellations",
                              ColorResources.black120,
                              16),
                          SizedBox(height: 14),
                          bookText(
                              "Note: If you choose to cancel, you can do it within 60"
                              " seconds after placing order. post which you will be"
                              "charged 100% cancellation fee.",
                              ColorResources.grey8E8,
                              14),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 80),
                ],
              ),
            ),
          ),
          Container(
            height: 90,
            width: Get.width,
            decoration: BoxDecoration(
              color: ColorResources.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 16,
                  spreadRadius: 0,
                  color: ColorResources.black.withOpacity(0.1),
                  offset: Offset(0, -4),
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  boldText("₪31", ColorResources.black120, 26),
                  InkWell(
                    onTap: () {
                      Get.off(BillsTotalScreen());
                    },
                    child: Container(
                      height: 52,
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorResources.REDB70),
                      child: Center(
                        child: boldText(
                            "MAKE PAYMENT", ColorResources.white, 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
