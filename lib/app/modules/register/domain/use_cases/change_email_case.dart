import 'package:pcm_vibra/app/modules/register/bloc/register_bloc.dart';
import 'package:pcm_vibra/app/modules/register/infra/validators/validator_email.dart';

class ChangeEmailCase {
  ValidatorEmail validator = ValidatorEmail();
  Stream<RegisterState> mapUpdateEmailState(
    RegisterState currentState,
    ChangeEmail event,
  ) async* {
    if (currentState is EditingState) {
      final users = currentState.users;
      final errors = currentState.errors;
      yield LoadingState();
      String error = await validator.validator(event.email);
      errors.email = error;
      users.email = event.email;
      yield EditingState(users: users, loading: false, errors: errors);
    }
  }
}
