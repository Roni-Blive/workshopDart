void main() {
  
  //bebidaNoFimDeSemana();
  kasinoNoSabadaco();
  // cidadeDeGotham();
  // acompanharPedido();
  // acompanharStatusDeVida();
  // sobreCidades();

}

void bebidaNoFimDeSemana(){
  print("Quantos copos de cerveja você toma em uma noite de fim de semana?");

  for (int i = 0; i < 5; i++) {
    print('Talvez, só ${i + 1}... sabe.');
  }
}

void kasinoNoSabadaco(){
  
  var gilbertoBarros = 
    ["Kasino!", "Aeeeee Kasinão!", "Can't get over, vai DJ!", 'Kasino aeee!', 'O som da noite!'];
  
  for(var fraseAnimada in gilbertoBarros){
    print(fraseAnimada.toUpperCase());
  }

  /**
   * Propriedade e métodos oportunos.
   * Existem muitos outros, vale a pena olhar a documentação.
   */
  gilbertoBarros.forEach(print);
  print(gilbertoBarros.length);
  print(gilbertoBarros.last);
  print(gilbertoBarros.indexOf("Can't get over, vai DJ!"));
}

void cidadeDeGotham(){

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
}

enum StatusDoEnvioDoPedido{
 confirmado, enviado, entregue  
}

void acompanharPedido(){
  
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
}

void acompanharStatusDeVida(){

   /**
   * Set
   * 
   * Set é uma collection de item únicos ou seja, seus valores não podem se repetirem.
   * 
   * No primeiro exemplo, o Set não está declarado mas Dart infere que o tipo da collection é um Set de String.
   * Se segundo exemplo, há a declaração explicíta de um Set de String.
   */
  const filmesAssistidos = {'La La Land', 'John Wick 4', 'Barbie'};

  Set<String> inimigosDaMinhaCarteira = {'Boletos', 'Jogo do bicho', 'Livros'};

  /**
   * Set - Ponto de atenção:
   * 
   * Se for criar um set vazio, é preferível sua declaração explicita. Do contrário, será criado um Map.
   * 
   * No primeiro exemplo, temos um Map vazio.
   * Se segundo, temos um Set vazio.
   */
  const mesesDoAnoEmQueFrequenteiAcademia = {};
  Set<String> livrosLidosEsteAno = {};

  /**
   * Set - Métodos oportunos
   * Existem muitos outros, vale a pena olhar a documentação.
   */
  livrosLidosEsteAno.add('O Retrato de Dorian Gray');
  livrosLidosEsteAno.add('O Pequeno Princípe');
  livrosLidosEsteAno.add('Fogo & Sangue');

  livrosLidosEsteAno.forEach(print);

  String listaEmString = livrosLidosEsteAno.toString();

  List<String> lista = livrosLidosEsteAno.toList();

  // Imprimindo valores
  print(lista);
  print(listaEmString);
  print(mesesDoAnoEmQueFrequenteiAcademia); // lista vazia
  print(inimigosDaMinhaCarteira);
  print(filmesAssistidos);
}

void sobreCidades(){
  /**
   * Map
   * 
   * O Map é um objeto que possui chave e valor. Chaves e valores podem ser de quaisquer tipos.
   * 
   * No primeiro exemplo, o Map não está declarado mas Dart infere que é um.
   * Se segundo, há a declaração explicíta de um Set de String.
   * No terceiro, mais uma das formas de se implementação implicita.
   */
  const cidadeRJ = {
    'nome': 'Rio de Janeiro',
    'dataFundacao': 1565,
    'temperaturaMediaAnual': 23.6
  };

  var cidadeSP = Map<String, String>();

  cidadeSP['nome'] = 'São Paulo';
  cidadeSP['dataFundacao'] = '1553';
  cidadeSP['temperaturaMediaAnual'] = '19.5';

  var cidadeRN = <String, String>{};

  cidadeRN['nome'] = 'Rio Grande do Norte';
  cidadeRN['dataFundacao'] = '1598';
  cidadeRN['temperaturaMediaAnual'] = '29,1';

  print(cidadeRJ);
  print(cidadeSP);
  print(cidadeRN);
}