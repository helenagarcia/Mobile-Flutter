void main() {
  
  // >>>>>Estrutura de Repetição<<<<<
  // 5. Calcular e exibir a soma dos “N” primeiros valores da seqüência abaixo. O valor “N” será digitado, deverá ser positivo, mas menor que cem. Caso o valor não satisfaça a restrição, enviar mensagem de erro e solicitar o valor novamente. A seqüência: 2, 5, 10, 17, 26, ....
  int incremento = 1;
  int valor = 2;
  int soma = 0;
  int n = 5;
  
  if (n > 0 && n < 100){
    for (int i = 0; i < n; i++) {
      soma = soma + valor;
      incremento = incremento + 2;
      valor = incremento + valor;
  }
    print ("A soma é: $soma");
  }
  else {
    print ("Erro.. Digite o valor corretamente!");
  }
}