import 'package:pcm_vibra/app/modules/auth/domain/use_case/logout_case.dart';
import 'package:pcm_vibra/app/modules/auth/domain/use_case/verify_auth_case.dart';
class AuthCases {
  VerifyAuthCase verifyAuthCase = VerifyAuthCase();
  LogoutCase logoutCase = LogoutCase();
  Future<bool> verifyAuth() async {
    verifyAuthCase.verifyAuth();
  }

  Future<bool> logout() async {
    logoutCase.logout();
  }
}
