import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pcm_vibra/app/core/base/bloc/base_bloc.dart';
import 'package:pcm_vibra/app/core/side_bar/infra/list_pages.dart';
import 'package:pcm_vibra/app/core/side_bar/presenter/sidebar.dart';

class BaseWidget extends StatefulWidget {
  @override
  _BaseWidgetState createState() => _BaseWidgetState();
}

class _BaseWidgetState extends State<BaseWidget> {
  ListPages listPages = ListPages();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BaseBloc, int>(builder: (_, state) {
      if (state != 0) {
        return LayoutBuilder(
          builder: (context, constraints) {
            return Scaffold(
                body: Stack(
              children: [
                listPages.pages.elementAt(state),
                SideBar(index: state),
              ],
            ));
          },
        );
      } else {
        return LayoutBuilder(
          builder: (context, constraints) {
            return Scaffold(
                body: Stack(
              children: [
                listPages.pages.elementAt(0),
                SideBar(index: 0),
              ],
            ));
          },
        );
      }
    });
  }
}
