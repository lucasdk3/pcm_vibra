import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ionicons/ionicons.dart';
import 'package:pcm_vibra/app/core/base/bloc/base_bloc.dart';
import 'package:pcm_vibra/app/core/side_bar/infra/list_pages.dart';
import 'package:pcm_vibra/app/ui/theme/theme.dart';
import 'package:universal_platform/universal_platform.dart';

import '../../../ui/theme/theme.dart';
import '../../../ui/theme/theme.dart';

class SideBar extends StatefulWidget {
  final int index;

  const SideBar({Key key, this.index}) : super(key: key);

  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  bool isOpen = false;
  bool isWeb = false;
  @override
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800.0) {
          isWeb = true;
          return Align(
              alignment: Alignment.topLeft,
              child: (isOpen) ? drawerBig() : drawerOpen());
        } else {
          isWeb = false;
          return Align(
              alignment: Alignment.topLeft,
              child: (isOpen) ? drawerBig() : drawerClose());
        }
      },
    );
  }

  Widget pages() {
    ListPages listPage = ListPages();
    return Wrap(
      children: [
        BlocBuilder<BaseBloc, int>(builder: (_, state) {
          return ListView.builder(
              shrinkWrap: true,
              itemCount: listPage.listPages.length,
              itemBuilder: (_, i) {
                Color iconColor = (state == i) ? Colors.white : Colors.white;
                Color lineColor = (state == i) ? Colors.white : primary;
                Color letraColor = (state == i) ? Colors.white : Colors.white;
                Color fundoColor = (state == i) ? Colors.white : primary;
                return GestureDetector(
                  onTap: () {
                    BlocProvider.of<BaseBloc>(context)
                        .add(UpdatePage(indexPage: i));
                    setState(() {
                      isOpen = false;
                    });
                  },
                  child: page(
                      listPage.listPages[i].page,
                      listPage.listPages[i].icon,
                      iconColor,
                      lineColor,
                      letraColor,
                      fundoColor),
                );
              });
        }),
      ],
    );
  }

  Widget page(String page, IconData icon, Color iconColor, Color lineColor,
      Color letraColor, Color fundoColor) {
    return Padding(
      padding: EdgeInsets.only(bottom: 4.h),
      child: Container(
        height: 46,
        width: 46,
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (isWeb && !isOpen) new Container(),
            Row(
              children: [
                Align(
                  child: Container(
                      margin: EdgeInsets.only(left: isOpen ? 12 : 0),
                      child: Icon(icon, color: iconColor)),
                ),
                isOpen
                    ? Container(
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * .005),
                        child: Center(
                            child: Text(page,
                                style: TextStyle(
                                    color: letraColor, fontSize: 16))))
                    : SizedBox(),
              ],
            ),
            Container(
              height: 46,
              width: 4,
              color: lineColor,
            )
          ],
        ),
      ),
    );
  }

  Widget drawerOpen() {
    return Material(
      elevation: 2,
      child: Container(
        width: 60,
        color: primary,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 14.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8),
                          child: Container(
                              height: 24.h,
                              child: Image.asset(
                                'assets/logo.png',
                                filterQuality: FilterQuality.high,
                                fit: BoxFit.contain,
                              )),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 1,
                  width: 50,
                  color: secundary,
                ),
                SizedBox(
                  height: 20.h,
                ),
                pages(),
              ],
            ),
            isWeb ? buttomOpen() : buttomClose()
          ],
        ),
      ),
    );
  }

  Widget drawerBig() {
    return Row(
      children: [
        Container(
          height: double.infinity,
          width: 160,
          decoration: BoxDecoration(
            color: primary,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Center(
                      child: Container(
                          height: 30.h,
                          child: Image.asset(
                            'assets/logo.png',
                            fit: BoxFit.fill,
                          )),
                    ),
                  ),
                  Container(
                    height: 1,
                    width: 150,
                    color: secundary,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  pages(),
                ],
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * .005,
                        bottom: MediaQuery.of(context).size.height * .02),
                    child: buttomClose(),
                  )),
            ],
          ),
        ),
      ],
    );
  }

  Widget drawerClose() {
    bool ifWeb = UniversalPlatform.isWeb;
    return Padding(
      padding: EdgeInsets.only(top: ifWeb ? 12 : 61.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            isOpen = true;
          });
        },
        child: Container(
          decoration: BoxDecoration(
              color: primary,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(12),
                  topRight: Radius.circular(12))),
          height: 44,
          width: 34,
          child: Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.menu,
              color: Colors.white,
              size: 24,
            ),
          ),
        ),
      ),
    );
  }

  Widget buttomClose() {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            isOpen = false;
          });
        },
        child: Container(
          height: 64,
          width: 64,
          decoration: BoxDecoration(
              color: primary, borderRadius: BorderRadius.circular(4)),
          child: Icon(Icons.close, color: Colors.white, size: 26),
        ),
      ),
    );
  }

  Widget buttomOpen() {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            isOpen = true;
          });
        },
        child: Container(
          height: 64,
          width: 64,
          decoration: BoxDecoration(
              color: primary, borderRadius: BorderRadius.circular(4)),
          child: Icon(Ionicons.chevron_forward_outline,
              color: Colors.white, size: 26),
        ),
      ),
    );
  }
}
