import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:FOOD2GO/DesignController/varibale_controller.dart';
import 'package:FOOD2GO/Utils/colors.dart';
import 'package:FOOD2GO/Utils/common_widgets.dart';
import 'package:FOOD2GO/Utils/images.dart';
import 'package:FOOD2GO/Utils/text_font_family.dart';
import 'package:FOOD2GO/main.dart';

// ignore: must_be_immutable
class AddNewCard extends StatelessWidget {
  AddNewCard({Key? key}) : super(key: key);
  final VariableController variableController = Get.put(VariableController());
  TextEditingController cardNumber = TextEditingController();
  TextEditingController expiryDate = TextEditingController();
  TextEditingController cvcNumber = TextEditingController();
  TextEditingController nameOnCard = TextEditingController();
  TextEditingController cardNickName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.white,
      resizeToAvoidBottomInset: false,
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
        title: mediumText("Add New Card", ColorResources.REDB70, 20),
      ),
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Divider(color: ColorResources.whiteF1F, thickness: 6),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      controller: cardNumber,
                      cursorColor: ColorResources.black120,
                      style: TextStyle(
                        color: ColorResources.black120,
                        fontSize: 16,
                        fontFamily: TextFontFamily.AIR_BNBCEREAL_BOOK,
                      ),
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(15),
                          child: Image.asset(Images.card),
                        ),
                        hintText: "4343 4343 4343 4343",
                        hintStyle: TextStyle(
                          color: ColorResources.grey868,
                          fontSize: 16,
                          fontFamily: TextFontFamily.AIR_BNBCEREAL_BOOK,
                        ),
                        filled: true,
                        fillColor: ColorResources.whiteFBF,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: ColorResources.grey868.withOpacity(0.10),
                              width: 1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: ColorResources.grey868.withOpacity(0.10),
                              width: 1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: ColorResources.grey868.withOpacity(0.10),
                              width: 1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    SizedBox(height: 18),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: textField1("MM/YY", expiryDate)),
                        SizedBox(width: 16),
                        Expanded(child: textField1("CVC", cvcNumber)),
                      ],
                    ),
                    SizedBox(height: 18),
                    textField1("Name on Card", nameOnCard),
                    SizedBox(height: 18),
                    textField1(
                        "Card Nickname (foreasy identification)", cardNickName),
                    SizedBox(height: 40),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32),
                      child: Obx(
                        () => variableController.isType.value == true
                            ? containerButton(() {
                                // Get.to(ResetPasswordScreen());
                              }, "Add card")
                            : InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 58,
                                  width: Get.width,
                                  decoration: BoxDecoration(
                                    color: ColorResources.greyBCB,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 35,
                                        color: ColorResources.greyD9D
                                            .withOpacity(0.25),
                                        spreadRadius: 0,
                                        offset: Offset(0, 10),
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    title: Center(
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 40),
                                        child: mediumText("ADD CARD",
                                            ColorResources.REDB70, 16),
                                      ),
                                    ),
                                    trailing: Padding(
                                      padding: EdgeInsets.only(bottom: 6),
                                      child: CircleAvatar(
                                        radius: 20,
                                        backgroundColor:
                                            ColorResources.white,
                                        child: Icon(Icons.arrow_forward,
                                            color: ColorResources.greyBCB),
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
            ],
          ),
        ),
      ),
    );
  }
}
