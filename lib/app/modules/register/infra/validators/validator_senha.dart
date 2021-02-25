class ValidatorSenha {
  Future<String> validator(String senha) async {
    if (senha == null) {
      return 'Informe uma senha';
    } else if (senha.length < 6) {
      return 'A senha deve conter mais que 6 digitos';
    } else {
      return null;
    }
  }
}
