import 'package:pcm_vibra/app/modules/login/bloc/login_bloc.dart';
import 'package:pcm_vibra/app/modules/register/infra/validators/validator_email.dart';
class ChangeEmailCase {
  ValidatorEmail validator = ValidatorEmail();
  Stream<LoginState> mapUpdateEmailState(
    LoginState currentState,
    ChangeEmail event,
  ) async* {
    if (currentState is EditingState) {
      final login = currentState.login;
      yield LoadingState();
      String error = await validator.validator(event.email);
      login.email = event.email;
      login.emailError = error;
      print(login);
      yield EditingState(login: login);
    }
  }
}
