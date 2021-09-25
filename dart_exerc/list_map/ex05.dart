void main() {
  
  // >>>>>List e Map<<<<<
  // 5.  Armazenar o nome, sexo e idade de cem pessoas. As entradas devem ser apenas “F” ou “M” para o sexo e valores positivos para a idade. Após a digitação dos dados, exibir os dados (nome, sexo e idade) de todas as pessoas do sexo feminino.
  // Obs.: utilizando 5 pessoas.
  Pessoa p1 = Pessoa("Helena", "21", "F");
  Pessoa p2 = Pessoa("Julia", "22", "F");
  Pessoa p3 = Pessoa("Amanda", "30", "F");
  Pessoa p4 = Pessoa("Guilherme", "15", "M");
  Pessoa p5 = Pessoa("Daniela", "40", "F");
  
    final pessoas = [p1, p2, p3, p4, p5];
  
  print("Lista: $pessoas, length: ${pessoas.length}\n\n");
  
  for(Pessoa p in pessoas) {
    if(p.sexo == "F"){
      print("Nome: ${p.nome} | Idade: ${p.idade} | Sexo: ${p.sexo}");
    }
  }
}
 
class Pessoa {
  String nome;
  String idade;
  String sexo;
  
  Pessoa(this.nome, this.idade, this.sexo);
}