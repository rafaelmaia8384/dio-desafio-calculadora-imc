import 'dart:io';

import 'package:dio_desafio_calculadora_imc/models/model_pessoa.dart';
import 'package:dio_desafio_calculadora_imc/services/imc_result.dart';

void main(List<String> arguments) {
  String? nome;
  double? peso;
  double? altura;

  print('Bem vindo à calculadora de IMC.\n\n');

  while (true) {
    print('Digite seu nome: ');
    nome = stdin.readLineSync();
    if (nome != null && nome.isNotEmpty) {
      break;
    } else {
      print('Nome inválido.');
    }
  }

  while (true) {
    print('Digite seu peso (kg): ');
    peso = double.parse(stdin.readLineSync() ?? '0.0');
    if (peso > 0.0) {
      break;
    } else {
      print('Peso inválido.');
    }
  }

  while (true) {
    print('Digite sua altura (m): ');
    altura = double.parse(stdin.readLineSync() ?? '0.0');
    if (altura > 0.0) {
      break;
    } else {
      print('Altura inválida.');
    }
  }

  final pessoa = ModelPessoa(
    nome: nome,
    peso: peso,
    altura: altura,
  );

  print('\nCalculando seu IMC...');
  sleep(Duration(seconds: 2));
  String imc = pessoa.getIMC();
  String result = getIMCResult(double.parse(imc));
  print('${pessoa.nome}, seu IMC é: $imc. $result.');
}
