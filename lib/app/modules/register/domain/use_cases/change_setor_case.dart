import 'package:pcm_vibra/app/modules/register/bloc/register_bloc.dart';
class ChangeSetorCase {
  Stream<RegisterState> mapSetorState(
    RegisterState currentState,
    ChangeSetor event,
  ) async* {
    if (currentState is EditingState) {
      final users = currentState.users;
      yield EditingState(users: users, loading: false);
      final errors = currentState.errors;
      yield LoadingState();
      users.setor = event.setor;
      yield EditingState(users: users, loading: false, errors: errors);
    }
  }
}
