class ValidatorEmail {
  Future<String> validator(String email) async {
    if (email == null) {
      return 'Informe um e-mail';
    } else if (!email.split('').contains('@')) {
      return 'Informe um e-mail válido';
    } else {
      return null;
    }
  }
}
