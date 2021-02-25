import 'package:flutter/material.dart';

import 'theme/theme.dart';

Widget buttonUi(onClick, String text) {
  return Center(
    child: MaterialButton(
        padding: EdgeInsets.all(20.0),
        color: primary,
        textColor: Colors.white,
        highlightElevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Text(text),
        onPressed: onClick),
  );
}
