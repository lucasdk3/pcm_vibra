part of 'register_bloc.dart';

abstract class RegisterState extends Equatable {
  const RegisterState();

  @override
  List<Object> get props => [];
}

class RegisterInitial extends RegisterState {}

class EditingState extends RegisterState {
  final UsersModel users;
  final bool loading;
  final ErrorsModel errors;

  const EditingState({this.users, this.loading, this.errors})
      : assert(users != null, errors != null);

  @override
  String toString() =>
      'Users: {name: ${users.nome}, email: ${users.email}, senha: ${users.senha}, setor: ${users.setor}, error: ${errors.email}}';

  @override
  List<Object> get props => [this.users, this.loading, this.errors];
}

class LoadingState extends RegisterState {}
