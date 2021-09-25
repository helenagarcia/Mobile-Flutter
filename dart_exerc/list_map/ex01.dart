void main() {
  
  // >>>>>List e Map<<<<<
  // 1. Armazenar dez números na memória do computador. Exibir os valores na ordem inversa à da digitação.
  final num = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final inversa = [];
 
  for(int i=9; i>=0; i--) {
    inversa.add(num[i]);
  }
  print("Lista:   $num");
  print("Inversa: $inversa");

}