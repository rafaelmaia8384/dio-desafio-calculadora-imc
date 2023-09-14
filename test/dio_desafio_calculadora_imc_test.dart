import 'package:dio_desafio_calculadora_imc/models/model_pessoa.dart';
import 'package:test/test.dart';

void main() {
  test('calculate person IMC', () {
    expect(ModelPessoa(nome: 'Nome', peso: 80, altura: 1.75).getIMC(),
        equals('26.12'));
  });
  test('calculate person IMC with wrong weight', () {
    expect(() => ModelPessoa(nome: 'Nome', peso: 0, altura: 1.75).getIMC(),
        throwsA(TypeMatcher<Exception>()));
  });

  test('calculate person IMC with wrong height', () {
    expect(() => ModelPessoa(nome: 'Nome', peso: 80, altura: 0).getIMC(),
        throwsA(TypeMatcher<Exception>()));
  });
}
