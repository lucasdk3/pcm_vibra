import 'package:pcm_vibra/app/modules/register/bloc/register_bloc.dart';
import 'package:pcm_vibra/app/modules/register/infra/validators/validator_telefone.dart';

class ChangeTelefoneCase {
  ValidatorTelefone validator = ValidatorTelefone();
  Stream<RegisterState> mapUpdateNomeState(
    RegisterState currentState,
    ChangeTelefone event,
  ) async* {
    if (currentState is EditingState) {
      final users = currentState.users;
      yield EditingState(users: users, loading: false);
      final errors = currentState.errors;
      yield LoadingState();
      String error = await validator.validator(event.telefone);
      errors.telefone = error;
      users.telefone = event.telefone;
      yield EditingState(users: users, loading: false, errors: errors);
    }
  }
}
