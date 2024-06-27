import 'package:get/get.dart';

class VariableController extends GetxController {
  var sliderIndex = 0.obs;
  var sliderIndex1 = 0.obs;
  var sliderIndex2 = 0.obs;
  RxBool isType = false.obs;
  var browsMenuClose = false.obs;
  var allOffer = false.obs;

  // ignore: prefer_typing_uninitialized_variables
  var selectedIndex;

  onIndexChange(index) {
    selectedIndex = index;
    update();
  }

  // ignore: prefer_typing_uninitialized_variables
  var selectedIndex1;

  onIndexChange1(index) {
    selectedIndex1 = index;
    update();
  }

  // ignore: prefer_typing_uninitialized_variables
  var selectedIndex2;

  onIndexChange2(index) {
    selectedIndex2 = index;
    update();
  }

  // ignore: prefer_typing_uninitialized_variables
  var selectedIndex3;

  onIndexChange3(index) {
    selectedIndex3 = index;
    update();
  }

  // ignore: prefer_typing_uninitialized_variables
  var selectedIndex4;

  onIndexChange4(index) {
    selectedIndex4 = index;
    update();
  }

  var one = true.obs;
  var two = false.obs;
  var three = false.obs;
  var arrowClick = false.obs;
  var isAdd = false.obs;
  final count = 0.obs;
  final count1 = 0.obs;
  List<bool> favourite1 = [
    false,
    false,
    false,
    false,
    false,
  ].obs;
  List<bool> favourite2 = [
    false,
    false,
    false,
    false,
    false,
  ].obs;
  List<bool> favourite3 = [
    false,
    false,
    false,
    false,
    false,
  ].obs;
  List<bool> check1 = [
    false,
    false,
    false,
    false,
    false,
    false,
  ].obs;
  List<bool> check2 = [
    false,
    false,
    false,
  ].obs;
  List<bool> recomended = [
    false,
    false,
    false,
    false,
    false,
  ].obs;
  List<bool> newKingsCollection = [
    false,
    false,
    false,
    false,
    false,
  ].obs;
  List<bool> flavoursOfLove = [
    false,
    false,
    false,
    false,
    false,
  ].obs;
}
