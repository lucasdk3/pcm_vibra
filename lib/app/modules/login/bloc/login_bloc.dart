import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:pcm_vibra/app/modules/login/domain/use_case/cases.dart';
import 'package:pcm_vibra/app/modules/login/infra/models/login_model.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial());
  LoginCases cases = LoginCases();
  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    if (state is LoginInitial) {
      yield EditingState(login: LoginModel());
    }
    if (event is ChangeEmail) {
      yield* cases.changeEmailCase(state, event);
    } else if (event is ChangeSenha) {
      yield* cases.changeSenhaCase(state, event);
    } else if (event is LoginWithEmail) {
      yield* cases.loginWithEmailCase(state, event);
    }
  }
}
