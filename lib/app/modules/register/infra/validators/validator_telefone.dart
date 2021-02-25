class ValidatorTelefone {
  Future<String> validator(String telefone) async {
    if (telefone == null) {
      return 'Informe um telefone';
    } else {
      return null;
    }
  }
}
