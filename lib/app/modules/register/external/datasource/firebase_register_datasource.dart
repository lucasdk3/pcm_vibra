import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pcm_vibra/app/core/app_errors.dart';
import 'package:pcm_vibra/app/modules/register/infra/models/users_model.dart';

class FirebaseRegisterDatasource {
  Future<Either<Failure, String>> firebaseRegister(UsersModel users) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: users.email, password: users.senha);
      return Right(userCredential.user.uid);
    } on FirebaseAuthException catch (e) {
      return Left(Failure(e.message));
    } catch (e) {
      return Left(Failure(e.message));
    }
  }
}
