void main() {
  
  // >>>>>List e Map<<<<<
  // 4. Armazenar o nome e idade de cem pessoas. Após a digitação, exibir os dados (nome e idade) de todas as pessoas.
  // Obs.: utilizando 5 pessoas.
  Pessoa p1 = Pessoa("Helena", "21");
  Pessoa p2 = Pessoa("Julia", "22");
  Pessoa p3 = Pessoa("Amanda", "30");
  Pessoa p4 = Pessoa("Guilherme", "15");
  Pessoa p5 = Pessoa("Daniela", "40");
  
    final pessoas = { p1.idade : p1.nome, 
                   p2.idade : p2.nome,
                   p3.idade : p3.nome,
                   p4.idade : p4.nome,
                   p5.idade : p5.nome};
  
  print("Lista: $pessoas, length: ${pessoas.length}\n\n");
  
  for(String idade in pessoas.keys) {
    final pessoa = pessoas[idade];
    print("Nome: ${pessoa} | Idade: ${idade}");
  }

}
 
class Pessoa {
  String nome;
  String idade;
  
  Pessoa(this.nome, this.idade);
}