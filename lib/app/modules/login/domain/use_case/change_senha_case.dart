import 'package:pcm_vibra/app/modules/login/bloc/login_bloc.dart';
import 'package:pcm_vibra/app/modules/register/infra/validators/validator_senha.dart';

class ChangeSenhaCase {
  ValidatorSenha validator = ValidatorSenha();
  Stream<LoginState> mapUpdateSenhaState(
    LoginState currentState,
    ChangeSenha event,
  ) async* {
    if (currentState is EditingState) {
      final login = currentState.login;
      yield LoadingState();
      String error = await validator.validator(event.senha);
      login.senha = event.senha;
      login.senhaError = error;
      yield EditingState(login: login);
    }
  }
}
