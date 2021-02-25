import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app_widget.dart';
import 'core/base/bloc/base_bloc.dart';
import 'modules/register/bloc/register_bloc.dart';

class AppListeners extends StatefulWidget {
  @override
  _AppListenersState createState() => _AppListenersState();
}

class _AppListenersState extends State<AppListeners> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<BaseBloc, int>(
          listener: (context, state) {},
        ),
        BlocListener<RegisterBloc, RegisterState>(
          listener: (context, state) {},
        ),
      ],
      child: AppWidget(),
    );
  }
}
