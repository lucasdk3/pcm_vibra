import 'package:flutter/material.dart';
import 'package:pcm_vibra/app/ui/theme/theme.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secundary,
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Center(child: Text('Dashboard', style: TextStyle(color:Colors.white))),
      ),
    ));
  }
}
