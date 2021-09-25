void main() {
  
  // >>>>>List e Map<<<<<
  // 2. Armazenar dez valores na memória do computador. Após a digitação dos valores, criar uma rotina para ler os valores e achar e exibir o maior deles.
  final num = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int maior_valor = 0;
   
  for(int i=0; i<10; i++) {
    if (num[i] > maior_valor){
      maior_valor = num[i];
    }
  }
  print("O maior valor é: $maior_valor");

}