import 'package:pcm_vibra/app/modules/register/bloc/register_bloc.dart';
import 'package:pcm_vibra/app/modules/register/infra/validators/validator_senha.dart';

class ChangeSenhaCase {
  ValidatorSenha validator = ValidatorSenha();
  Stream<RegisterState> mapUpdateSenhaState(
    RegisterState currentState,
    ChangeSenha event,
  ) async* {
    if (currentState is EditingState) {
      final users = currentState.users;
      final errors = currentState.errors;
      yield LoadingState();
      String error = await validator.validator(event.senha);
      errors.senha = error;
      users.senha = event.senha;
      yield EditingState(users: users, loading: false, errors: errors);
    }
  }
}
