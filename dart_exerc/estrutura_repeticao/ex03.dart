void main() {
  
  // >>>>>Estrutura de Repetição<<<<<
  // 3. Exibir os trinta primeiros valores da série de Fibonacci. A série: 1, 1, 2, 3, 5, 8, ...
  int n1 = 1;
  int n2 = 1;
  int n3;
  
  print("$n1");
  print("$n2");
  
  for (int i = 2; i < 30; i++) {
    n3 = n1 + n2; 
    print("$n3");
    n1 = n2;
    n2 = n3;
  }
  
}