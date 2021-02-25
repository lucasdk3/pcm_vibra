import 'package:pcm_vibra/app/modules/auth/domain/repositories/auth_repository.dart';

class VerifyAuthCase {
  AuthRepository authRepository = AuthRepository();

  Future<bool> verifyAuth() async {
    authRepository.verifyAuth();
  }
}
