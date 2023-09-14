class ModelPessoa {
  String nome;
  double peso;
  double altura;
  ModelPessoa({
    required this.nome,
    required this.peso,
    required this.altura,
  });
  String getIMC() {
    if (peso <= 0.0) {
      throw Exception('Peso deve ser maior que zero.');
    } else if (altura <= 0.0) {
      throw Exception('A altura deve ser maior que zero.');
    }
    final double imc = peso / (altura * altura);
    return imc.toStringAsFixed(2);
  }
}
