import 'dart:convert';

import 'package:http/http.dart';

void main() async{
  
  // print('Life');

  // await delayedPrint(3, 'Is').then((palavra) => {
  //   print(palavra)
  // });

  // print('Good');

  exemploMaisProximoDoReal();

}

Future delayedPrint(int segundos, String mensagem){

  final duration = Duration(seconds: segundos);
  return Future.delayed(duration).then((value) => mensagem);
}

// class Pokemon {
//   late String nome;
// }

Future<void> exemploMaisProximoDoReal() async {
  
  final result = await Client().get(
    Uri.parse('https://pokeapi.co/api/v2/pokemon/pikachu')
  );

  print(result.body);

  // Lógica incompleta

  String jsonResult = result.body;
  final jsonMap = jsonDecode(jsonResult);

  print(json);
  print('\n');
  print(jsonMap);


}