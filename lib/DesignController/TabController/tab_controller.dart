import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BrowsTabController extends GetxController with GetSingleTickerProviderStateMixin{
  final List<Tab> myTabs = <Tab>[
    Tab(text: "Recommended"),

  ];

  late TabController controller;

  @override
  void onInit() {
    super.onInit();
    controller = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }
}

// class CartDetailTabController extends GetxController with GetSingleTickerProviderStateMixin{
//   final List<Tab> myTabs = <Tab>[
//     Tab(text: "₹ 30"),
//     Tab(text: "₹ 50"),
//     Tab(text: "₹ 70"),
//     Tab(text: "Other"),
//   ];
//
//   late TabController controller;
//
//   @override
//   void onInit() {
//     super.onInit();
//     controller = TabController(vsync: this, length: myTabs.length);
//   }
//
//   @override
//   void onClose() {
//     controller.dispose();
//     super.onClose();
//   }
// }