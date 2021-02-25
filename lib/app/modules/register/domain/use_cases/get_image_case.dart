import 'package:pcm_vibra/app/modules/register/bloc/register_bloc.dart';
import 'package:pcm_vibra/app/modules/register/domain/repositories/register_repository.dart';

class GetImageCase {
  RegisterRepository repository = RegisterRepository();
  Stream<RegisterState> mapUpdateImageState(
    final currentState,
    GetImage event,
  ) async* {
    if (currentState is EditingState) {
      final result = await repository.imagePicker();
      if (result != null) {
        final users = currentState.users;
        final errors = currentState.errors;
        users.imagem = result;
        yield EditingState(users: users, loading: false, errors: errors);
      }
    }
  }
}
