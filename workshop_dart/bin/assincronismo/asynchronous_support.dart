import 'dart:convert';
import 'package:http/http.dart';
import 'pokemon.dart';

void main() async{
  
  // print('Life');

  // await delayedPrint(3, 'Is').then((palavra) => {
  //   print(palavra)
  // });

  // print('Good');

  buscarPokemonInfo();

}

Future delayedPrint(int segundos, String mensagem){

  final duration = Duration(seconds: segundos);
  return Future.delayed(duration).then((value) => mensagem);
}

Future<void> buscarPokemonInfo() async {
  
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

/**
 * TODO:
 * - Analisar implementação de interação via terminal
 * - Future que retorna valor. Pode-se usar o mesmo exemplo do retorno da PokeApi (retornar o result.body)
 * - async* (yield)
 * - Delayed
 * - Strem
 */