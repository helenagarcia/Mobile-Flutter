void main() {
  
  // >>>>>Estrutura de Decisão<<<<<
  // 4. Entrar com o peso, o sexo e a altura de uma determinada pessoa. Após a digitação, exibir se esta pessoa está ou não com seu peso ideal. Fórmula: peso/altura².
  double peso_kg = 60;
  double altura_m = 1.69;
  String sexo = "Feminino";
  double calculo1 = peso_kg/(altura_m*altura_m);
    
  if (sexo == "Feminino"){
    if (calculo1 >= 19 && calculo1 < 24){
      print("Você está com o peso ideal!");
    }
    if (calculo1 < 19){
      print("Você não está com o peso ideal... Está abaixo do peso!");
    }
    if (calculo1 >= 24) {
      print("Você não está com o peso ideal... Está acima do peso!");
    }
  }
  
  if (sexo == "Masculino"){
    if (calculo1 >= 20 && calculo1 < 25){
      print("Você está com o peso ideal!");
    }
    if (calculo1 < 20){
      print("Você não está com o peso ideal... Está abaixo do peso!");
    }
    if (calculo1 >= 25) {
      print("Você não está com o peso ideal... Está acima do peso!");
    }
  } 
}