void main(){
  int cpf_cliente = 17616641741;
  bool cpf_valido = func_validar_cpf(cpf_cliente);
  func_mostrar_cpf_valido(cpf_valido);

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