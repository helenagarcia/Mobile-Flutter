void main() {
  
  // >>>>>Básico<<<<<
  // 5. Entrar via teclado com o valor de cinco produtos. Após as entradas, digitar um valor referente ao pagamento da somatória destes valores. Calcular e exibir o troco que deverá ser devolvido.
  double valor_produto1 = 10;
  double valor_produto2 = 50;
  double valor_produto3 = 2;
  double valor_produto4 = 30;
  double valor_produto5 = 200;
  double valor_total = valor_produto1 + valor_produto2 + valor_produto3 + valor_produto4 + valor_produto5;
  double valor_pagamento = 300;
  
  if (valor_total > valor_pagamento){
    print("O valor é insuficiente!");
  }
  
  else {
    double valor_troco = valor_pagamento - valor_total;
    print("O troco é de R\$$valor_troco");
  } 

}