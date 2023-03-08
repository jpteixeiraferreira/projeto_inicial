void main(){
  int cpf_cliente = 17616641741;
  bool cpf_valido = func_validar_cpf(cpf_cliente);
  double saldo = 100.00;
  func_mostrar_cpf_valido(cpf_valido);
  func_acrescenta_juros(701, saldo, nome_cliente: 'João Pedro', juros: 10);
}

double func_acrescenta_juros(int dias, double saldo , {String nome_cliente = 'não identificado', double juros = 0.05}){
  saldo = saldo + (saldo * (juros/30)) * dias;
  print('O saldo do cliente $nome_cliente após $dias dias é de R\$ ${saldo.toStringAsFixed(2)}');
  print('O saldo do cliente $nome_cliente após $dias dias é de R\$ $saldo');

  return saldo;
}
bool func_validar_cpf(int cpf){
  if(cpf.toString().length == 11){
    return true;
  }
  else{
    return false;
  }
}
void func_mostrar_cpf_valido(cpf_valido) {
  if (cpf_valido == false) {
    print('Este cpf é inválido');
  } else if(cpf_valido == true){
    print('Este cpf é válido');
  }
}