void main() {
  
  //>>>>>Orientação a Objeto (Classe, Herança, etc)<<<<<
  
  // 1. Criar um mini sistema bancário com as classes: Conta, Conta Corrente, Conta Poupança e Cliente. Cada classe deve ter atributos específicos. No sistema devemos ter pelo menos 3 funcionalidades: Saque, Depósito e Transferência.
}

class Conta extends Cliente{
  
  int numeroConta;
  double saldo;
  
  Conta(codigo, nome, this.numeroConta, this.saldo):super(codigo, nome);
  
  
  saque(double valor) {
    
    if (valor < saldo){
      this.saldo -= valor;
      return true;
    }
    else {
      return false;
    }
  }
  
  deposito(double valor) {
    
    this.saldo += valor;

  }
  
  transferencia(Conta contaDestino, double valor) {
    bool retirou = saque(valor);
    
    if(retirou == true){
      contaDestino.deposito(valor);
      return true;
    }
    else{
      return false;
    } 
  }  
}  

class ContaCorrente extends Conta {
  
  ContaCorrente(codigo, nome, numeroConta, saldo):super(codigo, nome, numeroConta, saldo);
  
  gerarTaxa() {
    saldo -= 15;
  }
}
  
class ContaPoupanca extends Conta {
  
  ContaPoupanca(codigo, nome, numeroConta, saldo):super(codigo, nome, numeroConta, saldo);
  
  gerarRendimento() {
    saldo += saldo * 0.01;
  }
}

class Cliente {
  int codigo;
  String nome;
  
  Cliente(this.codigo, this.nome);
  
}