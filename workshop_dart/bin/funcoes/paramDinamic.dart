void main (){
  var x = 1;

  x = funcParamDinamic(13, "Hello");

  print(x);
}

funcParamDinamic(a, v){
  a = "Word!!!";

  return "$a $v";
}