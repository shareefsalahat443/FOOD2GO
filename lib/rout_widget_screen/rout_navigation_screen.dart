import 'package:flutter/material.dart';
// ignore: must_be_immutable
class NavigatorPage extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  var navigatorKey;
  Widget child;

  @override
  _NavigatorPageState createState() => _NavigatorPageState();

  NavigatorPage({required this.navigatorKey, required this.child});
}

class _NavigatorPageState extends State<NavigatorPage> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key:widget.navigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          settings: settings,
          maintainState: false,
          fullscreenDialog: false,
          builder: (context) {
            return Scaffold(
              body: widget.child,
            );
          },
        );
      }, //
    );
  }
}
