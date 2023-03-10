void main(){

}
class Personagem {
  String nome;
  int nivel;
  int pontos_de_vida;
  String raca;
  int dano_ataque;
  bool esta_vivo;

  Personagem(this.nome, this.nivel, this.pontos_de_vida, this.raca,
      this.dano_ataque,
      this.esta_vivo);

  void atacar(nome, dano_ataque, {required atacado}){
    print(
        "O personagem: $nome atacou: $atacado causando $dano_ataque pontos de dano!");
  }

  void quanto_de_vida(nome, pontos_de_vida) {
    print("O personagem $nome possui $pontos_de_vida pontos de vida!");
  }
}
class Chefe extends Personagem {
  String elemento;

  Chefe(String nome, int nivel, int pontos_de_vida, String raca,
      int dano_ataque, bool esta_vivo, this.elemento) :
        super(nome, nivel, pontos_de_vida, raca, dano_ataque, esta_vivo);
}
class Heroi extends Personagem implements Teste {
  String cla;

  Heroi(String nome, int nivel, int pontos_de_vida, String raca,
      int dano_ataque, bool esta_vivo, this.cla):
        super(nome, nivel, pontos_de_vida, raca, dano_ataque, esta_vivo);

  @override
  void executar_tarefa0() {
    print("Tarefa 0 executada");
  }
  @override
  void executar_tarefa1() {
    print("Tarefa 1 executada");
  }
}
abstract class Teste {
  void executar_tarefa0();
  void executar_tarefa1();
}

void exibe_arma(Arma arma_escolhida){
  switch (arma_escolhida){
    case Arma.espada_curta:
      print("A arma escolhida foi a espada curta!");
      break;
    case Arma.espada_longa:
      print("A arma escolhida foi a espada longa!");
      break;
    case Arma.machado:
      print("A arma escolhida foi o machado!");
      break;
    case Arma.pistola:
      print("A arma escolhida foi a pistola!");
      break;
  }
}
enum Arma {
  espada_curta,
  espada_longa,
  machado,
  pistola,
}
