import 'package:flutter/material.dart';

import 'core/base/presenter/base_widget.dart';

class AppRouter {
  Map<String, Widget Function(BuildContext)> routes = <String, WidgetBuilder>{
    '/': (BuildContext context) => BaseWidget(),
    '/base': (BuildContext context) => BaseWidget(),
  };

  GlobalKey<NavigatorState> navigationKey;

  static AppRouter instance = AppRouter();

  AppRouter() {
    navigationKey = GlobalKey<NavigatorState>();
  }

  Future<dynamic> off(String _rn) {
    return navigationKey.currentState.pushReplacementNamed(_rn);
  }

  Future<dynamic> to(String _rn) {
    return navigationKey.currentState.pushNamed(_rn);
  }

  Future<dynamic> navigateToRoute(MaterialPageRoute _rn) {
    return navigationKey.currentState.push(_rn);
  }

  pop() {
    return navigationKey.currentState.pop();
  }
}
