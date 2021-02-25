import 'package:fluttertoast/fluttertoast.dart';
import 'package:pcm_vibra/app/modules/register/bloc/register_bloc.dart';
import 'package:pcm_vibra/app/modules/register/domain/repositories/register_repository.dart';
import 'package:pcm_vibra/app/modules/register/infra/validators/register_validators.dart';

class RegisterCase {
  Validators validators = Validators();
  RegisterRepository repository = RegisterRepository();

  Stream<RegisterState> mapRegisterState(
    final currentState,
    Register event,
  ) async* {
    if (currentState is EditingState) {
      yield EditingState(
          users: currentState.users,
          loading: true,
          errors: currentState.errors);
      final users = currentState.users;

      var validated = await validators.validators(event.users);

      await validated.fold((l) async {
        Fluttertoast.showToast(msg: l.error);
      }, (r) async {
        if (r) {
          var error = await repository.register(users);

          if (error != null) {
            Fluttertoast.showToast(msg: error.toString());
          }
        }
      });

      yield EditingState(
          users: users, loading: false, errors: currentState.errors);
    }
  }
}
