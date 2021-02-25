import 'package:pcm_vibra/app/modules/auth/domain/repositories/auth_repository.dart';
class LogoutCase {
  AuthRepository authRepository = AuthRepository();
  Future logout() async {
    authRepository.signOut();
  }
}
