import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:FOOD2GO/Utils/colors.dart';
import 'package:FOOD2GO/Utils/common_widgets.dart';
import 'package:FOOD2GO/Utils/images.dart';
import 'package:FOOD2GO/Utils/text_font_family.dart';
import 'package:FOOD2GO/main.dart';

class BrowsMenuSearchScreen extends StatefulWidget {
  const BrowsMenuSearchScreen({Key? key}) : super(key: key);

  @override
  State<BrowsMenuSearchScreen> createState() => _BrowsMenuSearchScreenState();
}

class _BrowsMenuSearchScreenState extends State<BrowsMenuSearchScreen> {
  FocusNode onFocus = FocusNode();
  bool nearByFocus = false;
  final TextEditingController searchController = TextEditingController();

  @override
  // ignore: must_call_super
  void initState() {
    onFocus.addListener(() {
      print(onFocus.hasFocus);
      setState(() {
        nearByFocus = onFocus.hasFocus;
      });
    });
  }

  final List<Map> recomendedBrowsList = [
    {
      "image1": Images.vegIcon,
      "image2": Images.burger1,
      "text1": "Whopper Fridays- Veg Doubles",
      "text2": "₹298",
      "text3": "2 Veg Whopper",
    },
    {
      "image1": Images.vegIcon,
      "image2": Images.burger2,
      "text1": "Whopper Fridays- Veg Meal",
      "text2": "₹327",
      "text3": "Veg Whopper + King Fries + Pepsi",
    },
    {
      "image1": Images.nonVegIcon,
      "image2": Images.burger3,
      "text1": "Whopper Fridays - Mixed Doubles(Veg + Chicken)",
      "text2": "₹328",
      "text3": "1 Veg Whopper + 1 Chicken + Whopper",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.whiteF1F,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 50, bottom: 14, left: 20, right: 20),
            width: Get.width,
            decoration: BoxDecoration(
              color: ColorResources.white,
              boxShadow: [
                BoxShadow(
                  color: ColorResources.black.withOpacity(0.05),
                  blurRadius: 13,
                  spreadRadius: 0,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: CircleAvatar(
                    backgroundColor: ColorResources.whiteF1F,
                    radius: 20,
                    child: Icon(Icons.arrow_back_ios_outlined,
                        color: ColorResources.grey808, size: 18),
                  ),
                ),
                SizedBox(width: 15),
                Expanded(
                  child: TextFormField(
                    cursorColor: ColorResources.black120,
                    controller: searchController,
                    focusNode: onFocus,
                    style: TextStyle(
                      color: ColorResources.black120,
                      fontSize: 13,
                      fontFamily: TextFontFamily.AIR_BNBCEREAL_BOOK,
                    ),
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(15),
                        child: SvgPicture.asset(Images.search),
                      ),
                      suffixIcon: searchController.text.isEmpty
                          ? Padding(
                              padding: EdgeInsets.all(15),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    searchController.clear();
                                    FocusScope.of(context).unfocus();
                                  });
                                },
                                child: SvgPicture.asset(Images.closeImage),
                              ),
                            )
                          : Container(),
                      hintText: "Enter dish Name...",
                      hintStyle: TextStyle(
                        color: ColorResources.grey898,
                        fontSize: 13,
                        fontFamily: TextFontFamily.AIR_BNBCEREAL_BOOK,
                      ),
                      filled: true,
                      fillColor: ColorResources.greyF6F,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorResources.greyF6F),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorResources.greyF6F),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorResources.greyF6F),
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Expanded(
            child: Container(
              height: Get.height,
              width: Get.width,
              color: ColorResources.white,
              child: ScrollConfiguration(
                behavior: MyBehavior(),
                child: ListView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  itemCount: recomendedBrowsList.length,
                  itemBuilder: (context, index) => Column(
                    children: [
                      Container(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      recomendedBrowsList[index]["image1"],
                                      height: 15,
                                      width: 15,
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      recomendedBrowsList[index]["text1"],
                                      maxLines: 2,
                                      style: TextStyle(
                                        color: ColorResources.black120,
                                        fontSize: 17,
                                        fontFamily: "AirbnbCerealMedium",
                                      ),
                                    ),
                                    bookText(
                                        recomendedBrowsList[index]["text2"],
                                        ColorResources.grey8E8,
                                        16),
                                    bookText(
                                        recomendedBrowsList[index]["text3"],
                                        ColorResources.grey8E8,
                                        12),
                                    SizedBox(height: 2),
                                    // Stack(
                                    //   alignment: Alignment.centerLeft,
                                    //   children: [
                                    //     Container(
                                    //       height: 17,
                                    //       width: 65,
                                    //       decoration: BoxDecoration(
                                    //         borderRadius: BorderRadius.only(
                                    //           topRight: Radius.circular(4),
                                    //           bottomRight: Radius.circular(4),
                                    //         ),
                                    //         color: ColorResources.white,
                                    //         border: Border.all(
                                    //             color: ColorResources.greyE7E),
                                    //       ),
                                    //       child: Padding(
                                    //         padding: EdgeInsets.only(
                                    //             left: 35, top: 2),
                                    //         child: bookText("Liked",
                                    //             ColorResources.grey8E8, 10),
                                    //       ),
                                    //     ),
                                    //     Container(
                                    //       height: 30,
                                    //       width: 30,
                                    //       decoration: BoxDecoration(
                                    //         shape: BoxShape.circle,
                                    //         color: ColorResources.white,
                                    //         border: Border.all(
                                    //             color: ColorResources.greyE7E),
                                    //       ),
                                    //       child: Center(
                                    //         child: Icon(
                                    //           Icons.favorite,
                                    //           size: 18,
                                    //           color: ColorResources.orangeF67,
                                    //         ),
                                    //       ),
                                    //     ),
                                    //   ],
                                    // ),
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 95,
                                    width: 115,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          recomendedBrowsList[index]["image2"],
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Container(
                                    height: 35,
                                    width: 115,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: ColorResources.orangeFFF,
                                      border: Border.all(
                                          color: ColorResources.REDB70,
                                          width: 1),
                                    ),
                                    child: Center(
                                      child: boldText(
                                          "ADD", ColorResources.REDB70, 16),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Divider(color: ColorResources.whiteF1F, thickness: 6),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 5),
        ],
      ),
    );
  }
}
