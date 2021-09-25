void main() {
  
  // >>>>>Estrutura de Repetição<<<<<
  // 4. Exibir os vinte primeiros valores da série de Bergamaschi. A série: 1, 1, 1, 3, 5, 9, 17, ...
  int n1 = 1;
  int n2 = 1;
  int n3 = 1;
  int n;
  print("$n1");
  print("$n2");
  print("$n3");
  
  for (int i = 3; i < 20; i++) {
    n = n1 + n2 + n3; 
    print("$n");
    n1 = n2;
    n2 = n3;
    n3 = n;
  } 

}