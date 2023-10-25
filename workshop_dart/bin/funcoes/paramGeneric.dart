void main() {
  List<int> numeros = [1, 2, 3, 4, 5, 6];
  List<String> nomes = ["Alberto", "Beberto", "Ceberto"];

  int? numero = returnSecondElement(numeros);
  String? nome = returnSecondElement(nomes);

  print(numero);
  print(nome);

}

T? returnSecondElement<T>(List<T> lista)
{
  return lista.length > 1? lista[1] : null;
}