import 'package:pcm_vibra/app/modules/login/bloc/login_bloc.dart';
import 'change_email_case.dart';
import 'change_senha_case.dart';
import 'login_with_email_case.dart';

class LoginCases {
  ChangeEmailCase emailCase = ChangeEmailCase();

  ChangeSenhaCase senhaCase = ChangeSenhaCase();

  LoginWithEmailCase loginCase = LoginWithEmailCase();

  Stream<LoginState> changeEmailCase(
    final currentState,
    ChangeEmail event,
  ) async* {
    yield* emailCase.mapUpdateEmailState(currentState, event);
  }

  Stream<LoginState> changeSenhaCase(
    final currentState,
    ChangeSenha event,
  ) async* {
    yield* senhaCase.mapUpdateSenhaState(currentState, event);
  }

  Stream<LoginState> loginWithEmailCase(
    final currentState,
    LoginWithEmail event,
  ) async* {
    yield* loginCase.mapLoginWithEmailState(currentState, event);
  }
}
