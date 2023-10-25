String retornaImc(double peso, double altura) {
  var imc = peso / (altura * altura);
  var classificacao;
  if (imc < 16) {
    classificacao = 'Peso grave';
  } else if (imc >= 16 && imc < 17) {
    classificacao = 'Magreza moderada';
  } else if (imc >= 17 && imc < 18.5) {
    classificacao = 'Magreza leve';
  } else if (imc >= 18.5 && imc < 25) {
    classificacao = 'Saudável';
  } else if (imc >= 25 && imc < 30) {
    classificacao = 'Sobrepeso';
  } else if (imc >= 30 && imc > 35) {
    classificacao = 'Obesidade Grau I';
  } else if (imc >= 35 && imc < 40) {
    classificacao = 'Obesidade Grau II';
  } else if (imc >= 40) {
    classificacao = 'Obesidade Grau III';
  }

  return 'O resultado final é ${imc.floor()} kg/m², indicando que você está com $classificacao';
}
