import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil_init.dart';
import 'package:pcm_vibra/app/app_router.dart';

import 'ui/theme/theme.dart';

class AppWidget extends StatefulWidget {
  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final AppRouter router = AppRouter();
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(411.4, 820.6),
        allowFontScaling: false,
        builder: () {
          return MaterialApp(
            theme: theme,
            title: 'PMSC Projetos',
            debugShowCheckedModeBanner: false,
            navigatorKey: AppRouter.instance.navigationKey,
            initialRoute: "/",
            routes: router.routes,
          );
        });
  }
}
