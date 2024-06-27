import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:FOOD2GO/Utils/colors.dart';
import 'package:FOOD2GO/Utils/common_widgets.dart';
import 'package:FOOD2GO/Utils/images.dart';
import 'package:FOOD2GO/main.dart';

class EditAccountScreen extends StatelessWidget {
  const EditAccountScreen({Key? key}) : super(key: key);

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
        title: mediumText("Edit Account", ColorResources.black231, 20),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 6),
        child: Container(
          height: Get.height,
          width: Get.width,
          color: ColorResources.white,
          child: ScrollConfiguration(
            behavior: MyBehavior(),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    SizedBox(height: 44),
                    Center(
                      child: Stack(
                        children: [
                          CircleAvatar(
                            radius: 60,
                            backgroundImage: AssetImage(Images.accountManImage),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: CircleAvatar(
                              radius: 25,
                              backgroundColor: ColorResources.REDB70,
                              child: Icon(Icons.camera_alt_outlined,
                                  color: ColorResources.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 50),
                    textField("Full name", Images.profile),
                    SizedBox(height: 20),
                    textField("Phone Number", Images.phone),
                    SizedBox(height: 20),
                    textField("johndoe@gmail.com", Images.mail),
                    SizedBox(height: 180),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: containerButton(() {}, "UPDATE"),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
