import 'package:flutter/material.dart';
import 'package:pcm_vibra/app/ui/buttons_ui.dart';
import '../../../../app_router.dart';

Widget resetButton() {
  return buttonUi(() {
    AppRouter.instance.off('/reset');
  }, 'Esqueci minha senha');
}
