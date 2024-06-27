import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:FOOD2GO/Utils/colors.dart';
import 'package:FOOD2GO/Utils/common_widgets.dart';
import 'package:FOOD2GO/Utils/images.dart';
import 'package:FOOD2GO/Utils/text_font_family.dart';

class SearchLocationScreen extends StatelessWidget {
  SearchLocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.white,
      body: Column(
        children: [
          Container(
            height: 175,
            width: Get.width,
            child: Padding(
              padding: EdgeInsets.only(left: 15.0, right: 20),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 35.0),
                    child: InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(Icons.arrow_back,
                          color: ColorResources.white),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        lightText("Set Delivery Location",
                            ColorResources.white, 12),
                        // SizedBox(height: 4),
                        TextField(
                          style: TextStyle(
                            color: ColorResources.white,
                            fontSize: 18,
                            fontFamily: TextFontFamily.AIR_BNBCEREAL_LIGHT,
                            decoration: TextDecoration.none,
                          ),
                          autocorrect: false,
                          enableSuggestions: false,
                          cursorColor: ColorResources.white,
                          decoration: InputDecoration(
                            hintText: "Search for area, street name...",
                            hintStyle: TextStyle(
                                color: ColorResources.white,
                                fontSize: 18,
                                fontFamily:
                                    TextFontFamily.AIR_BNBCEREAL_LIGHT,
                                fontWeight: FontWeight.w300),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: ColorResources.whiteF1F, width: 1),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: ColorResources.whiteF1F, width: 1),
                            ),
                            errorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: ColorResources.whiteF1F, width: 1),
                            ),
                            focusedErrorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: ColorResources.whiteF1F, width: 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            decoration: BoxDecoration(color: ColorResources.black231),
          ),
          Expanded(
            child: Stack(
              alignment: Alignment.topCenter,
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: double.infinity,
                  width: Get.width,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        MaterialButton(
                          onPressed: () {
                           Get.back();
                          },
                          color: ColorResources.white,
                          height: 54,
                          minWidth: Get.width,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(
                                  color: ColorResources.black231, width: 1.0)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.my_location,
                                  color: ColorResources.black231),
                              SizedBox(
                                width: 15,
                              ),
                              mediumText("Your current location",
                                  ColorResources.black231, 18),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Image.asset(Images.googleLogo),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: ColorResources.white,
                    image: DecorationImage(
                        image: AssetImage(
                          Images.searchLocationBgImage,
                        ),
                        alignment: Alignment.bottomCenter),
                  ),
                ),
                Positioned(
                  top: -20,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: ColorResources.white,
                    child: Text(
                      "Or",
                      style: TextStyle(
                          color: ColorResources.black231,
                          fontSize: 19,
                          fontFamily: TextFontFamily.AIR_BNBCEREAL_MEDIUM),
                    ),
                  ),
                ),
                Positioned(
                    bottom: 90,
                    child: Icon(Icons.location_on,color: ColorResources.black231),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
