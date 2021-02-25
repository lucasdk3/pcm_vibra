import 'package:fluttertoast/fluttertoast.dart';
import 'package:pcm_vibra/app/core/app_errors.dart';
import 'package:pcm_vibra/app/modules/login/external/firebase_login_datasource.dart';
import 'package:pcm_vibra/app/modules/login/infra/models/login_model.dart';

import '../../../../app_router.dart';

class LoginRepository {
  FirebaseLoginDatasource datasource = FirebaseLoginDatasource();

  Future<Failure> login(LoginModel login) async {
    final result = await datasource.loginFirebase(login);

    return result.fold((l) {
      Fluttertoast.showToast(msg: l.error);

      return l;

      // ignore: missing_return
    }, (uid) async {
      print(uid);

      Fluttertoast.showToast(msg: 'Registrado com sucesso');

      AppRouter.instance.off('/base');
    });
  }
}
