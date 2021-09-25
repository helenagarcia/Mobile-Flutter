void main() {
  
  // >>>>>List e Map<<<<<
  // 3. Armazenar vinte valores em um vetor. Após a digitação, entrar com uma constante multiplicativa que deverá multiplicar cada um dos valores do vetor e armazenar o resultado no próprio vetor, na respectiva posição.
  final num = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20];
  const constante = 5;
   
  for(int i=0; i<20; i++) { 
   num[i] = num[i] * constante;
  }
  print("Lista: $num");

}