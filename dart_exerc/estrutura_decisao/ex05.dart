void main() {
  
  // >>>>>Estrutura de Decisão<<<<<
  // 5. A partir dos valores da aceleração (a em m/s2), da velocidade inicial (v0 em m/s) e do tempo de percurso (t em s). Calcular e exibir a velocidade final de automóvel em km/h. 
  double aceleracao = 2;
  double velocidade_inicial = 5;
  double tempo_percurso = 20;
  double velocidade_ms = velocidade_inicial + aceleracao * tempo_percurso;
  double velocidade_kmh = velocidade_ms * 3.6;

  if (velocidade_kmh <= 40){
    print("Veículo muito lento!");
  }
  if (velocidade_kmh > 40 && velocidade_kmh <= 60){
    print("Velocidade permitida!");
  }
  if (velocidade_kmh > 60 && velocidade_kmh <= 80){
    print("Velocidade de cruzeiro!");
  }
  if (velocidade_kmh > 80 && velocidade_kmh <= 120){
    print("Veículo muito lento!");
  } 
  if (velocidade_kmh > 120){
    print("Veículo muito rápido!");
  }
}