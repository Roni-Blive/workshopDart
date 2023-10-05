class InterpolationExamples{
  InterpolationExamples();

  void printVariables(){
    int numberOne = 10;
    double numberTwo = 41.78;

    String text1 = "The first number is: '$numberOne' and the second is: '$numberTwo'";
    print(text1);
    String text2 = "The first number is: '${numberOne}' and the second is: '${numberTwo}'";
    print(text2);
  }

  void printInternalProperties(){
    ExampleClass eClass = ExampleClass();
    String text1 = "${eClass.prop1} and ${eClass.prop2}";
    print(text1);
    String text2 = "${ExampleClass.prop3}!";
    print(text2);
  }

  void printInternalMethod(){
    ExampleClass eClass = ExampleClass();
    String text1 = "${eClass.textMethod()}!";
    print(text1);
  }
}

class ExampleClass{
  String prop1 = "Internal 1 of $ExampleClass";
  String prop2 = "Internal 2 of $ExampleClass";
  static String prop3 = "Internal 3 and static of $ExampleClass";

  String textMethod(){
    return "Method of $ExampleClass";
  }
}