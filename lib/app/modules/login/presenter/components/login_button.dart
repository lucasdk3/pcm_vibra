import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pcm_vibra/app/modules/login/bloc/login_bloc.dart';
import 'package:pcm_vibra/app/ui/buttons_ui.dart';

Widget loginButton(BuildContext context) {
  // ignore: close_sinks
  final bloc = BlocProvider.of<LoginBloc>(context);
  return BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
    if (state is LoadingState) {
      return CircularProgressIndicator();
    } else {
      return Center(
        child: buttonUi(() {
          if (state is EditingState) {
            bloc.add(LoginWithEmail(
                email: state.login.email, senha: state.login.senha));
          }
        }, 'Logar'),
      );
    }
  });
}
