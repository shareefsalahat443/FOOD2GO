import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:FOOD2GO/DesignController/VisibilityController/visibility_controller.dart';
import 'package:FOOD2GO/Utils/colors.dart';
import 'package:FOOD2GO/Utils/common_widgets.dart';

class SettingScreen extends StatelessWidget {
  SettingScreen({Key? key}) : super(key: key);
  final VisibilityController visibilityController =
      Get.put(VisibilityController());

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
        title: mediumText("Settings", ColorResources.black231, 20),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(color: ColorResources.whiteF1F, thickness: 6),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                mediumText(
                    "PICTURE IN PICTURE MODE", ColorResources.black120, 16),
                SizedBox(height: 28),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    lightText("Allow Picture in Picture Mode",
                        ColorResources.black120, 16),
                    Obx(
                      () => Transform.scale(
                        scale: 0.7,
                        child: CupertinoSwitch(
                          onChanged: (val) =>
                              visibilityController.switchIsOpen1.toggle(),
                          value: visibilityController.switchIsOpen1.value,
                          activeColor: ColorResources.REDB70,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                lightText(
                    "PIP mode allows you to live track your order in a"
                    " small window pinned to one corner of your screen"
                    " while you navigate to other apps or to the home"
                    "screen.",
                    ColorResources.grey8E8,
                    14),
                SizedBox(height: 32),
                mediumText(
                    "PICTURE IN PICTURE MODE", ColorResources.black120, 16),
                SizedBox(height: 18),
                lightText(
                    "Order related SMS cannot be disabled as they are"
                    " critical to provide service",
                    ColorResources.grey8E8,
                    14),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    lightText("Recommendations & Reminders",
                        ColorResources.black120, 16),
                    Obx(
                      () => Transform.scale(
                        scale: 0.7,
                        child: CupertinoSwitch(
                          onChanged: (val) =>
                              visibilityController.switchIsOpen2.toggle(),
                          value: visibilityController.switchIsOpen2.value,
                          activeColor: ColorResources.REDB70,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                lightText(
                    "Keep this on to receive offer recommendations &"
                    "timely reminders based on your interests",
                    ColorResources.grey8E8,
                    14),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
