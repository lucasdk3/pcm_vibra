import 'package:fluttertoast/fluttertoast.dart';
import 'package:pcm_vibra/app/modules/register/bloc/register_bloc.dart';
import 'package:pcm_vibra/app/modules/register/domain/use_cases/change_email_case.dart';
import 'package:pcm_vibra/app/modules/register/domain/use_cases/change_setor_case.dart';
import 'package:pcm_vibra/app/modules/register/domain/use_cases/register_case.dart';

import 'change_nome_case.dart';
import 'change_senha_case.dart';
import 'get_image_case.dart';

class RegisterCases {
  GetImageCase getImage = GetImageCase();

  ChangeEmailCase emailCase = ChangeEmailCase();

  ChangeNomeCase nomeCase = ChangeNomeCase();

  ChangeSenhaCase senhaCase = ChangeSenhaCase();

  ChangeSetorCase SetorCase = ChangeSetorCase();

  RegisterCase registerCase = RegisterCase();

  Stream<RegisterState> getImageCase(
    final currentState,
    GetImage event,
  ) async* {
    yield* getImage.mapUpdateImageState(currentState, event);
  }

  Stream<RegisterState> changeEmailCase(
    final currentState,
    ChangeEmail event,
  ) async* {
    yield* emailCase.mapUpdateEmailState(currentState, event);
  }

  Stream<RegisterState> changeSenhaCase(
    final currentState,
    ChangeSenha event,
  ) async* {
    yield* senhaCase.mapUpdateSenhaState(currentState, event);
  }

  Stream<RegisterState> changeNomeCase(
    final currentState,
    ChangeNome event,
  ) async* {
    yield* nomeCase.mapUpdateNomeState(currentState, event);
  }

  Stream<RegisterState> changeSetorCase(
    final currentState,
    ChangeSetor event,
  ) async* {
    yield* SetorCase.mapSetorState(currentState, event);
  }

  Stream<RegisterState> register(
    final currentState,
    Register event,
  ) async* {
    yield* registerCase.mapRegisterState(currentState, event);
  }
}
