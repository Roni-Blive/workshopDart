class DynamicVarExamples{
  double number = 7.15;
  var varAttribute = 10;
  dynamic dynamicAttribute = 1;

  void tryChangeVarAttributeToDouble(){
    try{
      print('The type of ${varAttribute.toString()} is: ${varAttribute.runtimeType}\n');
      _attributeValueToVarNumber(null);

      print('\nThe type of ${varAttribute.toString()} is: ${varAttribute.runtimeType}\n');
      var number3 = 7.715;
      _attributeValueToVarNumber(number3);

      print('The type of ${varAttribute.toString()} is: ${varAttribute.runtimeType}\n');
      _attributeValueToVarNumber(-10.4);
    } catch(e, stack){
      print('Error is: $e');
      print('StackTrace is:\n$stack');
    }
  }

  void _attributeValueToVarNumber(var newValue){
    varAttribute = newValue;
  }

  void tryChangeDynamicNumber() {
    try {
      print("\nThe type of '${dynamicAttribute.toString()}' is: ${dynamicAttribute.runtimeType}\n");
      var number3 = 7.715;
      _attributeValueToDynamicAttribute(number3);

      print("The type of '${dynamicAttribute.toString()}' is: ${dynamicAttribute.runtimeType}\n");
      double number2 = 5.5;
      _attributeValueToDynamicAttribute(number2);

      print("The type of '${dynamicAttribute.toString()}' is: ${dynamicAttribute.runtimeType}\n");
      _attributeValueToDynamicAttribute(-10.4);

      print("The type of '${dynamicAttribute.toString()}' is: ${dynamicAttribute.runtimeType}\n");
      _attributeValueToDynamicAttribute("Now a String value");

      print("The type of '${dynamicAttribute.toString()}' is: ${dynamicAttribute.runtimeType}\n");
      _attributeValueToDynamicAttribute(NewClass);

      print("The type of '${dynamicAttribute.toString()}' is: ${dynamicAttribute.runtimeType}\n");
      _attributeValueToDynamicAttribute(null);

      print("The type of '${dynamicAttribute.toString()}' is: ${dynamicAttribute.runtimeType}\n");
    } catch (e, stack) {
      print('Error is: $e');
      print('StackTrace is:\n$stack');
    }
  }

  void _attributeValueToDynamicAttribute(dynamic newValue){
    dynamicAttribute = newValue;
  }
}

class NewClass{}