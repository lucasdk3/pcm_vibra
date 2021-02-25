import 'package:pcm_vibra/app/modules/auth/external/datasource/firebase_auth_datasource.dart';
import 'package:pcm_vibra/app/modules/auth/external/datasource/firebase_logout_datasource.dart';

import '../../../../app_router.dart';

class AuthRepository {
  FirebaseAuthDatasource auth = FirebaseAuthDatasource();
  FirebaseLogoutDatasource logout = FirebaseLogoutDatasource();

  Future verifyAuth() async {
    var result = await auth.authFirebase();

    if (result) {
      AppRouter.instance.off('/base');
    } else {
      AppRouter.instance.off('/login');
    }
  }

  Future signOut() async {
    var result = await logout.logout();
  }
}
