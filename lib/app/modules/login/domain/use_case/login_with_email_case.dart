import 'package:pcm_vibra/app/modules/login/bloc/login_bloc.dart';
import 'package:pcm_vibra/app/modules/login/domain/repositories/login_repository.dart';
import 'package:pcm_vibra/app/modules/register/infra/validators/register_validators.dart';

class LoginWithEmailCase {
  Validators validators = Validators();
  LoginRepository repository = LoginRepository();

  Stream<LoginState> mapLoginWithEmailState(
    final currentState,
    LoginWithEmail event,
  ) async* {
    if (currentState is EditingState) {
      final login = currentState.login;

      yield LoadingState();

      await repository.login(login);

      yield EditingState(login: login);
    }
  }
}
