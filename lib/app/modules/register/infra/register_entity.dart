import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';

class Users extends Equatable {
  final String name;
  final String email;
  final String senha;
  final String telefone;
  final PickedFile image;

  Users({this.name, this.email, this.senha, this.telefone, this.image});

  @override
  List<Object> get props => [name, email, senha, telefone, image];
}
