import 'package:dartz/dartz.dart';
import 'package:pcm_vibra/app/core/app_errors.dart';
import 'package:pcm_vibra/app/modules/register/infra/models/users_model.dart';

class Validators {
  Future<Either<Failure, bool>> validators(UsersModel users) async {
    if (users.imagem == null) {
      return Left(Failure('Adicione uma imagem'));
    } else if (users.nome == null) {
      return Left(Failure('Informe o seu nome'));
    } else if (users.senha == null) {
      return Left(Failure('informe uma senha'));
    } else if (users.email == null) {
      return Left(Failure('informe um e-mail'));
    } else if (users.telefone == null) {
      return Left(Failure('informe um telefone'));
    } else {
      return Right(true);
    }
  }
}
