import 'dart:convert';
import 'package:http/http.dart';
import 'pokemon.dart';

void main() async{
  
  buscarPokemonInfo().then((value) => print(value.isEmpty)); // false
}

Future<String> buscarPokemonInfo() async {

  String pokemon = 'bulbasaur';

  final result = await Client().get(
    Uri.parse('https://pokeapi.co/api/v2/pokemon/$pokemon')
  );

  String body = result.body;
  return body;
}

Future delayedPrint(int segundos, String mensagem){

  final duration = Duration(seconds: segundos);
  return Future.delayed(duration).then((value) => mensagem);
}

Future<void> getPokemonInfo() async {

  String pokemon = 'charmander';

  await Client().get(
    Uri.parse('https://pokeapi.co/api/v2/pokemon/$pokemon')
  );

}

void exibirPokemonInfo() async {
  
  String pokemon = 'pichu';

  final result = await Client().get(
    Uri.parse('https://pokeapi.co/api/v2/pokemon/$pokemon')
  );

  String body = result.body;
  final parsedJson = jsonDecode(body);

  String nome = parsedJson['name'];
  int peso = parsedJson['weight'];
  int pokedex = parsedJson['id'];

  Pokemon pokemonInfo = Pokemon();
  pokemonInfo.setName = nome;
  pokemonInfo.setWeight = peso;
  pokemonInfo.setPokedexNumber = pokedex;
  
  print('Nome: ${pokemonInfo.nome} | Peso: ${pokemonInfo.peso}Kg | Id Pokedex: ${pokemonInfo.idPokedex}');
}


// Future que retorna valor. Pode-se usar o mesmo exemplo do retorno da PokeApi (retornar o result.body)

/// sync* informa ao Dart que a função vai produzir valores múltiplos QUANDO for solicitado.
/// O uso do yield é oportuno para retornarmos um valor de cada vez. 
/// O retorno do yield não encerra a função. É esperado que um novo valor seja solicitado pelo requerinte.
/// Existe uma "espera" pela próxima solicitação para o próximo yield ser retornado.
/// Os valores são obtidos através de forma assincrona.
Iterable<int> getRange(int start, int finish) sync* {

  for(int i = start; i <= finish; i++) {
    yield i;
  }
}

void exibirNumerosPares() {

  final numbers = getRange(1, 10)
    .where((value) => value % 2 == 0);

  numbers.forEach(print);
}

Iterable<int> getRangeWhitoutLoop(int start, int finish) sync* {

  if(start <= finish){
    yield start;
    yield* getRangeWhitoutLoop(start + 2, finish);
  }
}

void exibir() {

  var numbers = getRangeWhitoutLoop(2, 10);

  numbers.forEach(print);
}

/// Stream é uma sequência de valores chegando em "transmissão", de forma assincrona.
/// O uso do async* é específico apenas para Stream
void exibirNumerosImpares() {

  Stream<int> numbers = buscarValores();

  Stream<int> impares = numbers.where((value) => value % 2 != 0);

  impares.forEach(print);
}

Stream<int> buscarValores() async* {

  print("Iniciado.");

  for(int i = 1; i <= 10; i++) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }

  print("Finalizado.");
}

/// Dependende de como está sendo chamado os valores daquele método sync*

Iterable<int> buscarNumeros() sync* {

  print("Iniciado.");

  for(int i = 1; i <= 10; i++) {
   yield i;
  }

  print("Finalizado.");

}

void exibirValores() {

  Iterable<int> numbers = buscarNumeros();

  print(numbers);
}




Stream<int> contagemRegressiva(int n) async* {
  if (n > 0) {  
    await Future.delayed(Duration(seconds: 1));
    yield n; 
    yield* contagemRegressiva(n - 1); 
  }
}

void inicializarContagemRegressiva() {
  print("Iniciado");
  contagemRegressiva(5).forEach(print);
  print("Finalizado");
}



class MyStrings extends Iterable<String> {
  
  MyStrings(this.stringList);

  final List<String> stringList;

  @override
  Iterator<String> get iterator => stringList.iterator;
}