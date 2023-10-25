class Pokemon {
  late String nome;
  late int peso;
  late int idPokedex;

  Pokemon();

  String get getName {
    return nome;
  }

  set setName(String nomePokemon){
    nome = nomePokemon;
  }

  int get getWeigth {
    return peso;
  }

  set setWeight(int pesoPokemon) {
    peso = pesoPokemon;
  }

  int get getPokedexNumber {
    return idPokedex;
  }

  set setPokedexNumber(int numeroPokedex) {
    idPokedex = numeroPokedex;
  }
}
