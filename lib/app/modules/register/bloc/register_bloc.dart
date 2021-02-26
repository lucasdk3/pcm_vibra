import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:pcm_vibra/app/modules/register/domain/use_cases/cases.dart';
import 'package:pcm_vibra/app/modules/register/infra/models/errors_model.dart';
import 'package:pcm_vibra/app/modules/register/infra/models/users_model.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc()
      : super(EditingState(
            users: UsersModel(), loading: false, errors: ErrorsModel()));
  RegisterCases cases = RegisterCases();

  @override
  Stream<RegisterState> mapEventToState(
    RegisterEvent event,
  ) async* {
    if (event is GetImage) {
      yield* cases.getImageCase(state, event);
    } else if (event is ChangeEmail) {
      yield* cases.changeEmailCase(state, event);
    } else if (event is ChangeNome) {
      yield* cases.changeNomeCase(state, event);
    } else if (event is ChangeSetor) {
      yield* cases.changeSetorCase(state, event);
    } else if (event is ChangeSenha) {
      yield* cases.changeSenhaCase(state, event);
    } else if (event is Register) {
      yield* cases.register(state, event);
    }
  }
}
