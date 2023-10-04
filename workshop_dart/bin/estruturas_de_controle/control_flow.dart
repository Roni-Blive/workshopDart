enum StatusDoEnvioDoPedido{
 confirmado, enviado, entregue  
}

void main() {
  
  // For
  print("Quantos copos de cerveja você toma em uma noite de fim de semana?");
  for (int i = 0; i < 5; i++) {
    print('Talvez, só ${i + 1}... sabe.');
  }
  
  var gilbertoBarros = 
    ["Kasino!", "Aeeeee Kasinão!", "Can't get over, vai DJ!"];
  
  for(var fraseAnimada in gilbertoBarros){
    print(fraseAnimada.toUpperCase());
  }
  
  // While
  
  // Return como false para não ficar em loop infito
  bool existirCriminalidadeEmGotham(){
    return false;
  }
  
  while(existirCriminalidadeEmGotham()){
    print("Batman está vigiando Gotham");
  }
  
  bool delegaciaDeGothamEstaLotada(){
    return true;
  }
  
  // While com break
  while(existirCriminalidadeEmGotham()){
    if(delegaciaDeGothamEstaLotada()) {
      print("Não ligar o BatSinal");
      break;
    }
  }
  
  // Do-While
  do{
    print("Delegacia de Gotham aberta para novos convidados!");

    /* Podemos também chamar um método aqui:
     * enviarNovoConvidadoParaDelegaciaDeGotham(convidado)
     */
    
  }while(existirCriminalidadeEmGotham());
  
  // Switch

  final statusPedido = StatusDoEnvioDoPedido.confirmado;

  switch(statusPedido){
    case StatusDoEnvioDoPedido.confirmado:
      print("Pedido confirmado, aguardando envio.");
      break;
    case StatusDoEnvioDoPedido.enviado:
      print("Pedido enviado, aguardando entrega.");
      break;
    default: 
      print("Pedido entregue.");
      break;
  }

  // forEach
  gilbertoBarros.forEach(print);

}
