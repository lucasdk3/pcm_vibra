import 'package:flutter/material.dart';
import 'package:pcm_vibra/app/modules/register/presenter/components/register_button.dart';
import 'package:pcm_vibra/app/modules/register/presenter/components/register_forms.dart';
import 'package:pcm_vibra/app/modules/register/presenter/components/register_image.dart';
import 'package:universal_platform/universal_platform.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    print(UniversalPlatform.isWeb);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 80.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              image(context),
              RegisterForms(),
              registerButton(context),
            ],
          ),
        ),
      ),
    );
  }
}
