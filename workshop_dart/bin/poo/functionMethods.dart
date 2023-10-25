class Methods{

  int Function(int, int) parametroFunc = (int a, int b) {
    return a + b;
  };

  int Function(int)? parametroFunc2;

  Methods(){
    parametroFunc2 = metodoRetornaFuncao();
  }

  metodoDinamico(){

  }

  int metodoPosicional(int a, int b){
    return a + b;
  }

  int metodoPosicionalOpcional([int? a, int b = 0]){
    return a != null? a + b: 0;
  }
  
  int metodoNomeado({int? a, int b = 0, required int c}){
    return a != null? a + b: 0;
  }

  int metodoComParametroFuncao(int a, [int Function(int)? b])
  {
    return a;
  }

  T metodoGenerico<T>(T a){
    return a;
  }

  int Function(int) metodoRetornaFuncao()  => (int a) {
      return a;
    };
}