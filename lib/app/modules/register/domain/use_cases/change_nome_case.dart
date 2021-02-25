import 'package:pcm_vibra/app/modules/register/bloc/register_bloc.dart';
import 'package:pcm_vibra/app/modules/register/infra/validators/validator_nome.dart';

class ChangeNomeCase {
  ValidatorNome validator = ValidatorNome();
  Stream<RegisterState> mapUpdateNomeState(
    final currentState,
    ChangeNome event,
  ) async* {
    if (currentState is EditingState) {
      final users = currentState.users;
      final errors = currentState.errors;
      yield LoadingState();
      String error = await validator.validator(event.nome);
      errors.nome = error;
      users.nome = event.nome;
      yield EditingState(users: users, loading: false, errors: errors);
    }
  }
}
