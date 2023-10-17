class Pessoa
{
  String? nome;
  String? cpf;

  Pessoa({this.nome, this.cpf});
}

class Cliente extends Pessoa
{
  int? id;
  double? saldo;

  Cliente({this.id, this.saldo, super.nome, super.cpf});

  @override
  String toString() {
    return super.nome!;
  }
}

void main()
{
  Cliente cliente = Cliente(id: 1, saldo: 300, nome: "Jose Almeida", cpf: "12345678901");

  print(cliente);
}