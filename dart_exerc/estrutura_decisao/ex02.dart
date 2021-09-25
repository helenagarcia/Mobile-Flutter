void main() {
  
  // >>>>>Estrutura de Decisão<<<<<
  // 2. Entrar com o peso e a altura de uma determinada pessoa. Após a digitação, exibir se esta pessoa está ou não com seu peso ideal. Fórmula: peso/altura².
  double peso = 60;
  double altura = 1.69;
  double calculo = peso/(altura*altura);
  
  if (calculo >= 19 && calculo < 24){
    print("Seu IMC é $calculo. \nVocê está com o peso ideal!");
  }
  else {
    print("Seu IMC é $calculo. \nVocê não está com o peso ideal!");
  }
  
}