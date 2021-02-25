import 'package:flutter/material.dart';
import 'package:pcm_vibra/app/modules/login/presenter/components/login_button.dart';
import 'package:pcm_vibra/app/modules/login/presenter/components/login_forms.dart';
import 'package:pcm_vibra/app/modules/login/presenter/components/reset_password_button.dart';

import 'components/register_button.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          LoginForms(),
          loginButton(context),
          resetButton(),
          registerButton()
        ],
      ),
    );
  }
}
