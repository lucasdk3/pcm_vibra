import 'package:flutter/material.dart';
import 'package:pcm_vibra/app/ui/buttons_ui.dart';
import '../../../../app_router.dart';

Widget registerButton() {
  return buttonUi(() {
    AppRouter.instance.off('/register');
  }, 'Registrar');
}
