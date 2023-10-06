import '../fundamentacao/enums/fruit_enum.dart';

class NonNullableList{
  List<Fruits> fruitBasket = [Fruits.apple, Fruits.banana, Fruits.strawberry, Fruits.grape];

  void printBasketInOneLine(){
    print(fruitBasket);
  }

  void printBasketOneElementPerLine(){
    for(int i = 0; i < fruitBasket.length; i++){
      print(fruitBasket[i]);
    }
  }
}