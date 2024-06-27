import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:FOOD2GO/Utils/colors.dart';
import 'package:FOOD2GO/Utils/common_widgets.dart';
import 'package:FOOD2GO/main.dart';

class TermsAndConditions extends StatelessWidget {
   TermsAndConditions({Key? key}) : super(key: key);

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
            onTap: (){
              Get.back();
            },
            child: CircleAvatar(
              backgroundColor: ColorResources.whiteF1F,
              child: Icon(Icons.arrow_back_ios_outlined,
                  color: ColorResources.grey808, size: 15),
            ),
          ),
        ),
        title: mediumText("Terms And Conditions", ColorResources.black231, 20),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 6),
        child: Container(
          color: ColorResources.white,
          height: Get.height,
          width: Get.width,
          child: ScrollConfiguration(
            behavior: MyBehavior(),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    bookText(
                        "Lorem Ipsum is simply dummy text of the printing"
                            "and typesetting industry. Lorem Ipsum has been the"
                            "indu stry's standard dummy text ever since the"
                            "1500s, whe an unknown printer took a galley of type"
                            "and sc rambled it to make a type",
                        ColorResources.grey8E8,
                        14),
                    SizedBox(height: 15),
                    bookText(
                        "Ipsum has been the indu stry's standard dummy"
                            "text ever since the 1500s, whe an unknown printerto"
                            "ok a galley of type and sc rambled it to"
                            "make a type",
                        ColorResources.grey8E8,
                        14),
                    SizedBox(height: 15),
                    bookText(
                        "Lorem Ipsum is simply dummy text of the printing"
                            "and typesetting industry. Lorem Ipsum has been the"
                            "indu stry's standard dummy text ever since the"
                            "1500s, whe an unknown printer took a galley of type"
                            "and sc rambled it to make a type",
                        ColorResources.grey8E8,
                        14),
                    SizedBox(height: 15),
                    bookText(
                        "Lorem Ipsum is simply dummy text of the printing"
                            "and typesetting industry. Lorem Ipsum has been the"
                            "indu stry's standard dummy text ever since the"
                            "1500s, whe an unknown printer took a galley of type"
                            "and sc rambled it to make a type",
                        ColorResources.grey8E8,
                        14),
                    SizedBox(height: 15),
                    bookText(
                        "Ipsum has been the indu stry's standard dummy"
                            "text ever since the 1500s, whe an unknown printerto"
                            "ok a galley of type and sc rambled it to"
                            "make a type",
                        ColorResources.grey8E8,
                        14),
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
