import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:FOOD2GO/Utils/colors.dart';
import 'package:FOOD2GO/Utils/text_font_family.dart';

mediumText(text, color, double size, [align]) => Text(
      text,
      textAlign: align,
      style: TextStyle(
          fontFamily: TextFontFamily.AIR_BNBCEREAL_MEDIUM,
          fontSize: size,
          color: color),
    );

boldText(text, color, double size, [align]) => Text(
      text,
      textAlign: align,
      style: TextStyle(
          fontFamily: TextFontFamily.AIR_BNBCEREAL_MEDIUM,
          fontSize: size,
          color: color),
    );

bookText(text, color, double size, [align]) => Text(
      text,
      textAlign: align,
      style: TextStyle(
          fontFamily: TextFontFamily.AIR_BNBCEREAL_BOOK,
          fontSize: size,
          color: color),
    );

lightText(text, color, double size, [align]) => Text(
      text,
      textAlign: align,
      style: TextStyle(
          fontFamily: TextFontFamily.AIR_BNBCEREAL_LIGHT,
          fontSize: size,
          color: color),
    );

textField(hintText, icon) => TextFormField(
      cursorColor: ColorResources.black120,
      style: TextStyle(
        color: ColorResources.black120,
        fontSize: 14,
        fontFamily: TextFontFamily.AIR_BNBCEREAL_BOOK,
      ),
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: EdgeInsets.all(15),
          child: SvgPicture.asset(icon),
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: ColorResources.grey747,
          fontSize: 14,
          fontFamily: TextFontFamily.AIR_BNBCEREAL_BOOK,
        ),
        filled: true,
        fillColor: ColorResources.white,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: ColorResources.greyE4D, width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorResources.greyE4D, width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorResources.greyE4D, width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );

textField1(hint, controller) => TextFormField(
      controller: controller,
      cursorColor: ColorResources.black120,
      style: TextStyle(
        color: ColorResources.black120,
        fontSize: 16,
        fontFamily: TextFontFamily.AIR_BNBCEREAL_BOOK,
      ),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
          color: ColorResources.grey868,
          fontSize: 16,
          fontFamily: TextFontFamily.AIR_BNBCEREAL_BOOK,
        ),
        filled: true,
        fillColor: ColorResources.whiteFBF,
        border: OutlineInputBorder(
          borderSide: BorderSide(
              color: ColorResources.grey868.withOpacity(0.10), width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: ColorResources.grey868.withOpacity(0.10), width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: ColorResources.grey868.withOpacity(0.10), width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );

textField2(hint, controller, label) => TextFormField(
      controller: controller,
      cursorColor: ColorResources.black120,
      style: TextStyle(
        color: ColorResources.black120,
        fontSize: 16,
        fontFamily: TextFontFamily.AIR_BNBCEREAL_BOOK,
      ),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          color: ColorResources.grey8E8,
          fontSize: 12,
          fontFamily: TextFontFamily.AIR_BNBCEREAL_BOOK,
        ),
        hintText: hint,
        hintStyle: TextStyle(
          color: ColorResources.grey8E8,
          fontSize: 14,
          fontFamily: TextFontFamily.AIR_BNBCEREAL_BOOK,
        ),
        filled: true,
        fillColor: ColorResources.white,
        border: UnderlineInputBorder(
          borderSide: BorderSide(
              color: ColorResources.whiteF1F, width: 2),
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
              color: ColorResources.whiteF1F, width: 2),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
              color: ColorResources.whiteF1F, width: 2),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );

containerButton(onTap, text) => InkWell(
      onTap: onTap,
      child: Container(
        height: 58,
        width: Get.width,
        decoration: BoxDecoration(
          color: ColorResources.REDB70,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              blurRadius: 35,
              color: ColorResources.orangeF97.withOpacity(0.25),
              spreadRadius: 0,
              offset: Offset(0, 10),
            ),
          ],
        ),
        child: ListTile(
          title: Center(
            child: Padding(
              padding: EdgeInsets.only(left: 40,bottom: 6),
              child: mediumText(text, ColorResources.white, 16),
            ),
          ),
          trailing: Padding(
            padding: EdgeInsets.only(bottom: 6),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: ColorResources.orangeDD5,
              child: Icon(Icons.arrow_forward, color: ColorResources.white),
            ),
          ),
        ),
      ),
    );
