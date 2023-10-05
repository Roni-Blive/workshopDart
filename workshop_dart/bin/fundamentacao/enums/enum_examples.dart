import 'fruit_enum.dart';
import 'order_status_enhanced_enum.dart';
import 'transportation_enum.dart';

class EnumExamples{

  EnumExamples();

  void getSelectedTransportationMessage(Transportation transp){
    switch(transp) {
      case(Transportation.carr):
        print('O meio de transporte escolhido foi o carro!');
        break;
      case(Transportation.airplane):
        print('O meio de transporte escolhido foi o avião!');
        break;
      case(Transportation.boat):
        print('O meio de transporte escolhido foi o barco!');
        break;
      case(Transportation.bike):
        print('O meio de transporte escolhido foi a moto!');
        break;
      case(Transportation.bus):
        print('O meio de transporte escolhido foi o ônibus!');
        break;
      case(Transportation.submarine):
        print('O meio de transporte escolhido foi o submarino sem joystick!');
        break;
      default:
        print('Não foi escolhido algum meio de transporte, a locomoção será a pé.');
        break;
    }
  }

  void getSelectedFruitMessage(Fruits fruit){
    switch(fruit) {
      case(Fruits.apple):
        print('A fruta escolhida foi a maçã!');
        break;
      case(Fruits.grape):
        print('A fruta escolhida foi a uva!');
        break;
      case(Fruits.banana):
        print('A fruta escolhida foi a banana!');
        break;
      case(Fruits.orange):
        print('A fruta escolhida foi a laranja!');
        break;
      case(Fruits.pear):
        print('A fruta escolhida foi a pera!');
        break;
      case(Fruits.strawberry):
        print('A fruta escolhida foi o morango!');
        break;
      case(Fruits.pineapple):
        print('A fruta escolhida foi o abacaxi!');
        break;
      case(Fruits.watermelon):
        print('A fruta escolhida foi a melancia!');
        break;
      default:
        print('Nenhuma fruta escolhida, seguiremos com a salada mista!');
        break;
    }
  }

  ///Comparison between two enhanced enum instances, where the operators
  ///'<' and'>' are override.
  ///
  void printOrderStatusComparison(OrderStatus status){
    if (status < OrderStatus.completed) {
      print('The ${status.nome} has not been completed yet.');
    }
    else{
      if(status > OrderStatus.completed){
        print('The ${status.nome} was cancelled.');
      }
      else{
        print('The ${status.nome} has been completed.');
      }
    }
  }
}