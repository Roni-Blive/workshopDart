class NullAssertionOperator{
  String? name;

  void setValueToName(String? value){
    name = value;
  }

  void printNameLength(){
    try {
      print("'$name' has ${name!.length} spaces.");
    } catch(e, stack){
      print("\nThere was a problem when trying to get the amount of spaces "
          "the value $name has, using Null Check Operator.");
      print("Error: $e.");
      print("Stack Trace:\n$stack");
    }
  }
}