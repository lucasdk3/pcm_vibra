class ValidatorNome {
  Future<String> validator(String nome) async {
    if (nome == null) {
      return 'Informe seu nome';
    } else {
      return null;
    }
  }
}
