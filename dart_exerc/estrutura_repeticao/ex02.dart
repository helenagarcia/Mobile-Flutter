void main() {
  
  // >>>>>Estrutura de Repetição<<<<<
  // 2. Entrar via teclado com um valor (X) qualquer. Digitar o intervalo que o programa que deverá calcular a tabuada do valor X digitado, sendo que o segundo valor (B), deverá ser maior que o primeiro (A). Exibir a tabuada do valor digitado, no intervalo decrescente, ou seja, a tabuada de X no intervalo de B para A.
  int num = 5;
  int intervalo_b = 10;
  int intervalo_a = 5;
  

  for (int i = intervalo_b; i >= intervalo_a; i--) {
    int resultado = num * i;
    print("$num x $i = $resultado");
  }
  
}