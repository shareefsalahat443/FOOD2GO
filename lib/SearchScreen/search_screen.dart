import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:FOOD2GO/Utils/colors.dart';
import 'package:FOOD2GO/Utils/common_widgets.dart';
import 'package:FOOD2GO/Utils/images.dart';
import 'package:FOOD2GO/Utils/text_font_family.dart';
import 'package:FOOD2GO/main.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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

  final List<Map> searchList = [
    {
      "image": Images.shawarman,
      "text1": "Shawarman",
      "text2": "Restaurant",
    },
    {
      "image": Images.sharlockPizza,
      "text1": "Pizza Sharlock",
      "text2": "Pizza",
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
                hintText: "Search for restaurants and food",
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
                  itemCount: searchList.length,
                  padding: EdgeInsets.only(left: 20,right:20,top: 15),
                  itemBuilder: (context, index) => Padding(
                    padding:  EdgeInsets.only(bottom: 15),
                    child: Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            image: DecorationImage(
                              image: AssetImage(
                                searchList[index]["image"],
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            mediumText(searchList[index]["text1"],
                                ColorResources.black120, 16),
                            bookText(searchList[index]["text2"],
                                ColorResources.grey8E8, 14),
                          ],
                        ),
                      ],
                    ),
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
