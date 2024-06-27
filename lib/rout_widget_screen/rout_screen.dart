import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:FOOD2GO/AccountScreen/account_screen.dart';
import 'package:FOOD2GO/CartScreen/cart_screen.dart';
import 'package:FOOD2GO/CouponScreen/coupon_screen.dart';
import 'package:FOOD2GO/HomeScreen/home_screen.dart';
import 'package:FOOD2GO/SearchScreen/search_screen.dart';
import 'package:FOOD2GO/Utils/colors.dart';
import 'package:FOOD2GO/Utils/images.dart';
import 'package:FOOD2GO/rout_widget_screen/rout_navigation_screen.dart';

class RoutNavigationScreen extends StatefulWidget {
  @override
  _RoutNavigationScreenState createState() => _RoutNavigationScreenState();
}

int selectedIndex = 0;

class _RoutNavigationScreenState extends State<RoutNavigationScreen> {
  Map<int, GlobalKey<NavigatorState>> navigatorKeys = {
    0: GlobalKey(),
    1: GlobalKey(),
    2: GlobalKey(),
    3: GlobalKey(),
    4: GlobalKey(),
  };

  test(testPage) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => testPage,
      ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorResources.whiteF1F,
      body: WillPopScope(
        onWillPop: () async {
          return !await Navigator.maybePop(
              navigatorKeys[selectedIndex]!.currentState!.context);
        },
        child: IndexedStack(
          index: selectedIndex,
          children: <Widget>[
            NavigatorPage(
              child: HomeScreen(),
              navigatorKey: navigatorKeys[0],
            ),
            NavigatorPage(
              child: SearchScreen(),
              navigatorKey: navigatorKeys[1],
            ),
            NavigatorPage(
              child: CouponScreen(),
              navigatorKey: navigatorKeys[2],
            ),
            NavigatorPage(
              child: CartScreen(),
              navigatorKey: navigatorKeys[3],
              // title: "Menu",
            ),
            NavigatorPage(
              child: AccountScreen(),
              navigatorKey: navigatorKeys[4],
              // title: "Menu",
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Images.homeIcon,
                color: selectedIndex == 0
                    ? ColorResources.REDB70
                    : ColorResources.greyD5D),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Images.searchIcon,color:  selectedIndex == 1
                ? ColorResources.REDB70
                : ColorResources.greyD5D),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Container(),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Images.cartIcon,color:  selectedIndex == 3
                ? ColorResources.REDB70
                : ColorResources.greyD5D),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Images.accountIcon,color:  selectedIndex == 4
                ? ColorResources.REDB70
                : ColorResources.greyD5D),
            label: "Account",
          ),
        ],
        backgroundColor: ColorResources.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        selectedItemColor: ColorResources.REDB70,
        unselectedItemColor: ColorResources.greyD5D,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        elevation: 5,
      ),
      floatingActionButton: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: ColorResources.REDB70,
          boxShadow: [
            BoxShadow(
              color: ColorResources.REDB70.withOpacity(0.25),
              spreadRadius: 0,
              blurRadius: 20,
              offset: Offset(0, 8),
            ),
          ],
        ),
        child: FloatingActionButton(
          onPressed: () {
            selectedIndex = 2;
            // Navigator.of(context, rootNavigator: true)
            //     .pushReplacement(MaterialPageRoute(
            //   builder: (context) => RoutNavigationScreen(),
            // ));
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) =>
                        RoutNavigationScreen()),
                    (Route<dynamic> route) => false);
          },
          child: SvgPicture.asset(Images.coupanIcon),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          backgroundColor: ColorResources.REDB70,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
