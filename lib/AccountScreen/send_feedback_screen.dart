import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:FOOD2GO/Utils/colors.dart';
import 'package:FOOD2GO/Utils/common_widgets.dart';
import 'package:FOOD2GO/Utils/text_font_family.dart';

class SendFeedBackScreen extends StatelessWidget {
  SendFeedBackScreen({Key? key}) : super(key: key);

  final TextEditingController reviewController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorResources.white,
      appBar: AppBar(
        backgroundColor: ColorResources.white,
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.all(8.0),
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
        title: mediumText("Feedback", ColorResources.black231, 20),
      ),
      body: Column(
        children: [
          Divider(color: ColorResources.whiteF1F, thickness: 6),
          SizedBox(height: 40),
          mediumText("How did we do?", ColorResources.black120, 20),
          SizedBox(height: 20),
          RatingBar(
            itemSize: 50,
            maxRating: 5,
            initialRating: 1,
            itemCount: 5,
            direction: Axis.horizontal,
            ratingWidget: RatingWidget(
              full: Icon(
                Icons.star,
                color: ColorResources.yellowFFC,
              ),
              empty: Icon(
                Icons.star,
                color: ColorResources.greyEBE,
              ),
              half: Icon(Icons.star),
            ),
            onRatingUpdate: (rating) {
              // print("${addRatController.rat.value}");
              // addRatController.rat.value = rating;
            },
          ),
          SizedBox(height: 30),
          bookText("Care to share more about it?", ColorResources.black120, 16),
          SizedBox(height: 12),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              controller: reviewController,
              cursorColor: ColorResources.black120,
              maxLines: 6,
              style: TextStyle(
                color: ColorResources.black120,
                fontSize: 16,
                fontFamily: TextFontFamily.AIR_BNBCEREAL_BOOK,
              ),
              decoration: InputDecoration(
                hintText: "Write feedback...",
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
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: containerButton(() {}, "SEND FEEDBACK"),
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
