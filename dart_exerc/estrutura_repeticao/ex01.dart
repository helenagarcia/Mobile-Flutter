void main() {
  
  // >>>>>Estrutura de Repetição<<<<<
  // 1. Entrar via teclado com um valor qualquer. Após a digitação, exibir a tabuada do valor solicitado, no intervalo de um a dez.
  int num = 2;

  for (int i = 1; i <= 10; i++) {
    int resultado = num * i;
    print("$num x $i = $resultado");
  }
  
}