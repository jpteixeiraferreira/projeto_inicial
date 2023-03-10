void main() {

  Pessoa pessoa0 = Pessoa("João Pedro", 24, true);
  print(pessoa0.toMap());
}
class Pessoa{
  String nome;
  int idade;
  bool estaAutenticada;

  Pessoa(this.nome, this.idade, this.estaAutenticada);

  Map<String,dynamic> toMap(){

  return {
  "nome": this.nome,
  "idade": this.idade,
  "estaAutenticada": this.estaAutenticada
  };

  }
}

class Cadastro_pessoa {
  Documento tipo_documento;
  int numero_documento;
  String nome;
  String data_nascimento;
  String data_cadastro;
  bool ativo;

  Cadastro_pessoa(this.tipo_documento, this.numero_documento, this.nome,
      this.data_nascimento, this.data_cadastro, this.ativo);

  bool func_validar_documento(tipo_documento, numero_documento) {
    bool is_valido = true;
    if (tipo_documento == Documento.cpf) {
      if (numero_documento.toString().length == 11) {
        is_valido = true;
      } else {
        is_valido = false;
      }
    } else if (tipo_documento == Documento.cnpj) {
      if (numero_documento.toString().length == 14) {
        is_valido = true;
      } else {
        is_valido = false;
      }
    }

    return is_valido;
  }
}

class Colaboradores extends Cadastro_pessoa {
  Cargo cargo;
  double salario;

  Colaboradores(
      Documento tipo_documento,
      int numero_documento,
      String nome,
      String data_nascimento,
      String data_cadastro,
      this.cargo,
      this.salario,
      bool ativo)
      : super(tipo_documento, numero_documento, nome, data_nascimento,
            data_cadastro, ativo);
}

enum Cargo {
  gerente,
  suporte,
  programador,
  supervisor,
}
enum Documento {
  cpf,
  cnpj,
}

 Set<String> func_cria_algo(teste_set, String algo ){
 teste_set.add(algo);
 return teste_set;
}

