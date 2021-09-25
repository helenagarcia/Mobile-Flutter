void main() {
  
  // >>>>>Estrutura de Decisão<<<<<
  // 3. A partir de três valores que serão digitados, verificar se formam ou não um triângulo. Em caso positivo, exibir sua classificação: “Isósceles, escaleno ou eqüilátero”. Um triângulo escaleno possui todos os lados diferentes, o isósceles, dois lados iguais e o eqüilátero, todos os lados iguais. Para existir triângulo é necessário que a soma de dois lados quaisquer seja maior que o outro, isto, para os três lados
  double lado1 = 3;
  double lado2 = 4;
  double lado3 = 5;
  

  if (lado1 + lado2 > lado3 && lado1 + lado3 > lado2 && lado2 + lado3 > lado1){
    
    if (lado1 == lado2 && lado2 == lado3){
    print("Triângulo Equilátero!");
    }
    
    if (lado1 != lado2 && lado1 != lado3 && lado2 != lado3){
      print("Triângulo Escaleno!");
    }
    else {
      print("Triângulo Isóceles!");
    }
    
  }
  else {
    print("Não é um Triângulo!");
  }
  
}