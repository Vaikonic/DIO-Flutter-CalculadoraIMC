import 'dart:io';

import 'package:dart_app_imc/models/console_utils.dart';

class NomeInvalidoException implements Exception {
  String error() => "Nome inválido";

  @override
  String toString() {
    return "NomeInvalidoException: ${error()}";
  }
}

class AlturaInvalidaException implements Exception {
  String error() => "Altura inválida, deve ser maior que 0";

  @override
  String toString() {
    return "AlturaInvalidaException: ${error()}";
  }
}

class PesoInvalidoException implements Exception {
  String error() => "Peso inválido, deve ser maior que 0";

  @override
  String toString() {
    return "PesoInvalidoException: ${error()}";
  }
}

void execute() {
  print('Calculadora IMC');
  String nome;
  double altura;
  double peso;
  nome = ConsoleUtils.lerStringComTexto('Digite o seu nome:');
  try {
    if (nome.trim() == '') {
      throw NomeInvalidoException();
    }
  } on NomeInvalidoException {
    nome = 'Padrão';
    print(NomeInvalidoException);
    exit(0);
  }
  peso = ConsoleUtils.lerDoubleComTexto('digite o seu peso:')!;
  try {
    if (peso.runtimeType != double) {
      throw PesoInvalidoException();
    }
  } on PesoInvalidoException {
    peso = 0;
    print(PesoInvalidoException);
    exit(0);
  }
  altura = ConsoleUtils.lerDoubleComTexto('digite a sua altura:')!;
  try {
    if (altura.runtimeType != double) {
      throw AlturaInvalidaException();
    }
  } on AlturaInvalidaException {
    altura = 0;
    print(AlturaInvalidaException);
    exit(0);
  }
}
