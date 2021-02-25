import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app_listeners.dart';
import 'core/base/bloc/base_bloc.dart';
import 'modules/auth/bloc/auth_bloc.dart';
import 'modules/register/bloc/register_bloc.dart';

class AppProviders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider<BaseBloc>(create: (BuildContext context) => BaseBloc()),
      BlocProvider<AuthBloc>(create: (BuildContext context) => AuthBloc()),
            BlocProvider<RegisterBloc>(
                create: (BuildContext context) => RegisterBloc()),
          ], child: AppListeners());
        }
      }
      
      LoginBloc() {
}
