void main() {
  
  // >>>>>Estrutura de Decisão<<<<<
  // 1. Calcular e exibir a área de um retângulo, a partir dos valores da base e altura que serão digitados. Se a área for maior que 100, exibir a mensagem “Terreno grande”, caso contrário, exibir a mensagem “Terreno pequeno”.
  double base_retangulo_terreno = 5;
  double altura_retangulo_terreno = 2;
  double area_retangulo_terreno = base_retangulo_terreno * altura_retangulo_terreno;

  if (area_retangulo_terreno > 100){
    print("Terreno Grande!");
  }
  else {
    print("Terreno Pequeno!");
  }
  
}