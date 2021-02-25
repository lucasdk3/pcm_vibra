import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pcm_vibra/app/core/app_errors.dart';
import 'package:pcm_vibra/app/modules/login/infra/models/login_model.dart';

class FirebaseLoginDatasource {
  Future<Either<Failure, String>> loginFirebase(LoginModel login) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: login.email, password: login.senha);
      var user = userCredential.user;
      return Right(user.uid);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return Left(e.message as Failure);
      } else if (e.code == 'wrong-password') {
        return Left(e.message as Failure);
      }
    }
  }
}
