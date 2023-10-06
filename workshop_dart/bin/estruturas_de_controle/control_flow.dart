void main() {
  
  validarQuantidadeDeBebidaNoFimDeSemana();
  kasinoNoSabadaco();
  cidadeDeGotham();
  acompanharPedido();
  listarMelhoresCarros();
  acompanharStatusDeVida();
  sobreEstados();

}

void validarQuantidadeDeBebidaNoFimDeSemana(){
  print("Quantos copos de cerveja você toma em uma noite de fim de semana?");

  for (int i = 0; i < 5; i++) {
    print('Talvez, só ${i + 1}... sabe.');
  }
}

void kasinoNoSabadaco(){
  
  var gilbertoBarros = 
    ["Kasino!", "Aeeeee Kasinão!", "Can't get over, vai DJ!", "Kasino aeee!", "O som da noite!"];
  
  for(var fraseAnimada in gilbertoBarros){
    print(fraseAnimada.toUpperCase());
  }

  /**
   * Resultado do for in:
   * 
   * KASINO!
   * AEEEEE KASINÃO!
   * CAN'T GET OVER, VAI DJ!
   * KASINO AEEE!
   * O SOM DA NOITE!
   */

  /**
   * Propriedade e métodos oportunos.
   * Existem muitos outros, vale a pena olhar a documentação.
   */
  gilbertoBarros.forEach(print);
  print(gilbertoBarros.length); // 5
  print(gilbertoBarros.last); // 'O som da noite!'
  print(gilbertoBarros.indexOf("Can't get over, vai DJ!")); // 2
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
  
  List<String> encomenda = ["Cafeteira Italiana", "Livro de receitas de café"];
  encomenda.add("Moedor de café");
  print(encomenda);

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

void listarMelhoresCarros(){

  var carros = <String>[]; // Cria uma lista vazia

  carros.add('Fiat Marea');
  carros.add('Celta');
  carros.add('Fiat Multipla');
  carros.add('Peel Trident');
  carros.add('Miles Eixoderroda');

  print('Index do Celta: ${carros.indexOf('Celta')}');
  print('Tamanho da lista: ${carros.length}');
  print('Se a lista está vazia: ${carros.isEmpty}');
  print('\n');
  carros.forEach(print);
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

  var carros = <String>[]; // Cria uma lista vazia

  carros.add('Fiat Marea');
  carros.add('Celta');
  carros.add('Fiat Multipla');
  carros.add('Peel Trident');
  carros.add('Miles Eixoderroda');

  Set<String> copiaEmSet = Set.from(carros);

  var filmesAssistidos = 
    {'La La Land', 
    'John Wick 4', 
    'Barbie'};
  
  try{
    filmesAssistidos.add('John Wick 4');
  }on Exception catch (e){
    print('Erro: $e');
  }

  print('Set após tentativa de inserir valores duplicados: $filmesAssistidos');
  print('Set com valores vindo de um List $copiaEmSet');

  /**
   * Set - Ponto de atenção:
   * 
   * Se for criar um set vazio, é preferível sua declaração explicita. Do contrário, será criado um Map.
   * 
   * No primeiro exemplo, temos um Map vazio.
   * Se segundo, temos um Set vazio.
   */
  var mesesDoAnoEmQueFrequenteiAcademia = {};

  /**
   * Set - Métodos oportunos
   * Existem muitos outros, vale a pena olhar a documentação.
   */

  Set<String> inimigosDaMinhaCarteira = {'Boletos', 'Jogo do bicho', 'Livros'};

  Set<String> livrosLidosEsteAno = {};

  livrosLidosEsteAno.add('O Retrato de Dorian Gray');
  livrosLidosEsteAno.add('O Pequeno Princípe');
  livrosLidosEsteAno.add('Fogo & Sangue');

  livrosLidosEsteAno.forEach(print);

  String listaEmString = livrosLidosEsteAno.toString();

  print(livrosLidosEsteAno.toString());
  print(listaEmString);
  print(mesesDoAnoEmQueFrequenteiAcademia); // lista vazia
  print(inimigosDaMinhaCarteira);
  print(filmesAssistidos);
}

void sobreEstados(){

  var estadoRJ = {
    'nome': 'Rio de Janeiro',
    'dataFundacao': 1565,
    'temperaturaMediaAnual': 23.6
  };

  var estadoSP = new Map<String, String>();
  estadoSP['nome'] = 'São Paulo';
  estadoSP['dataFundacao'] = '1553';
  estadoSP['temperaturaMediaAnual'] = '19.5';

  var estadoRN = <String, String>{};
  estadoRN['nome'] = 'Rio Grande do Norte';
  estadoRN['dataFundacao'] = '1598';
  estadoRN['temperaturaMediaAnual'] = '29.1';

  var estadoBA = <String, Object>{};
  estadoBA['nome'] = 'Bahia';
  estadoBA['dataFundacao'] = 1549;
  estadoBA['temperaturaMediaAnual'] = 31.0;

  final praias = <String, bool>{'seTemPraias': true};

  estadoRJ.addEntries(praias.entries);
  estadoBA.addEntries(praias.entries);

  estadoRJ.addAll({'capital': 'Rio de Janeiro'});
  estadoBA.addAll({'capital': 'Salvador'});

  // estadoSP.updateAll((key, value) => '');

  estadoRJ.update('dataFundacao', (value) => '01-03-1565');

  print(estadoRJ);
  print(estadoBA);


}