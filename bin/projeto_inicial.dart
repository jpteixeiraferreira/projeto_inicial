void main() {
  Heroi heroi0 = Heroi('JP', 1, 100, 'Humano', 5, true, 'Selvagens');
  Chefe chefe0 = Chefe('Julia', 10, 500, 'Orc', 10, true, 'Fogo');
  heroi0.executar_tarefa0();
  heroi0.executar_tarefa1();
  heroi0.atacar(heroi0.nome, heroi0.dano_ataque, atacado: chefe0.nome);
}
 /* Cliente cliente0 = Cliente(
      17616641741, "João Pedro Teixeira Ferreira", "09/03/2023", true, 0.00);
  print(cliente0.saldo);
}

class Cliente {
  int cpf;
  String nome;
  final data_cadastro;
  bool ativo;
  double saldo;

  Cliente(this.cpf, this.nome, this.data_cadastro, this.ativo, this.saldo);
}

double func_acrescenta_juros(int dias, double saldo,
    {String nome_cliente = 'não identificado', double juros = 0.05}) {
  saldo = saldo + (saldo * (juros / 30)) * dias;
  print(
      'O saldo do cliente $nome_cliente após $dias dias é de R\$ ${saldo
          .toStringAsFixed(2)}');
  print('O saldo do cliente $nome_cliente após $dias dias é de R\$ $saldo');

  return saldo;
}

bool func_validar_cpf(int cpf) {
  if (cpf
      .toString()
      .length == 11) {
    return true;
  } else {
    return false;
  }
}

void func_mostrar_cpf_valido(cpf_valido) {
  if (cpf_valido == false) {
    print('Este cpf é inválido');
  } else if (cpf_valido == true) {
    print('Este cpf é válido');
  }
}
*/
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
